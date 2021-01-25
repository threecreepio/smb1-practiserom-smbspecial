SettablesCount = $4

MenuReset:
    jsr DrawMenu
    rts

DrawMenu:
    ldy #(SettablesCount-1)
    sty $10
@KeepDrawing:
    jsr DrawSelectedValueJE
    ldy $10
    dey
    sty $10
    bpl @KeepDrawing
    rts

MenuNMI:
    jsr DrawSelectionMarkers
    lda PressedButtons
    clc
    cmp #0
    bne @READINPUT
    rts
@READINPUT:
    and #%00001111
    beq @SELECT
    ldy MenuSelectedItem
    jsr UpdateSelectedValueJE
    jmp RenderMenu
@SELECT:
    lda PressedButtons
    cmp #%00100000
    bne @START
    ldx #0
    stx MenuSelectedSubitem
    inc MenuSelectedItem
    lda MenuSelectedItem
    cmp #SettablesCount
    bne @SELECT2
    stx MenuSelectedItem
@SELECT2:
    jmp RenderMenu
@START:
    cmp #%00010000
    bne @DONE
    ldx HeldButtons
    cpx #%10000000
    lda #0
    bcc @START2
    lda #1
@START2:
    sta PrimaryHardMode
    jmp TStartGame
@DONE:
    rts
RenderMenu:
    ldy MenuSelectedItem
    jsr DrawMenu
    rts

DrawSelectionMarkers:
    ; set y position
    lda #$1E
    ldy MenuSelectedItem
@Increment:
    clc
    adc #$10
    dey
    bpl @Increment
    sta Sprite_Y_Position + (1 * SpriteLen)
    sta Sprite_Y_Position + (2 * SpriteLen)
    ; set x position
    lda #$A9
    sta Sprite_X_Position + (1 * SpriteLen)
    sbc #$8
    ldy MenuSelectedSubitem
@Decrement:
    clc
    sbc #$7
    dey
    bpl @Decrement
    sta Sprite_X_Position + (2 * SpriteLen)
    lda #$00
    sta Sprite_Attributes + (1 * SpriteLen)
    lda #$21
    sta Sprite_Attributes + (2 * SpriteLen)

    lda #$2E ; main selection sprite
    sta Sprite_Tilenumber + (1 * SpriteLen)
    lda #$27 ; sub selection sprite
    sta Sprite_Tilenumber + (2 * SpriteLen)
    rts

UpdateSelectedValueJE:
    tya
    jsr JumpEngine
    .word UpdateValueWorldNumber ; world
    .word UpdateValueLevelNumber ; level
    .word UpdateValuePUps        ; p-up
    .word UpdateValueFramerule   ; framerule

DrawSelectedValueJE:
    tya
    jsr JumpEngine
    .word DrawValueNormal    ; world
    .word DrawValueNormal    ; level
    .word DrawValueNormal    ; p-up
    .word DrawValueFramerule ; framerule

UpdateValueWorldNumber:
    ldx #$FF
    lda HeldButtons
    and #%10000000
    bne @Skip
    jsr BANK_LoadWorldCount
    ldx WorldNumber
    @Skip:
    stx $0
    ldy #0
    sty Settables+1 ; clear level counter
    jmp UpdateValueShared

UpdateValueLevelNumber:
    ldx #$FF
    lda HeldButtons
    and #%10000000
    bne @Skip
    ldx #4
    @Skip:
    stx $0
    ldy #1
    jmp UpdateValueShared

UpdateValuePUps:
    lda #6
    sta $0
    jmp UpdateValueShared

UpdateValueShared:
    clc
    lda PressedButtons
    and #%000110
    bne @Decrement
@Increment:
    lda Settables, y
    adc #1
    cmp $0
    bcc @Store
    lda #0
    bvc @Store
@Decrement:
    lda Settables, y
    beq @Wrap
    sbc #0
    bvc @Store
@Wrap:
    lda $0
    sbc #0
@Store:
    sta Settables, y
    rts

DrawValueNormal:
    clc
    lda VRAM_Buffer1_Offset
    tax
    adc #4
    sta VRAM_Buffer1_Offset
    lda SettableRenderLocationsHi, y
    sta VRAM_Buffer1+0, x
    lda SettableRenderLocationsLo, y
    sta VRAM_Buffer1+1, x
    lda #1
    sta VRAM_Buffer1+2, x
    lda Settables, y
    adc #1
    sta VRAM_Buffer1+3, x
    lda #0
    sta VRAM_Buffer1+4, x
    rts

UpdateValueFramerule:
    clc
    ldx MenuSelectedSubitem
    lda PressedButtons
    and #%00000011
    beq @update_value

    lda PressedButtons
    cmp #%00000001 ; right
    bne @check_left
    dex
@check_left:
    cmp #%00000010 ; left
    bne @store_selected
    inx
@store_selected:
    txa
    bpl @not_under
    lda #3
@not_under:
    cmp #4
    bcc @not_over
    lda #0
@not_over:
    sta MenuSelectedSubitem
    rts
@update_value:
    lda MathFrameruleDigitStart, x
    tay
    lda PressedButtons
    cmp #%00001000
    beq @increase
    dey
    bpl @store_value
    ldy #8
@increase:
    iny
    cpy #$A
    bne @store_value
    ldy #0
@store_value:
    tya
    sta MathFrameruleDigitStart, x
    rts

DrawValueFramerule:
    clc
    lda VRAM_Buffer1_Offset
    tax
    adc #7
    sta VRAM_Buffer1_Offset
    lda SettableRenderLocationsHi, y
    sta VRAM_Buffer1+0, x
    lda SettableRenderLocationsLo, y
    sta VRAM_Buffer1+1, x
    lda #4
    sta VRAM_Buffer1+2, x
    lda MathFrameruleDigitStart+0
    sta VRAM_Buffer1+3+3, x
    lda MathFrameruleDigitStart+1
    sta VRAM_Buffer1+3+2, x
    lda MathFrameruleDigitStart+2
    sta VRAM_Buffer1+3+1, x
    lda MathFrameruleDigitStart+3
    sta VRAM_Buffer1+3+0, x
    lda #0
    sta VRAM_Buffer1+3+4, x
    rts

.define SettableRenderLocations $20D3, $2113, $2153, $2190
SettableRenderLocationsLo: .lobytes SettableRenderLocations
SettableRenderLocationsHi: .hibytes SettableRenderLocations
