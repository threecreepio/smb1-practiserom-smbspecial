; da65 V2.16 - Ubuntu 2.16-2
; Created:    2021-01-25 12:40:52
; Input file: rom.nes
; Page:       1


        .setcpu "6502"
.segment "SMBPRG"

.export GL_ENTER
.export NonMaskableInterrupt
.export GetAreaDataAddrs
.export LoadAreaPointer
.export FindAreaPointer
.export PlayerEndWorld

.import BANK_LoadAreaData
.import BANK_PractisePrintScore
.import BANK_PractiseEnterStage
.import BANK_PractiseWriteTopStatusLine
.import BANK_PractiseWriteBottomStatusLine
.import BANK_PractiseNMI
.import BANK_PractiseReset

; ----------------------------------------------------------------------------
L0006           := $0006
ObjectOffset    := $0008
FrameCounter    := $0009
A_B_Buttons     := $000A
Up_Down_Buttons := $000B
Left_Right_Buttons:= $000C
PreviousA_B_Buttons:= $000D
GameEngineSubroutine:= $000E
Enemy_Flag      := $000F
Enemy_ID        := $0016
Player_State    := $001D
Enemy_State     := $001E
Fireball_State  := $0024
Block_State     := $0026
Misc_State      := $002A
PlayerFacingDir := $0033
DestinationPageLoc:= $0034
VictoryWalkControl:= $0035
PowerUpType     := $0039
FireballBouncingFlag:= $003A
HammerBroJumpTimer:= $003C
Player_MovingDir:= $0045
Enemy_MovingDir := $0046
SprObject_X_Speed:= $0057
Enemy_X_Speed   := $0058
Fireball_X_Speed:= $005E
Block_X_Speed   := $0060
Misc_X_Speed    := $0064
SprObject_PageLoc:= $006D
Enemy_PageLoc   := $006E
Fireball_PageLoc:= $0074
Block_PageLoc   := $0076
Misc_PageLoc    := $007A
Bubble_PageLoc  := $0083
SprObject_X_Position:= $0086
Enemy_X_Position:= $0087
Fireball_X_Position:= $008D
Block_X_Position:= $008F
Misc_X_Position := $0093
Bubble_X_Position:= $009C
SprObject_Y_Speed:= $009F
Enemy_Y_Speed   := $00A0
Fireball_Y_Speed:= $00A6
Block_Y_Speed   := $00A8
Misc_Y_Speed    := $00AC
SprObject_Y_HighPos:= $00B5
Enemy_Y_HighPos := $00B6
Fireball_Y_HighPos:= $00BC
Block_Y_HighPos := $00BE
Misc_Y_HighPos  := $00C2
Bubble_Y_HighPos:= $00CB
SprObject_Y_Position:= $00CE
Enemy_Y_Position:= $00CF
Fireball_Y_Position:= $00D5
Block_Y_Position:= $00D7
Misc_Y_Position := $00DB
Bubble_Y_Position:= $00E4
AreaDataLow     := $00E7
AreaDataHigh    := $00E8
EnemyDataLow    := $00E9
EnemyDataHigh   := $00EA
NoteLenLookupTblOfs:= $00F0
Square1SoundBuffer:= $00F1
Square2SoundBuffer:= $00F2
NoiseSoundBuffer:= $00F3
AreaMusicBuffer := $00F4
MusicDataLow    := $00F5
MusicDataHigh   := $00F6
MusicOffset_Square2:= $00F7
MusicOffset_Square1:= $00F8
MusicOffset_Triangle:= $00F9
PauseSoundQueue := $00FA
AreaMusicQueue  := $00FB
EventMusicQueue := $00FC
NoiseSoundQueue := $00FD
Square2SoundQueue:= $00FE
Square1SoundQueue:= $00FF
VerticalFlipFlag:= $0109
FlagpoleFNum_Y_Pos:= $010D
FlagpoleFNum_YMFDummy:= $010E
FlagpoleScore   := $010F
FloateyNum_Control:= $0110
FloateyNum_X_Pos:= $0117
FloateyNum_Y_Pos:= $011E
ShellChainCounter:= $0125
FloateyNum_Timer:= $012C
DigitModifier   := $0134
Sprite_Y_Position:= $0200
Sprite_Tilenumber:= $0201
Sprite_Attributes:= $0202
Sprite_X_Position:= $0203
VRAM_Buffer1_Offset:= $0300
VRAM_Buffer1    := $0301
VRAM_Buffer2_Offset:= $0340
VRAM_Buffer2    := $0341
BowserBodyControls:= $0363
BowserFeetCounter:= $0364
BowserMovementSpeed:= $0365
BowserOrigXPos  := $0366
BowserFlameTimerCtrl:= $0367
BowserFront_Offset:= $0368
BridgeCollapseOffset:= $0369
BowserGfxFlag   := $036A
FirebarSpinSpeed:= $0388
VineFlagOffset  := $0398
VineHeight      := $0399
VineObjOffset   := $039A
VineStart_Y_Position:= $039D
BalPlatformAlignment:= $03A0
Platform_X_Scroll:= $03A1
HammerThrowingTimer:= $03A2
SprObject_Rel_XPos:= $03AD
Enemy_Rel_XPos  := $03AE
Fireball_Rel_XPos:= $03AF
Bubble_Rel_XPos := $03B0
Block_Rel_XPos  := $03B1
Misc_Rel_XPos   := $03B3
SprObject_Rel_YPos:= $03B8
Enemy_Rel_YPos  := $03B9
Fireball_Rel_YPos:= $03BA
Bubble_Rel_YPos := $03BB
Block_Rel_YPos  := $03BC
Misc_Rel_YPos   := $03BE
SprObject_SprAttrib:= $03C4
Enemy_SprAttrib := $03C5
SprObject_OffscrBits:= $03D0
Enemy_OffscreenBits:= $03D1
FBall_OffscreenBits:= $03D2
Bubble_OffscreenBits:= $03D3
Block_OffscreenBits:= $03D4
Misc_OffscreenBits:= $03D6
EnemyOffscrBitsMasked:= $03D8
Block_Orig_YPos := $03E4
Block_BBuf_Low  := $03E6
Block_Metatile  := $03E8
Block_PageLoc2  := $03EA
Block_RepFlag   := $03EC
SprDataOffset_Ctrl:= $03EE
Block_ResidualCounter:= $03F0
Block_Orig_XPos := $03F1
AttributeBuffer := $03F9
SprObject_X_MoveForce:= $0400
Enemy_X_MoveForce:= $0401
SprObject_YMF_Dummy:= $0416
Enemy_YMF_Dummy := $0417
Bubble_YMF_Dummy:= $042C
SprObject_Y_MoveForce:= $0433
Enemy_Y_MoveForce:= $0434
Block_Y_MoveForce:= $043C
MaximumLeftSpeed:= $0450
MaximumRightSpeed:= $0456
Cannon_Offset   := $046A
Cannon_PageLoc  := $046B
Cannon_X_Position:= $0471
Cannon_Y_Position:= $0477
Cannon_Timer    := $047D
BowserHitPoints := $0483
StompChainCounter:= $0484
Player_CollisionBits:= $0490
Enemy_CollisionBits:= $0491
SprObj_BoundBoxCtrl:= $0499
Enemy_BoundBoxCtrl:= $049A
Fireball_BoundBoxCtrl:= $04A0
Misc_BoundBoxCtrl:= $04A2
BoundingBox_UL_XPos:= $04AC
BoundingBox_UL_YPos:= $04AD
BoundingBox_DR_XPos:= $04AE
BoundingBox_DR_YPos:= $04AF
EnemyBoundingBoxCoord:= $04B0
Block_Buffer_1  := $0500
Block_Buffer_2  := $05D0
BlockBufferColumnPos:= $06A0
MetatileBuffer  := $06A1
HammerEnemyOffset:= $06AE
JumpCoinMiscOffset:= $06B7
BrickCoinTimerFlag:= $06BC
Misc_Collision_Flag:= $06BE
EnemyFrenzyBuffer:= $06CB
SecondaryHardMode:= $06CC
EnemyFrenzyQueue:= $06CD
FireballCounter := $06CE
DuplicateObj_Offset:= $06CF
LakituReappearTimer:= $06D1
NumberofGroupEnemies:= $06D3
ColorRotateOffset:= $06D4
PlayerGfxOffset := $06D5
WarpZoneControl := $06D6
FireworksCounter:= $06D7
MultiLoopCorrectCntr:= $06D9
MultiLoopPassCntr:= $06DA
JumpspringForce := $06DB
MaxRangeFromOrigin:= $06DC
BitMFilter      := $06DD
ChangeAreaTimer := $06DE
SprShuffleAmtOffset:= $06E0
SprShuffleAmt   := $06E1
Player_SprDataOffset:= $06E4
Enemy_SprDataOffset:= $06E5
Block_SprDataOffset:= $06EC
Bubble_SprDataOffset:= $06EE
FBall_SprDataOffset:= $06F1
Misc_SprDataOffset:= $06F3
SavedJoypad1Bits:= $06FC
SavedJoypad2Bits:= $06FD
Player_X_Scroll := $06FF
Player_XSpeedAbsolute:= $0700
FrictionAdderHigh:= $0701
FrictionAdderLow:= $0702
RunningSpeed    := $0703
SwimmingFlag    := $0704
Player_X_MoveForce:= $0705
DiffToHaltJump  := $0706
JumpOrigin_Y_HighPos:= $0707
JumpOrigin_Y_Position:= $0708
VerticalForce   := $0709
VerticalForceDown:= $070A
PlayerChangeSizeFlag:= $070B
PlayerAnimTimerSet:= $070C
PlayerAnimCtrl  := $070D
JumpspringAnimCtrl:= $070E
FlagpoleCollisionYPos:= $070F
PlayerEntranceCtrl:= $0710
FireballThrowingTimer:= $0711
DeathMusicLoaded:= $0712
FlagpoleSoundQueue:= $0713
CrouchingFlag   := $0714
GameTimerSetting:= $0715
DisableCollisionDet:= $0716
DemoAction      := $0717
DemoActionTimer := $0718
PrimaryMsgCounter:= $0719
ScreenEdge_PageLoc:= $071A
ScreenRight_PageLoc:= $071B
ScreenEdge_X_Pos:= $071C
ScreenRight_X_Pos:= $071D
ColumnSets      := $071E
AreaParserTaskNum:= $071F
CurrentNTAddr_High:= $0720
CurrentNTAddr_Low:= $0721
Sprite0HitDetectFlag:= $0722
ScrollLock      := $0723
CurrentPageLoc  := $0725
CurrentColumnPos:= $0726
TerrainControl  := $0727
BackloadingFlag := $0728
BehindAreaParserFlag:= $0729
AreaObjectPageLoc:= $072A
AreaObjectPageSel:= $072B
AreaDataOffset  := $072C
AreaObjOffsetBuffer:= $072D
AreaObjectLength:= $0730
AreaStyle       := $0733
StaircaseControl:= $0734
AreaObjectHeight:= $0735
MushroomLedgeHalfLen:= $0736
EnemyDataOffset := $0739
EnemyObjectPageLoc:= $073A
EnemyObjectPageSel:= $073B
ScreenRoutineTask:= $073C
ScrollThirtyTwo := $073D
HorizontalScroll:= $073F
VerticalScroll  := $0740
ForegroundScenery:= $0741
BackgroundScenery:= $0742
CloudTypeOverride:= $0743
BackgroundColorCtrl:= $0744
LoopCommand     := $0745
StarFlagTaskControl:= $0746
TimerControl    := $0747
CoinTallyFor1Ups:= $0748
SecondaryMsgCounter:= $0749
JoypadBitMask   := $074A
AreaType        := $074E
AreaAddrsLOffset:= $074F
AreaPointer     := $0750
EntrancePage    := $0751
AltEntranceControl:= $0752
CurrentPlayer   := $0753
PlayerSize      := $0754
Player_Pos_ForScroll:= $0755
PlayerStatus    := $0756
FetchNewGameTimerFlag:= $0757
JoypadOverride  := $0758
GameTimerExpiredFlag:= $0759
HalfwayPage     := $075B
LevelNumber     := $075C                        ; the actual dash number
Hidden1UpFlag   := $075D
CoinTally       := $075E
WorldNumber     := $075F
AreaNumber      := $0760                        ; internal number used to find areas
OffScr_NumberofLives:= $0761                    ; used by offscreen player
OffScr_HalfwayPage:= $0762
OffScr_LevelNumber:= $0763
OffScr_Hidden1UpFlag:= $0764
OffScr_CoinTally:= $0765
OffScr_WorldNumber:= $0766
OffScr_AreaNumber:= $0767
ScrollFractional:= $0768
DisableIntermediate:= $0769
PrimaryHardMode := $076A
WorldSelectNumber:= $076B
OperMode        := $0770
OperMode_Task   := $0772
VRAM_Buffer_AddrCtrl:= $0773
DisableScreenFlag:= $0774
ScrollAmount    := $0775
GamePauseStatus := $0776
GamePauseTimer  := $0777
Mirror_PPU_CTRL_REG1:= $0778
Mirror_PPU_CTRL_REG2:= $0779
NumberOfPlayers := $077A
IntervalTimerControl:= $077F
SelectTimer     := $0780
PlayerAnimTimer := $0781
JumpSwimTimer   := $0782
RunningTimer    := $0783
BlockBounceTimer:= $0784
SideCollisionTimer:= $0785
JumpspringTimer := $0786
GameTimerCtrlTimer:= $0787
ClimbSideTimer  := $0789
EnemyFrameTimer := $078A
FrenzyEnemyTimer:= $078F
BowserFireBreathTimer:= $0790
StompTimer      := $0791
AirBubbleTimer  := $0792
ScrollIntervalTimer:= $0795
EnemyIntervalTimer:= $0796
BrickCoinTimer  := $079D
InjuryTimer     := $079E
StarInvincibleTimer:= $079F
ScreenTimer     := $07A0
WorldEndTimer   := $07A1
DemoTimer       := $07A2
PseudoRandomBitReg:= $07A7
MusicOffset_Noise:= $07B0
EventMusicBuffer:= $07B1
PauseSoundBuffer:= $07B2
Squ2_NoteLenBuffer:= $07B3
Squ2_NoteLenCounter:= $07B4
Squ2_EnvelopeDataCtrl:= $07B5
Squ1_NoteLenCounter:= $07B6
Squ1_EnvelopeDataCtrl:= $07B7
Tri_NoteLenBuffer:= $07B8
Tri_NoteLenCounter:= $07B9
Noise_BeatLenCounter:= $07BA
Squ1_SfxLenCounter:= $07BB
Squ2_SfxLenCounter:= $07BD
Sfx_SecondaryCounter:= $07BE
Noise_SfxLenCounter:= $07BF
DAC_Counter     := $07C0
NoiseDataLoopbackOfs:= $07C1
NoteLengthTblAdder:= $07C4
AreaMusicBuffer_Alt:= $07C5
PauseModeFlag   := $07C6
GroundMusicHeaderOfs:= $07C7
AltRegContentFlag:= $07CA
TopScoreDisplay := $07D7
PlayerScoreDisplay:= $07DD
GameTimerDisplay:= $07F8
WorldSelectEnableFlag:= $07FC
ContinueWorld   := $07FD
PPU_CTRL_REG1   := $2000
PPU_CTRL_REG2   := $2001
PPU_STATUS      := $2002
PPU_SPR_ADDR    := $2003
PPU_SPR_DATA    := $2004
PPU_SCROLL_REG  := $2005
PPU_ADDRESS     := $2006
PPU_DATA        := $2007
SND_SQUARE1_REG := $4000
SND_PULSE_4002_REG:= $4002
SND_PULSE_4003_REG:= $4003
SND_PULSE_4004_REG:= $4004
SND_PULSE_4005_REG:= $4005
SND_PULSE_4006_REG:= $4006
SND_TRIANGLE_REG:= $4008
SND_TRIANGLE_400A_REG:= $400A
SND_TRIANGLE_400B_REG:= $400B
SND_NOISE_REG   := $400C
SND_NOISE_400E_REG:= $400E
SND_NOISE_400F_REG:= $400F
SND_DELTA_REG   := $4010
SPR_DMA         := $4014
SND_MASTERCTRL_REG:= $4015
JOYPAD_PORT1    := $4016
JOYPAD_PORT2    := $4017
SND_FDS0_REG    := $4040
SND_FDS1_REG    := $4041
SND_VOLENV_REG  := $4080
; ----------------------------------------------------------------------------
Start:
L8000:
        sei                                     ; 8000 78                       x
        cld                                     ; 8001 D8                       .
        lda     #$10                            ; 8002 A9 10                    ..
        sta     PPU_CTRL_REG1                   ; 8004 8D 00 20                 .. 
        ldx     #$FF                            ; 8007 A2 FF                    ..
        txs                                     ; 8009 9A                       .
L800A:
        lda     PPU_STATUS                      ; 800A AD 02 20                 .. 
        bpl     L800A                           ; 800D 10 FB                    ..
L800F:
        lda     PPU_STATUS                      ; 800F AD 02 20                 .. 
        bpl     L800F                           ; 8012 10 FB                    ..
        ldy     #$FE                            ; 8014 A0 FE                    ..
        ldx     #$05                            ; 8016 A2 05                    ..
        lda     TopScoreDisplay,x               ; 8018 BD D7 07                 ...
        cmp     #$0A                            ; 801B C9 0A                    ..
        bcs     L802B                           ; 801D B0 0C                    ..
        .byte   $CA,$10,$F6,$AD,$FF,$07,$C9,$A5 ; 801F CA 10 F6 AD FF 07 C9 A5  ........
        .byte   $D0,$02,$A0,$D6                 ; 8027 D0 02 A0 D6              ....
; ----------------------------------------------------------------------------
L802B:
        jsr     L9231                           ; 802B 20 31 92                  1.
        sta     $4011                           ; 802E 8D 11 40                 ..@
        sta     OperMode                        ; 8031 8D 70 07                 .p.
GL_ENTER:
        lda     #$A5                            ; 8034 A9 A5                    ..
        sta     $07FF                           ; 8036 8D FF 07                 ...
        sta     PseudoRandomBitReg              ; 8039 8D A7 07                 ...
        lda     #$0F                            ; 803C A9 0F                    ..
        sta     SND_MASTERCTRL_REG              ; 803E 8D 15 40                 ..@
        lda     #$06                            ; 8041 A9 06                    ..
        sta     PPU_CTRL_REG2                   ; 8043 8D 01 20                 .. 
        jsr     L8220                           ; 8046 20 20 82                   .
        jsr     L8F7E                           ; 8049 20 7E 8F                  ~.
        inc     DisableScreenFlag               ; 804C EE 74 07                 .t.
        lda     Mirror_PPU_CTRL_REG1            ; 804F AD 78 07                 .x.
        ora     #$80                            ; 8052 09 80                    ..
        jsr     L9052                           ; 8054 20 52 90                  R.
L8057:
        jmp     L8057                           ; 8057 4C 57 80                 LW.

; ----------------------------------------------------------------------------
L805A:
        .byte   $01,$EF,$13,$37,$5B,$00,$41,$41 ; 805A 01 EF 13 37 5B 00 41 41  ...7[.AA
        .byte   $97,$7F,$87,$8F,$9F,$B3,$C7,$F3 ; 8062 97 7F 87 8F 9F B3 C7 F3  ........
        .byte   $0E,$2D,$4C                     ; 806A 0E 2D 4C                 .-L
L806D:
        .byte   $03,$8D,$8E,$8E,$8E,$03,$03,$03 ; 806D 03 8D 8E 8E 8E 03 03 03  ........
        .byte   $8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E ; 8075 8E 8E 8E 8E 8E 8E 8E 8E  ........
        .byte   $8F,$8F,$8F                     ; 807D 8F 8F 8F                 ...
L8080:
        .byte   $00,$40                         ; 8080 00 40                    .@
; ----------------------------------------------------------------------------
NonMaskableInterrupt:
        lda     Mirror_PPU_CTRL_REG1            ; 8082 AD 78 07                 .x.
        and     #$7F                            ; 8085 29 7F                    ).
        sta     Mirror_PPU_CTRL_REG1            ; 8087 8D 78 07                 .x.
        and     #$7E                            ; 808A 29 7E                    )~
        sta     PPU_CTRL_REG1                   ; 808C 8D 00 20                 .. 
        lda     Mirror_PPU_CTRL_REG2            ; 808F AD 79 07                 .y.
        and     #$E6                            ; 8092 29 E6                    ).
        ldy     DisableScreenFlag               ; 8094 AC 74 07                 .t.
        bne     L809E                           ; 8097 D0 05                    ..
        lda     Mirror_PPU_CTRL_REG2            ; 8099 AD 79 07                 .y.
        ora     #$1E                            ; 809C 09 1E                    ..
L809E:
        sta     Mirror_PPU_CTRL_REG2            ; 809E 8D 79 07                 .y.
        and     #$E7                            ; 80A1 29 E7                    ).
        sta     PPU_CTRL_REG2                   ; 80A3 8D 01 20                 .. 
        ldx     PPU_STATUS                      ; 80A6 AE 02 20                 .. 
        lda     #$00                            ; 80A9 A9 00                    ..
        jsr     L904B                           ; 80AB 20 4B 90                  K.
        sta     PPU_SPR_ADDR                    ; 80AE 8D 03 20                 .. 
        lda     #$02                            ; 80B1 A9 02                    ..
        sta     SPR_DMA                         ; 80B3 8D 14 40                 ..@
        ldx     VRAM_Buffer_AddrCtrl            ; 80B6 AE 73 07                 .s.
        lda     L805A,x                         ; 80B9 BD 5A 80                 .Z.
        sta     $00                             ; 80BC 85 00                    ..
        lda     L806D,x                         ; 80BE BD 6D 80                 .m.
        sta     $01                             ; 80C1 85 01                    ..
        jsr     L9042                           ; 80C3 20 42 90                  B.
        ldy     #$00                            ; 80C6 A0 00                    ..
        ldx     VRAM_Buffer_AddrCtrl            ; 80C8 AE 73 07                 .s.
        cpx     #$06                            ; 80CB E0 06                    ..
        bne     L80D0                           ; 80CD D0 01                    ..
        iny                                     ; 80CF C8                       .
L80D0:
        ldx     L8080,y                         ; 80D0 BE 80 80                 ...
        lda     #$00                            ; 80D3 A9 00                    ..
        sta     VRAM_Buffer1_Offset,x           ; 80D5 9D 00 03                 ...
        sta     VRAM_Buffer1,x                  ; 80D8 9D 01 03                 ...
        sta     VRAM_Buffer_AddrCtrl            ; 80DB 8D 73 07                 .s.
        lda     Mirror_PPU_CTRL_REG2            ; 80DE AD 79 07                 .y.
        sta     PPU_CTRL_REG2                   ; 80E1 8D 01 20                 .. 
        jsr     LF379                           ; 80E4 20 79 F3                  y.
        jsr     L8FC1                           ; 80E7 20 C1 8F                  ..
        jsr     L8182                           ; 80EA 20 82 81                  ..
        jsr BANK_PractiseNMI
        ;jsr     L90FC                           ; 80ED 20 FC 90                  ..
        lda     GamePauseStatus                 ; 80F0 AD 76 07                 .v.
        lsr     a                               ; 80F3 4A                       J
        bcs     L811B                           ; 80F4 B0 25                    .%
        lda     TimerControl                    ; 80F6 AD 47 07                 .G.
        beq     L8100                           ; 80F9 F0 05                    ..
        dec     TimerControl                    ; 80FB CE 47 07                 .G.
        bne     L8119                           ; 80FE D0 19                    ..
L8100:
        ldx     #$14                            ; 8100 A2 14                    ..
        dec     IntervalTimerControl            ; 8102 CE 7F 07                 ...
        bpl     L810E                           ; 8105 10 07                    ..
        lda     #$14                            ; 8107 A9 14                    ..
        sta     IntervalTimerControl            ; 8109 8D 7F 07                 ...
        ldx     #$23                            ; 810C A2 23                    .#
L810E:
        lda     SelectTimer,x                   ; 810E BD 80 07                 ...
        beq     L8116                           ; 8111 F0 03                    ..
        dec     SelectTimer,x                   ; 8113 DE 80 07                 ...
L8116:
        dex                                     ; 8116 CA                       .
        bpl     L810E                           ; 8117 10 F5                    ..
L8119:
        inc     FrameCounter                    ; 8119 E6 09                    ..
L811B:
        ldx     #$00                            ; 811B A2 00                    ..
        ldy     #$07                            ; 811D A0 07                    ..
        lda     PseudoRandomBitReg              ; 811F AD A7 07                 ...
        and     #$02                            ; 8122 29 02                    ).
        sta     $00                             ; 8124 85 00                    ..
        lda     $07A8                           ; 8126 AD A8 07                 ...
        and     #$02                            ; 8129 29 02                    ).
        eor     $00                             ; 812B 45 00                    E.
        clc                                     ; 812D 18                       .
        beq     L8131                           ; 812E F0 01                    ..
        sec                                     ; 8130 38                       8
L8131:
        ror     PseudoRandomBitReg,x            ; 8131 7E A7 07                 ~..
        inx                                     ; 8134 E8                       .
        dey                                     ; 8135 88                       .
        bne     L8131                           ; 8136 D0 F9                    ..
        lda     Sprite0HitDetectFlag            ; 8138 AD 22 07                 .".
        beq     L815C                           ; 813B F0 1F                    ..
L813D:
        lda     PPU_STATUS                      ; 813D AD 02 20                 .. 
        and     #$40                            ; 8140 29 40                    )@
        bne     L813D                           ; 8142 D0 F9                    ..
        lda     GamePauseStatus                 ; 8144 AD 76 07                 .v.
        lsr     a                               ; 8147 4A                       J
        bcs     L8150                           ; 8148 B0 06                    ..
        jsr     L8223                           ; 814A 20 23 82                  #.
        jsr     L81C6                           ; 814D 20 C6 81                  ..
L8150:
        lda     PPU_STATUS                      ; 8150 AD 02 20                 .. 
        and     #$40                            ; 8153 29 40                    )@
        beq     L8150                           ; 8155 F0 F9                    ..
        ldy     #$14                            ; 8157 A0 14                    ..
L8159:
        dey                                     ; 8159 88                       .
        bne     L8159                           ; 815A D0 FD                    ..
L815C:
        lda     HorizontalScroll                ; 815C AD 3F 07                 .?.
        sta     PPU_SCROLL_REG                  ; 815F 8D 05 20                 .. 
        lda     VerticalScroll                  ; 8162 AD 40 07                 .@.
        sta     PPU_SCROLL_REG                  ; 8165 8D 05 20                 .. 
        lda     Mirror_PPU_CTRL_REG1            ; 8168 AD 78 07                 .x.
        pha                                     ; 816B 48                       H
        sta     PPU_CTRL_REG1                   ; 816C 8D 00 20                 .. 
        lda     GamePauseStatus                 ; 816F AD 76 07                 .v.
        lsr     a                               ; 8172 4A                       J
        bcs     L8178                           ; 8173 B0 03                    ..
        jsr     L8212                           ; 8175 20 12 82                  ..
L8178:
        lda     PPU_STATUS                      ; 8178 AD 02 20                 .. 
        pla                                     ; 817B 68                       h
        ora     #$80                            ; 817C 09 80                    ..
        sta     PPU_CTRL_REG1                   ; 817E 8D 00 20                 .. 
        rti                                     ; 8181 40                       @

; ----------------------------------------------------------------------------
L8182:
        lda     OperMode                        ; 8182 AD 70 07                 .p.
        cmp     #$02                            ; 8185 C9 02                    ..
        beq     L8194                           ; 8187 F0 0B                    ..
        cmp     #$01                            ; 8189 C9 01                    ..
        bne     L81C5                           ; 818B D0 38                    .8
        lda     OperMode_Task                   ; 818D AD 72 07                 .r.
        cmp     #$03                            ; 8190 C9 03                    ..
        bne     L81C5                           ; 8192 D0 31                    .1
L8194:
        lda     GamePauseTimer                  ; 8194 AD 77 07                 .w.
        beq     L819D                           ; 8197 F0 04                    ..
        .byte   $CE,$77,$07,$60                 ; 8199 CE 77 07 60              .w.`
; ----------------------------------------------------------------------------
L819D:
        lda     SavedJoypad1Bits                ; 819D AD FC 06                 ...
        and     #$10                            ; 81A0 29 10                    ).
        beq     L81BD                           ; 81A2 F0 19                    ..
        .byte   $AD,$76,$07,$29,$80,$D0,$1A,$A9 ; 81A4 AD 76 07 29 80 D0 1A A9  .v.)....
        .byte   $2B,$8D,$77,$07,$AD,$76,$07,$A8 ; 81AC 2B 8D 77 07 AD 76 07 A8  +.w..v..
        .byte   $C8,$84,$FA,$49,$01,$09,$80,$D0 ; 81B4 C8 84 FA 49 01 09 80 D0  ...I....
        .byte   $05                             ; 81BC 05                       .
; ----------------------------------------------------------------------------
L81BD:
        lda     GamePauseStatus                 ; 81BD AD 76 07                 .v.
        and     #$7F                            ; 81C0 29 7F                    ).
        sta     GamePauseStatus                 ; 81C2 8D 76 07                 .v.
L81C5:
        rts                                     ; 81C5 60                       `

; ----------------------------------------------------------------------------
L81C6:
        ldy     AreaType                        ; 81C6 AC 4E 07                 .N.
        lda     #$28                            ; 81C9 A9 28                    .(
        sta     $00                             ; 81CB 85 00                    ..
        ldx     #$0E                            ; 81CD A2 0E                    ..
L81CF:
        lda     Player_SprDataOffset,x          ; 81CF BD E4 06                 ...
        cmp     $00                             ; 81D2 C5 00                    ..
        bcc     L81E5                           ; 81D4 90 0F                    ..
        ldy     SprShuffleAmtOffset             ; 81D6 AC E0 06                 ...
        clc                                     ; 81D9 18                       .
        adc     SprShuffleAmt,y                 ; 81DA 79 E1 06                 y..
        bcc     L81E2                           ; 81DD 90 03                    ..
        clc                                     ; 81DF 18                       .
        adc     $00                             ; 81E0 65 00                    e.
L81E2:
        sta     Player_SprDataOffset,x          ; 81E2 9D E4 06                 ...
L81E5:
        dex                                     ; 81E5 CA                       .
        bpl     L81CF                           ; 81E6 10 E7                    ..
        ldx     SprShuffleAmtOffset             ; 81E8 AE E0 06                 ...
        inx                                     ; 81EB E8                       .
        cpx     #$03                            ; 81EC E0 03                    ..
        bne     L81F2                           ; 81EE D0 02                    ..
        ldx     #$00                            ; 81F0 A2 00                    ..
L81F2:
        stx     SprShuffleAmtOffset             ; 81F2 8E E0 06                 ...
        ldx     #$08                            ; 81F5 A2 08                    ..
        ldy     #$02                            ; 81F7 A0 02                    ..
L81F9:
        lda     $06E9,y                         ; 81F9 B9 E9 06                 ...
        sta     FBall_SprDataOffset,x           ; 81FC 9D F1 06                 ...
        clc                                     ; 81FF 18                       .
        adc     #$08                            ; 8200 69 08                    i.
        sta     $06F2,x                         ; 8202 9D F2 06                 ...
        clc                                     ; 8205 18                       .
        adc     #$08                            ; 8206 69 08                    i.
        sta     Misc_SprDataOffset,x            ; 8208 9D F3 06                 ...
        dex                                     ; 820B CA                       .
        dex                                     ; 820C CA                       .
        dex                                     ; 820D CA                       .
        dey                                     ; 820E 88                       .
        bpl     L81F9                           ; 820F 10 E8                    ..
        rts                                     ; 8211 60                       `

; ----------------------------------------------------------------------------
L8212:
        lda     OperMode                        ; 8212 AD 70 07                 .p.
        jsr     L8F69                           ; 8215 20 69 8F                  i.
      .word BANK_PractiseReset
        ;.byte   $31,$82
        .byte $B3,$9F,$8C,$83,$7D,$93 ; 8218 31 82 B3 9F 8C 83 7D 93  1.....}.
; ----------------------------------------------------------------------------
L8220:
        ldy     #$00                            ; 8220 A0 00                    ..
L8223           := * + 1
        bit     Fireball_BoundBoxCtrl           ; 8222 2C A0 04                 ,..
        lda     #$F8                            ; 8225 A9 F8                    ..
L8227:
        sta     Sprite_Y_Position,y             ; 8227 99 00 02                 ...
        iny                                     ; 822A C8                       .
        iny                                     ; 822B C8                       .
        iny                                     ; 822C C8                       .
        iny                                     ; 822D C8                       .
        bne     L8227                           ; 822E D0 F7                    ..
        rts                                     ; 8230 60                       `

; ----------------------------------------------------------------------------
        lda     OperMode_Task                   ; 8231 AD 72 07                 .r.
        jsr     L8F69                           ; 8234 20 69 8F                  i.
        .byte   $34,$91,$68,$85,$C6,$91,$45,$82 ; 8237 34 91 68 85 C6 91 45 82  4.h...E.
        .byte   $04,$20,$73,$01,$00,$00         ; 823F 04 20 73 01 00 00        . s...
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 8245 A0 00                    ..
        lda     SavedJoypad1Bits                ; 8247 AD FC 06                 ...
        ora     SavedJoypad2Bits                ; 824A 0D FD 06                 ...
        cmp     #$10                            ; 824D C9 10                    ..
        beq     L8255                           ; 824F F0 04                    ..
        cmp     #$90                            ; 8251 C9 90                    ..
        bne     L8258                           ; 8253 D0 03                    ..
L8255:
        jmp     L82D8                           ; 8255 4C D8 82                 L..

; ----------------------------------------------------------------------------
L8258:
        cmp     #$20                            ; 8258 C9 20                    . 
        beq     L8276                           ; 825A F0 1A                    ..
        ldx     DemoTimer                       ; 825C AE A2 07                 ...
        bne     L826C                           ; 825F D0 0B                    ..
        .byte   $8D,$80,$07,$20,$6C,$83,$B0,$60 ; 8261 8D 80 07 20 6C 83 B0 60  ... l..`
        .byte   $4C,$C0,$82                     ; 8269 4C C0 82                 L..
; ----------------------------------------------------------------------------
L826C:
        ldx     WorldSelectEnableFlag           ; 826C AE FC 07                 ...
        nop                                     ; 826F EA                       .
        nop                                     ; 8270 EA                       .
        cmp     #$40                            ; 8271 C9 40                    .@
        bne     L82BB                           ; 8273 D0 46                    .F
        .byte   $C8                             ; 8275 C8                       .
L8276:
        .byte   $AD,$A2,$07,$F0,$4E,$A9,$18,$8D ; 8276 AD A2 07 F0 4E A9 18 8D  ....N...
        .byte   $A2,$07,$AD,$80,$07,$D0,$36,$A9 ; 827E A2 07 AD 80 07 D0 36 A9  ......6.
        .byte   $10,$8D,$80,$07,$C0,$01,$F0,$0E ; 8286 10 8D 80 07 C0 01 F0 0E  ........
        .byte   $AD,$7A,$07,$49,$01,$EA,$EA,$EA ; 828E AD 7A 07 49 01 EA EA EA  .z.I....
        .byte   $20,$25,$83,$4C,$BB,$82,$EA,$EA ; 8296 20 25 83 4C BB 82 EA EA   %.L....
        .byte   $EA,$20,$50,$F4,$BD,$90,$F4,$9D ; 829E EA 20 50 F4 BD 90 F4 9D  . P.....
        .byte   $00,$03,$E8,$E0,$08,$30,$F5,$AC ; 82A6 00 03 E8 E0 08 30 F5 AC  .....0..
        .byte   $5F,$07,$C8,$8C,$04,$03,$AC,$5C ; 82AE 5F 07 C8 8C 04 03 AC 5C  _......\
        .byte   $07,$C8,$8C,$06,$03             ; 82B6 07 C8 8C 06 03           .....
; ----------------------------------------------------------------------------
L82BB:
        lda     #$00                            ; 82BB A9 00                    ..
        sta     SavedJoypad1Bits                ; 82BD 8D FC 06                 ...
        jsr     L9FC1                           ; 82C0 20 C1 9F                  ..
        lda     GameEngineSubroutine            ; 82C3 A5 0E                    ..
        cmp     #$06                            ; 82C5 C9 06                    ..
        bne     L830D                           ; 82C7 D0 44                    .D
L82C9:
        .byte   $A9,$00,$8D,$70,$07,$8D,$72,$07 ; 82C9 A9 00 8D 70 07 8D 72 07  ...p..r.
        .byte   $8D,$22,$07,$EE,$74,$07,$60     ; 82D1 8D 22 07 EE 74 07 60     ."..t.`
; ----------------------------------------------------------------------------
L82D8:
        ldy     DemoTimer                       ; 82D8 AC A2 07                 ...
        beq     L82C9                           ; 82DB F0 EC                    ..
        asl     a                               ; 82DD 0A                       .
        bcc     L82E6                           ; 82DE 90 06                    ..
        .byte   $AD,$FD,$07,$20,$0E,$83         ; 82E0 AD FD 07 20 0E 83        ... ..
; ----------------------------------------------------------------------------
L82E6:
        jsr     L9DF5                           ; 82E6 20 F5 9D                  ..
        inc     Hidden1UpFlag                   ; 82E9 EE 5D 07                 .].
        inc     OffScr_Hidden1UpFlag            ; 82EC EE 64 07                 .d.
        inc     FetchNewGameTimerFlag           ; 82EF EE 57 07                 .W.
        inc     OperMode                        ; 82F2 EE 70 07                 .p.
        lda     WorldSelectEnableFlag           ; 82F5 AD FC 07                 ...
        sta     PrimaryHardMode                 ; 82F8 8D 6A 07                 .j.
        lda     #$00                            ; 82FB A9 00                    ..
        sta     OperMode_Task                   ; 82FD 8D 72 07                 .r.
        sta     DemoTimer                       ; 8300 8D A2 07                 ...
        ldx     #$17                            ; 8303 A2 17                    ..
        lda     #$00                            ; 8305 A9 00                    ..
L8307:
        sta     PlayerScoreDisplay,x            ; 8307 9D DD 07                 ...
        dex                                     ; 830A CA                       .
        bpl     L8307                           ; 830B 10 FA                    ..
L830D:
        rts                                     ; 830D 60                       `

; ----------------------------------------------------------------------------
        .byte   $8D,$5F,$07,$8D,$66,$07,$A2,$00 ; 830E 8D 5F 07 8D 66 07 A2 00  ._..f...
        .byte   $8E,$60,$07,$8E,$67,$07,$60     ; 8316 8E 60 07 8E 67 07 60     .`..g.`
L831D:
        .byte   $07,$22,$65,$82,$CE,$24,$00,$00 ; 831D 07 22 65 82 CE 24 00 00  ."e..$..
; ----------------------------------------------------------------------------
L8325:
        ldy     #$07                            ; 8325 A0 07                    ..
L8327:
        lda     L831D,y                         ; 8327 B9 1D 83                 ...
        sta     VRAM_Buffer1_Offset,y           ; 832A 99 00 03                 ...
        dey                                     ; 832D 88                       .
        bpl     L8327                           ; 832E 10 F7                    ..
        lda     NumberOfPlayers                 ; 8330 AD 7A 07                 .z.
        beq     L833F                           ; 8333 F0 0A                    ..
        .byte   $A9,$24,$8D,$04,$03,$A9,$CE,$8D ; 8335 A9 24 8D 04 03 A9 CE 8D  .$......
        .byte   $06,$03                         ; 833D 06 03                    ..
; ----------------------------------------------------------------------------
L833F:
        rts                                     ; 833F 60                       `

; ----------------------------------------------------------------------------
        .byte   $10,$01,$41,$40,$C0,$80,$10,$40 ; 8340 10 01 41 40 C0 80 10 40  ..A@...@
        .byte   $10,$01,$41,$C1,$40,$C0,$C1,$C0 ; 8348 10 01 41 C1 40 C0 C1 C0  ..A.@...
        .byte   $40,$41,$40,$41,$00,$1C,$61,$1D ; 8350 40 41 40 41 00 1C 61 1D  @A@A..a.
        .byte   $06,$01,$01,$27,$03,$1D,$02,$1A ; 8358 06 01 01 27 03 1D 02 1A  ...'....
        .byte   $21,$10,$03,$09,$1A,$0C,$1C,$0C ; 8360 21 10 03 09 1A 0C 1C 0C  !.......
        .byte   $10,$FF,$00,$AE,$AE,$17,$07,$AD ; 8368 10 FF 00 AE AE 17 07 AD  ........
        .byte   $18,$07,$D0,$0D,$E8,$EE,$17,$07 ; 8370 18 07 D0 0D E8 EE 17 07  ........
        .byte   $38,$BD,$54,$83,$8D,$18,$07,$F0 ; 8378 38 BD 54 83 8D 18 07 F0  8.T.....
        .byte   $0A,$BD,$3F,$83,$8D,$FC,$06,$CE ; 8380 0A BD 3F 83 8D FC 06 CE  ..?.....
        .byte   $18,$07,$18,$60                 ; 8388 18 07 18 60              ...`
; ----------------------------------------------------------------------------
        jsr     L83A1                           ; 838C 20 A1 83                  ..
        lda     OperMode_Task                   ; 838F AD 72 07                 .r.
        beq     L839B                           ; 8392 F0 07                    ..
        ldx     #$00                            ; 8394 A2 00                    ..
        stx     ObjectOffset                    ; 8396 86 08                    ..
        jsr     LC000                           ; 8398 20 00 C0                  ..
L839B:
        jsr     LF16F                           ; 839B 20 6F F1                  o.
        jmp     LEF2E                           ; 839E 4C 2E EF                 L..

; ----------------------------------------------------------------------------
L83A1:
        lda     OperMode_Task                   ; 83A1 AD 72 07                 .r.
        jsr     L8F69                           ; 83A4 20 69 8F                  i.
        .byte   $B3,$CF,$B1,$83,$BE,$83,$F7,$83 ; 83A7 B3 CF B1 83 BE 83 F7 83  ........
        .byte   $62,$84                         ; 83AF 62 84                    b.
; ----------------------------------------------------------------------------
        ldx     ScreenRight_PageLoc             ; 83B1 AE 1B 07                 ...
        inx                                     ; 83B4 E8                       .
        stx     DestinationPageLoc              ; 83B5 86 34                    .4
        lda     #$08                            ; 83B7 A9 08                    ..
        sta     EventMusicQueue                 ; 83B9 85 FC                    ..
        jmp     L8885                           ; 83BB 4C 85 88                 L..

; ----------------------------------------------------------------------------
        ldy     #$00                            ; 83BE A0 00                    ..
        sty     VictoryWalkControl              ; 83C0 84 35                    .5
        lda     SprObject_PageLoc               ; 83C2 A5 6D                    .m
        cmp     DestinationPageLoc              ; 83C4 C5 34                    .4
        bne     L83CE                           ; 83C6 D0 06                    ..
        lda     SprObject_X_Position            ; 83C8 A5 86                    ..
        cmp     #$60                            ; 83CA C9 60                    .`
        bcs     L83D1                           ; 83CC B0 03                    ..
L83CE:
        inc     VictoryWalkControl              ; 83CE E6 35                    .5
        iny                                     ; 83D0 C8                       .
L83D1:
        tya                                     ; 83D1 98                       .
        jsr     LA1BD                           ; 83D2 20 BD A1                  ..
        lda     ScreenEdge_PageLoc              ; 83D5 AD 1A 07                 ...
        cmp     DestinationPageLoc              ; 83D8 C5 34                    .4
        beq     L83F2                           ; 83DA F0 16                    ..
        lda     ScrollFractional                ; 83DC AD 68 07                 .h.
        clc                                     ; 83DF 18                       .
        adc     #$80                            ; 83E0 69 80                    i.
        sta     ScrollFractional                ; 83E2 8D 68 07                 .h.
        lda     #$01                            ; 83E5 A9 01                    ..
        adc     #$00                            ; 83E7 69 00                    i.
        tay                                     ; 83E9 A8                       .
        jsr     LA09B                           ; 83EA 20 9B A0                  ..
        jsr     LA046                           ; 83ED 20 46 A0                  F.
        inc     VictoryWalkControl              ; 83F0 E6 35                    .5
L83F2:
        lda     VictoryWalkControl              ; 83F2 A5 35                    .5
        beq     L845E                           ; 83F4 F0 68                    .h
        rts                                     ; 83F6 60                       `

; ----------------------------------------------------------------------------
        lda     SecondaryMsgCounter             ; 83F7 AD 49 07                 .I.
        bne     L8444                           ; 83FA D0 48                    .H
        lda     PrimaryMsgCounter               ; 83FC AD 19 07                 ...
        beq     L8419                           ; 83FF F0 18                    ..
        cmp     #$09                            ; 8401 C9 09                    ..
        bcs     L8444                           ; 8403 B0 3F                    .?
        ldy     WorldNumber                     ; 8405 AC 5F 07                 ._.
        cpy     #$07                            ; 8408 C0 07                    ..
        bne     L8415                           ; 840A D0 09                    ..
        .byte   $C9,$03,$90,$34,$E9,$01,$4C,$19 ; 840C C9 03 90 34 E9 01 4C 19  ...4..L.
        .byte   $84                             ; 8414 84                       .
; ----------------------------------------------------------------------------
L8415:
        cmp     #$02                            ; 8415 C9 02                    ..
        bcc     L8444                           ; 8417 90 2B                    .+
L8419:
        tay                                     ; 8419 A8                       .
        bne     L8424                           ; 841A D0 08                    ..
        lda     CurrentPlayer                   ; 841C AD 53 07                 .S.
        beq     L8435                           ; 841F F0 14                    ..
        .byte   $C8,$D0,$11                     ; 8421 C8 D0 11                 ...
; ----------------------------------------------------------------------------
L8424:
        iny                                     ; 8424 C8                       .
        lda     WorldNumber                     ; 8425 AD 5F 07                 ._.
        cmp     #$07                            ; 8428 C9 07                    ..
        beq     L8435                           ; 842A F0 09                    ..
        dey                                     ; 842C 88                       .
        cpy     #$04                            ; 842D C0 04                    ..
        bcs     L8457                           ; 842F B0 26                    .&
        cpy     #$03                            ; 8431 C0 03                    ..
        bcs     L8444                           ; 8433 B0 0F                    ..
L8435:
        cpy     #$03                            ; 8435 C0 03                    ..
        bne     L843D                           ; 8437 D0 04                    ..
        .byte   $A9,$04,$85,$FC                 ; 8439 A9 04 85 FC              ....
; ----------------------------------------------------------------------------
L843D:
        tya                                     ; 843D 98                       .
        clc                                     ; 843E 18                       .
        adc     #$0C                            ; 843F 69 0C                    i.
        sta     VRAM_Buffer_AddrCtrl            ; 8441 8D 73 07                 .s.
L8444:
        lda     SecondaryMsgCounter             ; 8444 AD 49 07                 .I.
        clc                                     ; 8447 18                       .
        adc     #$04                            ; 8448 69 04                    i.
        sta     SecondaryMsgCounter             ; 844A 8D 49 07                 .I.
        lda     PrimaryMsgCounter               ; 844D AD 19 07                 ...
        adc     #$00                            ; 8450 69 00                    i.
        sta     PrimaryMsgCounter               ; 8452 8D 19 07                 ...
        cmp     #$07                            ; 8455 C9 07                    ..
L8457:
        bcc     L8461                           ; 8457 90 08                    ..
        lda     #$06                            ; 8459 A9 06                    ..
        sta     WorldEndTimer                   ; 845B 8D A1 07                 ...
L845E:
        inc     OperMode_Task                   ; 845E EE 72 07                 .r.
L8461:
        rts                                     ; 8461 60                       `

; ----------------------------------------------------------------------------
PlayerEndWorld:
        lda     WorldEndTimer                   ; 8462 AD A1 07                 ...
        bne     L8487                           ; 8465 D0 20                    . 
        ldy     WorldNumber                     ; 8467 AC 5F 07                 ._.
        cpy     #$07                            ; 846A C0 07                    ..
        bcs     L8488                           ; 846C B0 1A                    ..
        lda     #$00                            ; 846E A9 00                    ..
        sta     AreaNumber                      ; 8470 8D 60 07                 .`.
        sta     LevelNumber                     ; 8473 8D 5C 07                 .\.
        sta     OperMode_Task                   ; 8476 8D 72 07                 .r.
        inc     WorldNumber                     ; 8479 EE 5F 07                 ._.
        jsr     L9DF5                           ; 847C 20 F5 9D                  ..
        inc     FetchNewGameTimerFlag           ; 847F EE 57 07                 .W.
        lda     #$01                            ; 8482 A9 01                    ..
        sta     OperMode                        ; 8484 8D 70 07                 .p.
L8487:
        rts                                     ; 8487 60                       `

; ----------------------------------------------------------------------------
L8488:
        .byte   $AD,$FC,$06,$0D,$FD,$06,$29,$40 ; 8488 AD FC 06 0D FD 06 29 40  ......)@
        .byte   $F0,$0D,$A9,$01,$8D,$FC,$07,$A9 ; 8490 F0 0D A9 01 8D FC 07 A9  ........
        .byte   $FF,$8D,$5A,$07,$20,$30,$F4,$60 ; 8498 FF 8D 5A 07 20 30 F4 60  ..Z. 0.`
L84A0:
        .byte   $FF                             ; 84A0 FF                       .
L84A1:
        .byte   $FF,$F6,$FB,$F7,$FB,$F8,$FB,$F9 ; 84A1 FF F6 FB F7 FB F8 FB F9  ........
        .byte   $FB,$FA,$FB,$F6,$50,$F7,$50,$F8 ; 84A9 FB FA FB F6 50 F7 50 F8  ....P.P.
        .byte   $50,$F9,$50,$FA,$50,$FD,$FE     ; 84B1 50 F9 50 FA 50 FD FE     P.P.P..
L84B8:
        .byte   $FF,$41,$42,$44,$45,$48,$31,$32 ; 84B8 FF 41 42 44 45 48 31 32  .ABDEH12
        .byte   $34,$35,$38,$00                 ; 84C0 34 35 38 00              458.
; ----------------------------------------------------------------------------
L84C4:
        lda     FloateyNum_Control,x            ; 84C4 BD 10 01                 ...
        beq     L8487                           ; 84C7 F0 BE                    ..
        cmp     #$0B                            ; 84C9 C9 0B                    ..
        bcc     L84D2                           ; 84CB 90 05                    ..
        .byte   $A9,$0B,$9D,$10,$01             ; 84CD A9 0B 9D 10 01           .....
; ----------------------------------------------------------------------------
L84D2:
        tay                                     ; 84D2 A8                       .
        lda     FloateyNum_Timer,x              ; 84D3 BD 2C 01                 .,.
        bne     L84DC                           ; 84D6 D0 04                    ..
        sta     FloateyNum_Control,x            ; 84D8 9D 10 01                 ...
        rts                                     ; 84DB 60                       `

; ----------------------------------------------------------------------------
L84DC:
        dec     FloateyNum_Timer,x              ; 84DC DE 2C 01                 .,.
        cmp     #$2B                            ; 84DF C9 2B                    .+
        bne     L8501                           ; 84E1 D0 1E                    ..
        cpy     #$0B                            ; 84E3 C0 0B                    ..
        bne     L84EE                           ; 84E5 D0 07                    ..
        .byte   $EE,$5A,$07,$A9,$40,$85,$FE     ; 84E7 EE 5A 07 A9 40 85 FE     .Z..@..
; ----------------------------------------------------------------------------
L84EE:
        lda     L84B8,y                         ; 84EE B9 B8 84                 ...
        lsr     a                               ; 84F1 4A                       J
        lsr     a                               ; 84F2 4A                       J
        lsr     a                               ; 84F3 4A                       J
        lsr     a                               ; 84F4 4A                       J
        tax                                     ; 84F5 AA                       .
        lda     L84B8,y                         ; 84F6 B9 B8 84                 ...
        and     #$0F                            ; 84F9 29 0F                    ).
        sta     DigitModifier,x                 ; 84FB 9D 34 01                 .4.
        jsr     LAD03                           ; 84FE 20 03 AD                  ..
L8501:
        ldy     Enemy_SprDataOffset,x           ; 8501 BC E5 06                 ...
        lda     Enemy_ID,x                      ; 8504 B5 16                    ..
        cmp     #$12                            ; 8506 C9 12                    ..
        beq     L852C                           ; 8508 F0 22                    ."
        cmp     #$0D                            ; 850A C9 0D                    ..
        beq     L852C                           ; 850C F0 1E                    ..
        cmp     #$05                            ; 850E C9 05                    ..
        beq     L8524                           ; 8510 F0 12                    ..
        cmp     #$0A                            ; 8512 C9 0A                    ..
        beq     L852C                           ; 8514 F0 16                    ..
        cmp     #$0B                            ; 8516 C9 0B                    ..
        beq     L852C                           ; 8518 F0 12                    ..
        cmp     #$09                            ; 851A C9 09                    ..
        bcs     L8524                           ; 851C B0 06                    ..
        lda     Enemy_State,x                   ; 851E B5 1E                    ..
        cmp     #$02                            ; 8520 C9 02                    ..
        bcs     L852C                           ; 8522 B0 08                    ..
L8524:
        ldx     SprDataOffset_Ctrl              ; 8524 AE EE 03                 ...
        ldy     Block_SprDataOffset,x           ; 8527 BC EC 06                 ...
        ldx     ObjectOffset                    ; 852A A6 08                    ..
L852C:
        lda     FloateyNum_Y_Pos,x              ; 852C BD 1E 01                 ...
        cmp     #$18                            ; 852F C9 18                    ..
        bcc     L8538                           ; 8531 90 05                    ..
        sbc     #$01                            ; 8533 E9 01                    ..
        sta     FloateyNum_Y_Pos,x              ; 8535 9D 1E 01                 ...
L8538:
        lda     FloateyNum_Y_Pos,x              ; 8538 BD 1E 01                 ...
        sbc     #$08                            ; 853B E9 08                    ..
        jsr     LE5DA                           ; 853D 20 DA E5                  ..
        lda     FloateyNum_X_Pos,x              ; 8540 BD 17 01                 ...
        sta     Sprite_X_Position,y             ; 8543 99 03 02                 ...
        clc                                     ; 8546 18                       .
        adc     #$08                            ; 8547 69 08                    i.
        sta     $0207,y                         ; 8549 99 07 02                 ...
        lda     #$02                            ; 854C A9 02                    ..
        sta     Sprite_Attributes,y             ; 854E 99 02 02                 ...
        sta     $0206,y                         ; 8551 99 06 02                 ...
        lda     FloateyNum_Control,x            ; 8554 BD 10 01                 ...
        asl     a                               ; 8557 0A                       .
        tax                                     ; 8558 AA                       .
        lda     L84A0,x                         ; 8559 BD A0 84                 ...
        sta     Sprite_Tilenumber,y             ; 855C 99 01 02                 ...
        lda     L84A1,x                         ; 855F BD A1 84                 ...
        sta     $0205,y                         ; 8562 99 05 02                 ...
        ldx     ObjectOffset                    ; 8565 A6 08                    ..
        rts                                     ; 8567 60                       `

; ----------------------------------------------------------------------------
        lda     ScreenRoutineTask               ; 8568 AD 3C 07                 .<.
        jsr     L8F69                           ; 856B 20 69 8F                  i.
        .byte   $8C,$85
        .byte $9C,$85
      .word BANK_PractiseWriteTopStatusLine
      .word BANK_PractiseWriteBottomStatusLine
        ;.byte $53,$86
        ;.byte $5B,$86 ; 856E 8C 85 9C 85 53 86 5B 86  ....S.[.
        .byte   $94,$86,$D4,$89,$A9,$86,$A0,$F3 ; 8576 94 86 D4 89 A9 86 A0 F3  ........
        .byte   $E7,$86,$C0,$85,$E4,$85,$44,$86 ; 857E E7 86 C0 85 E4 85 44 86  ......D.
        .byte   $3A,$88,$69,$88,$80,$88         ; 8586 3A 88 69 88 80 88        :.i...
; ----------------------------------------------------------------------------
        jsr     L8220                           ; 858C 20 20 82                   .
        jsr     L8F7E                           ; 858F 20 7E 8F                  ~.
        lda     OperMode                        ; 8592 AD 70 07                 .p.
        beq     L85C9                           ; 8595 F0 32                    .2
        ldx     #$03                            ; 8597 A2 03                    ..
        jmp     L85C6                           ; 8599 4C C6 85                 L..

; ----------------------------------------------------------------------------
        lda     BackgroundColorCtrl             ; 859C AD 44 07                 .D.
        pha                                     ; 859F 48                       H
        lda     PlayerStatus                    ; 85A0 AD 56 07                 .V.
        pha                                     ; 85A3 48                       H
        lda     #$00                            ; 85A4 A9 00                    ..
        sta     PlayerStatus                    ; 85A6 8D 56 07                 .V.
        lda     #$02                            ; 85A9 A9 02                    ..
        sta     BackgroundColorCtrl             ; 85AB 8D 44 07                 .D.
        jsr     L85F2                           ; 85AE 20 F2 85                  ..
        pla                                     ; 85B1 68                       h
        sta     PlayerStatus                    ; 85B2 8D 56 07                 .V.
        pla                                     ; 85B5 68                       h
        sta     BackgroundColorCtrl             ; 85B6 8D 44 07                 .D.
        jmp     L887C                           ; 85B9 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
L85BC:
        .byte   $01,$02,$03,$04                 ; 85BC 01 02 03 04              ....
; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 85C0 AC 4E 07                 .N.
        ldx     L85BC,y                         ; 85C3 BE BC 85                 ...
L85C6:
        stx     VRAM_Buffer_AddrCtrl            ; 85C6 8E 73 07                 .s.
L85C9:
        jmp     L887C                           ; 85C9 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
        .byte   $00,$09,$0A,$04                 ; 85CC 00 09 0A 04              ....
L85D0:
        .byte   $12,$22,$0F,$0F,$0F,$22,$0F,$0F ; 85D0 12 22 0F 0F 0F 22 0F 0F  ."..."..
L85D8:
        .byte   $22,$16,$27,$18,$22,$30,$27,$19 ; 85D8 22 16 27 18 22 30 27 19  ".'."0'.
        .byte   $22,$37,$27,$16                 ; 85E0 22 37 27 16              "7'.
; ----------------------------------------------------------------------------
        ldy     BackgroundColorCtrl             ; 85E4 AC 44 07                 .D.
        beq     L85EF                           ; 85E7 F0 06                    ..
        .byte   $B9,$C8,$85,$8D,$73,$07         ; 85E9 B9 C8 85 8D 73 07        ....s.
; ----------------------------------------------------------------------------
L85EF:
        inc     ScreenRoutineTask               ; 85EF EE 3C 07                 .<.
L85F2:
        ldx     VRAM_Buffer1_Offset             ; 85F2 AE 00 03                 ...
        ldy     #$00                            ; 85F5 A0 00                    ..
        lda     CurrentPlayer                   ; 85F7 AD 53 07                 .S.
        beq     L85FE                           ; 85FA F0 02                    ..
        .byte   $A0,$04                         ; 85FC A0 04                    ..
; ----------------------------------------------------------------------------
L85FE:
        lda     PlayerStatus                    ; 85FE AD 56 07                 .V.
        cmp     #$02                            ; 8601 C9 02                    ..
        bne     L8607                           ; 8603 D0 02                    ..
        ldy     #$08                            ; 8605 A0 08                    ..
L8607:
        lda     #$03                            ; 8607 A9 03                    ..
        sta     $00                             ; 8609 85 00                    ..
L860B:
        lda     L85D8,y                         ; 860B B9 D8 85                 ...
        sta     $0304,x                         ; 860E 9D 04 03                 ...
        iny                                     ; 8611 C8                       .
        inx                                     ; 8612 E8                       .
        dec     $00                             ; 8613 C6 00                    ..
        bpl     L860B                           ; 8615 10 F4                    ..
        ldx     VRAM_Buffer1_Offset             ; 8617 AE 00 03                 ...
        ldy     BackgroundColorCtrl             ; 861A AC 44 07                 .D.
        bne     L8622                           ; 861D D0 03                    ..
        ldy     AreaType                        ; 861F AC 4E 07                 .N.
L8622:
        lda     L85D0,y                         ; 8622 B9 D0 85                 ...
        sta     $0304,x                         ; 8625 9D 04 03                 ...
        lda     #$3F                            ; 8628 A9 3F                    .?
        sta     VRAM_Buffer1,x                  ; 862A 9D 01 03                 ...
        lda     #$10                            ; 862D A9 10                    ..
        sta     $0302,x                         ; 862F 9D 02 03                 ...
        lda     #$04                            ; 8632 A9 04                    ..
        sta     $0303,x                         ; 8634 9D 03 03                 ...
        lda     #$00                            ; 8637 A9 00                    ..
        sta     $0308,x                         ; 8639 9D 08 03                 ...
        txa                                     ; 863C 8A                       .
        clc                                     ; 863D 18                       .
        adc     #$07                            ; 863E 69 07                    i.
L8640:
        sta     VRAM_Buffer1_Offset             ; 8640 8D 00 03                 ...
        rts                                     ; 8643 60                       `

; ----------------------------------------------------------------------------
        lda     AreaStyle                       ; 8644 AD 33 07                 .3.
        cmp     #$01                            ; 8647 C9 01                    ..
        bne     L8650                           ; 8649 D0 05                    ..
        .byte   $A9,$0B                         ; 864B A9 0B                    ..
; ----------------------------------------------------------------------------
L864D:
        sta     VRAM_Buffer_AddrCtrl            ; 864D 8D 73 07                 .s.
L8650:
        jmp     L887C                           ; 8650 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
        lda     #$00                            ; 8653 A9 00                    ..
        jsr     L893F                           ; 8655 20 3F 89                  ?.
        jmp     L887C                           ; 8658 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
        jsr     LAD0C                           ; 865B 20 0C AD                  ..
        ldx     VRAM_Buffer1_Offset             ; 865E AE 00 03                 ...
        lda     #$20                            ; 8661 A9 20                    . 
        sta     VRAM_Buffer1,x                  ; 8663 9D 01 03                 ...
        lda     #$73                            ; 8666 A9 73                    .s
        sta     $0302,x                         ; 8668 9D 02 03                 ...
        lda     #$03                            ; 866B A9 03                    ..
        sta     $0303,x                         ; 866D 9D 03 03                 ...
        ldy     WorldNumber                     ; 8670 AC 5F 07                 ._.
        iny                                     ; 8673 C8                       .
        tya                                     ; 8674 98                       .
        sta     $0304,x                         ; 8675 9D 04 03                 ...
        lda     #$28                            ; 8678 A9 28                    .(
        sta     $0305,x                         ; 867A 9D 05 03                 ...
        ldy     LevelNumber                     ; 867D AC 5C 07                 .\.
        iny                                     ; 8680 C8                       .
        tya                                     ; 8681 98                       .
        sta     $0306,x                         ; 8682 9D 06 03                 ...
        lda     #$00                            ; 8685 A9 00                    ..
        sta     $0307,x                         ; 8687 9D 07 03                 ...
        txa                                     ; 868A 8A                       .
        clc                                     ; 868B 18                       .
        adc     #$06                            ; 868C 69 06                    i.
        sta     VRAM_Buffer1_Offset             ; 868E 8D 00 03                 ...
        jmp     L887C                           ; 8691 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
        lda     GameTimerExpiredFlag            ; 8694 AD 59 07                 .Y.
        beq     L86A3                           ; 8697 F0 0A                    ..
        lda     #$00                            ; 8699 A9 00                    ..
        sta     GameTimerExpiredFlag            ; 869B 8D 59 07                 .Y.
        lda     #$02                            ; 869E A9 02                    ..
        jmp     L86C8                           ; 86A0 4C C8 86                 L..

; ----------------------------------------------------------------------------
L86A3:
        inc     ScreenRoutineTask               ; 86A3 EE 3C 07                 .<.
        jmp     L887C                           ; 86A6 4C 7C 88                 L|.

; ----------------------------------------------------------------------------
        lda     OperMode                        ; 86A9 AD 70 07                 .p.
        beq     L86E1                           ; 86AC F0 33                    .3
        cmp     #$03                            ; 86AE C9 03                    ..
        beq     L86D4                           ; 86B0 F0 22                    ."
        lda     AltEntranceControl              ; 86B2 AD 52 07                 .R.
        bne     L86E1                           ; 86B5 D0 2A                    .*
        ldy     AreaType                        ; 86B7 AC 4E 07                 .N.
        cpy     #$03                            ; 86BA C0 03                    ..
        beq     L86C3                           ; 86BC F0 05                    ..
        lda     DisableIntermediate             ; 86BE AD 69 07                 .i.
        bne     L86E1                           ; 86C1 D0 1E                    ..
L86C3:
        jsr     LEFE9                           ; 86C3 20 E9 EF                  ..
        lda     #$01                            ; 86C6 A9 01                    ..
L86C8:
        jsr     L893F                           ; 86C8 20 3F 89                  ?.
        jsr     L89DC                           ; 86CB 20 DC 89                  ..
        lda     #$00                            ; 86CE A9 00                    ..
        sta     DisableScreenFlag               ; 86D0 8D 74 07                 .t.
        rts                                     ; 86D3 60                       `

; ----------------------------------------------------------------------------
L86D4:
        .byte   $A9,$12,$8D,$A0,$07,$A9,$03,$20 ; 86D4 A9 12 8D A0 07 A9 03 20  ....... 
        .byte   $3F,$89,$4C,$85,$88             ; 86DC 3F 89 4C 85 88           ?.L..
; ----------------------------------------------------------------------------
L86E1:
        lda     #$08                            ; 86E1 A9 08                    ..
        sta     ScreenRoutineTask               ; 86E3 8D 3C 07                 .<.
        rts                                     ; 86E6 60                       `

; ----------------------------------------------------------------------------
        inc     DisableScreenFlag               ; 86E7 EE 74 07                 .t.
L86EA:
        jsr     L9415                           ; 86EA 20 15 94                  ..
        lda     AreaParserTaskNum               ; 86ED AD 1F 07                 ...
        bne     L86EA                           ; 86F0 D0 F8                    ..
        dec     ColumnSets                      ; 86F2 CE 1E 07                 ...
        bpl     L86FA                           ; 86F5 10 03                    ..
        inc     ScreenRoutineTask               ; 86F7 EE 3C 07                 .<.
L86FA:
        lda     #$06                            ; 86FA A9 06                    ..
        sta     VRAM_Buffer_AddrCtrl            ; 86FC 8D 73 07                 .s.
        rts                                     ; 86FF 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8700 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8708 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8710 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8718 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8720 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8728 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8730 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8738 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8740 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8748 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8750 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8758 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8760 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8768 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8770 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8778 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8780 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8788 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8790 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8798 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87A0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87A8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87B0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87B8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87C0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87C8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87D0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87D8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87E0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87E8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87F0 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 87F8 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8800 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8808 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8810 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8818 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8820 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8828 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8830 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00                         ; 8838 00 00                    ..
; ----------------------------------------------------------------------------
        lda     OperMode                        ; 883A AD 70 07                 .p.
        bne     L8885                           ; 883D D0 46                    .F
        lda     #$B1                            ; 883F A9 B1                    ..
        sta     $03                             ; 8841 85 03                    ..
        lda     #$50                            ; 8843 A9 50                    .P
        sta     $02                             ; 8845 85 02                    ..
        lda     #$03                            ; 8847 A9 03                    ..
        sta     $01                             ; 8849 85 01                    ..
        ldy     #$00                            ; 884B A0 00                    ..
        sty     $00                             ; 884D 84 00                    ..
L884F:
        lda     ($02),y                         ; 884F B1 02                    ..
        sta     ($00),y                         ; 8851 91 00                    ..
        iny                                     ; 8853 C8                       .
        bne     L885A                           ; 8854 D0 04                    ..
        inc     $01                             ; 8856 E6 01                    ..
        inc     $03                             ; 8858 E6 03                    ..
L885A:
        lda     $01                             ; 885A A5 01                    ..
        cmp     #$04                            ; 885C C9 04                    ..
        bne     L884F                           ; 885E D0 EF                    ..
        cpy     #$9F                            ; 8860 C0 9F                    ..
        bcc     L884F                           ; 8862 90 EB                    ..
        lda     #$05                            ; 8864 A9 05                    ..
        jmp     L864D                           ; 8866 4C 4D 86                 LM.

; ----------------------------------------------------------------------------
        lda     OperMode                        ; 8869 AD 70 07                 .p.
        bne     L8885                           ; 886C D0 17                    ..
        ldx     #$00                            ; 886E A2 00                    ..
L8870:
        sta     VRAM_Buffer1_Offset,x           ; 8870 9D 00 03                 ...
        sta     SprObject_X_MoveForce,x         ; 8873 9D 00 04                 ...
        dex                                     ; 8876 CA                       .
        bne     L8870                           ; 8877 D0 F7                    ..
        jsr     L8325                           ; 8879 20 25 83                  %.
L887C:
        inc     ScreenRoutineTask               ; 887C EE 3C 07                 .<.
        rts                                     ; 887F 60                       `

; ----------------------------------------------------------------------------
        lda     #$FA                            ; 8880 A9 FA                    ..
        jsr     LAD12                           ; 8882 20 12 AD                  ..
L8885:
        inc     OperMode_Task                   ; 8885 EE 72 07                 .r.
        rts                                     ; 8888 60                       `

; ----------------------------------------------------------------------------
L8889:
        .byte   $20,$43,$05,$16,$0A,$1B,$12,$18 ; 8889 20 43 05 16 0A 1B 12 18   C......
        .byte   $20,$52,$0B,$20,$18,$1B,$15,$0D ; 8891 20 52 0B 20 18 1B 15 0D   R. ....
        .byte   $24,$24,$1D,$12,$16,$0E,$20,$68 ; 8899 24 24 1D 12 16 0E 20 68  $$.... h
        .byte   $05,$00,$24,$24,$2E,$29,$23,$C0 ; 88A1 05 00 24 24 2E 29 23 C0  ..$$.)#.
        .byte   $7F,$AA,$23,$C2,$01,$EA,$FF,$21 ; 88A9 7F AA 23 C2 01 EA FF 21  ..#....!
        .byte   $CD,$07,$24,$24,$29,$24,$24,$24 ; 88B1 CD 07 24 24 29 24 24 24  ..$$)$$$
        .byte   $24,$21,$4B,$09,$20,$18,$1B,$15 ; 88B9 24 21 4B 09 20 18 1B 15  $!K. ...
        .byte   $0D,$24,$24,$28,$24,$22,$0C,$47 ; 88C1 0D 24 24 28 24 22 0C 47  .$$($".G
        .byte   $24,$23,$DC,$01,$BA,$FF,$21,$CD ; 88C9 24 23 DC 01 BA FF 21 CD  $#....!.
        .byte   $05,$16,$0A,$1B,$12,$18,$22,$0C ; 88D1 05 16 0A 1B 12 18 22 0C  ......".
        .byte   $07,$1D,$12,$16,$0E,$24,$1E,$19 ; 88D9 07 1D 12 16 0E 24 1E 19  .....$..
        .byte   $FF,$21,$CD,$05,$16,$0A,$1B,$12 ; 88E1 FF 21 CD 05 16 0A 1B 12  .!......
        .byte   $18,$22,$0B,$09,$10,$0A,$16,$0E ; 88E9 18 22 0B 09 10 0A 16 0E  ."......
        .byte   $24,$18,$1F,$0E,$1B,$FF,$25,$84 ; 88F1 24 18 1F 0E 1B FF 25 84  $.....%.
        .byte   $15,$20,$0E,$15,$0C,$18,$16,$0E ; 88F9 15 20 0E 15 0C 18 16 0E  . ......
        .byte   $24,$1D,$18,$24,$20,$0A,$1B,$19 ; 8901 24 1D 18 24 20 0A 1B 19  $..$ ...
        .byte   $24,$23,$18,$17,$0E,$2B,$26,$25 ; 8909 24 23 18 17 0E 2B 26 25  $#...+&%
        .byte   $01,$24,$26,$2D,$01,$24,$26,$35 ; 8911 01 24 26 2D 01 24 26 35  .$&-.$&5
        .byte   $01,$24,$27,$D9,$46,$AA,$27,$E1 ; 8919 01 24 27 D9 46 AA 27 E1  .$'.F.'.
        .byte   $45,$AA,$FF,$15,$1E,$12,$10,$12 ; 8921 45 AA FF 15 1E 12 10 12  E.......
        .byte   $04,$03,$02,$00,$24,$05,$24,$00 ; 8929 04 03 02 00 24 05 24 00  ....$.$.
        .byte   $08,$07,$06,$00                 ; 8931 08 07 06 00              ....
L8935:
        .byte   $00,$00,$27,$27,$46,$4E,$59,$61 ; 8935 00 00 27 27 46 4E 59 61  ..''FNYa
        .byte   $6E,$6E                         ; 893D 6E 6E                    nn
; ----------------------------------------------------------------------------
L893F:
        pha                                     ; 893F 48                       H
        asl     a                               ; 8940 0A                       .
        tay                                     ; 8941 A8                       .
        cpy     #$04                            ; 8942 C0 04                    ..
        bcc     L8952                           ; 8944 90 0C                    ..
        cpy     #$08                            ; 8946 C0 08                    ..
        bcc     L894C                           ; 8948 90 02                    ..
        .byte   $A0,$08                         ; 894A A0 08                    ..
; ----------------------------------------------------------------------------
L894C:
        lda     NumberOfPlayers                 ; 894C AD 7A 07                 .z.
        bne     L8952                           ; 894F D0 01                    ..
        iny                                     ; 8951 C8                       .
L8952:
        ldx     L8935,y                         ; 8952 BE 35 89                 .5.
        ldy     #$00                            ; 8955 A0 00                    ..
L8957:
        lda     L8889,x                         ; 8957 BD 89 88                 ...
        cmp     #$FF                            ; 895A C9 FF                    ..
        beq     L8965                           ; 895C F0 07                    ..
        sta     VRAM_Buffer1,y                  ; 895E 99 01 03                 ...
        inx                                     ; 8961 E8                       .
        iny                                     ; 8962 C8                       .
        bne     L8957                           ; 8963 D0 F2                    ..
L8965:
        lda     #$00                            ; 8965 A9 00                    ..
        sta     VRAM_Buffer1,y                  ; 8967 99 01 03                 ...
        pla                                     ; 896A 68                       h
        tax                                     ; 896B AA                       .
        cmp     #$04                            ; 896C C9 04                    ..
        bcs     L89B9                           ; 896E B0 49                    .I
        dex                                     ; 8970 CA                       .
        bne     L8996                           ; 8971 D0 23                    .#
        lda     $075A                           ; 8973 AD 5A 07                 .Z.
        clc                                     ; 8976 18                       .
        adc     #$01                            ; 8977 69 01                    i.
        cmp     #$0A                            ; 8979 C9 0A                    ..
        bcc     L8984                           ; 897B 90 07                    ..
        .byte   $E9,$0A,$A0,$9F,$8C,$08,$03     ; 897D E9 0A A0 9F 8C 08 03     .......
; ----------------------------------------------------------------------------
L8984:
        sta     $0309                           ; 8984 8D 09 03                 ...
        ldy     WorldNumber                     ; 8987 AC 5F 07                 ._.
        iny                                     ; 898A C8                       .
        sty     $0314                           ; 898B 8C 14 03                 ...
        ldy     LevelNumber                     ; 898E AC 5C 07                 .\.
        iny                                     ; 8991 C8                       .
        sty     $0316                           ; 8992 8C 16 03                 ...
        rts                                     ; 8995 60                       `

; ----------------------------------------------------------------------------
L8996:
        lda     NumberOfPlayers                 ; 8996 AD 7A 07                 .z.
        beq     L89B8                           ; 8999 F0 1D                    ..
        .byte   $AD,$53,$07,$CA,$D0,$09,$AC,$70 ; 899B AD 53 07 CA D0 09 AC 70  .S.....p
        .byte   $07,$C0,$03,$F0,$02,$49,$01,$4A ; 89A3 07 C0 03 F0 02 49 01 4A  .....I.J
        .byte   $90,$0B,$A0,$04,$B9,$24,$89,$99 ; 89AB 90 0B A0 04 B9 24 89 99  .....$..
        .byte   $04,$03,$88,$10,$F7             ; 89B3 04 03 88 10 F7           .....
; ----------------------------------------------------------------------------
L89B8:
        rts                                     ; 89B8 60                       `

; ----------------------------------------------------------------------------
L89B9:
        .byte   $E9,$04,$0A,$0A,$AA,$A0,$00,$BD ; 89B9 E9 04 0A 0A AA A0 00 BD  ........
        .byte   $29,$89,$99,$1C,$03,$E8,$C8,$C8 ; 89C1 29 89 99 1C 03 E8 C8 C8  ).......
        .byte   $C8,$C8,$C0,$0C,$90,$F1,$A9,$2C ; 89C9 C8 C8 C0 0C 90 F1 A9 2C  .......,
        .byte   $4C,$40,$86                     ; 89D1 4C 40 86                 L@.
; ----------------------------------------------------------------------------
L89D4:
        lda     ScreenTimer                     ; 89D4 AD A0 07                 ...
        bne     L89E4                           ; 89D7 D0 0B                    ..
        jsr     L8220                           ; 89D9 20 20 82                   .
L89DC:
        lda     #$07                            ; 89DC A9 07                    ..
        sta     ScreenTimer                     ; 89DE 8D A0 07                 ...
        inc     ScreenRoutineTask               ; 89E1 EE 3C 07                 .<.
L89E4:
        rts                                     ; 89E4 60                       `

; ----------------------------------------------------------------------------
        lda     CurrentColumnPos                ; 89E5 AD 26 07                 .&.
        and     #$01                            ; 89E8 29 01                    ).
        sta     $05                             ; 89EA 85 05                    ..
        ldy     VRAM_Buffer2_Offset             ; 89EC AC 40 03                 .@.
        sty     $00                             ; 89EF 84 00                    ..
        lda     CurrentNTAddr_Low               ; 89F1 AD 21 07                 .!.
        sta     $0342,y                         ; 89F4 99 42 03                 .B.
        lda     CurrentNTAddr_High              ; 89F7 AD 20 07                 . .
        sta     VRAM_Buffer2,y                  ; 89FA 99 41 03                 .A.
        lda     #$9A                            ; 89FD A9 9A                    ..
        sta     $0343,y                         ; 89FF 99 43 03                 .C.
        lda     #$00                            ; 8A02 A9 00                    ..
        sta     $04                             ; 8A04 85 04                    ..
        tax                                     ; 8A06 AA                       .
L8A07:
        stx     $01                             ; 8A07 86 01                    ..
        lda     MetatileBuffer,x                ; 8A09 BD A1 06                 ...
        and     #$C0                            ; 8A0C 29 C0                    ).
        sta     $03                             ; 8A0E 85 03                    ..
        asl     a                               ; 8A10 0A                       .
        rol     a                               ; 8A11 2A                       *
        rol     a                               ; 8A12 2A                       *
        tay                                     ; 8A13 A8                       .
        lda     L8C3F,y                         ; 8A14 B9 3F 8C                 .?.
        sta     L0006                           ; 8A17 85 06                    ..
        lda     L8C43,y                         ; 8A19 B9 43 8C                 .C.
        sta     $07                             ; 8A1C 85 07                    ..
        lda     MetatileBuffer,x                ; 8A1E BD A1 06                 ...
        asl     a                               ; 8A21 0A                       .
        asl     a                               ; 8A22 0A                       .
        sta     $02                             ; 8A23 85 02                    ..
        lda     AreaParserTaskNum               ; 8A25 AD 1F 07                 ...
        and     #$01                            ; 8A28 29 01                    ).
        eor     #$01                            ; 8A2A 49 01                    I.
        asl     a                               ; 8A2C 0A                       .
        adc     $02                             ; 8A2D 65 02                    e.
        tay                                     ; 8A2F A8                       .
        ldx     $00                             ; 8A30 A6 00                    ..
        lda     (L0006),y                       ; 8A32 B1 06                    ..
        sta     $0344,x                         ; 8A34 9D 44 03                 .D.
        iny                                     ; 8A37 C8                       .
        lda     (L0006),y                       ; 8A38 B1 06                    ..
        sta     $0345,x                         ; 8A3A 9D 45 03                 .E.
        ldy     $04                             ; 8A3D A4 04                    ..
        lda     $05                             ; 8A3F A5 05                    ..
        bne     L8A51                           ; 8A41 D0 0E                    ..
        lda     $01                             ; 8A43 A5 01                    ..
        lsr     a                               ; 8A45 4A                       J
        bcs     L8A61                           ; 8A46 B0 19                    ..
        rol     $03                             ; 8A48 26 03                    &.
        rol     $03                             ; 8A4A 26 03                    &.
        rol     $03                             ; 8A4C 26 03                    &.
        jmp     L8A67                           ; 8A4E 4C 67 8A                 Lg.

; ----------------------------------------------------------------------------
L8A51:
        lda     $01                             ; 8A51 A5 01                    ..
        lsr     a                               ; 8A53 4A                       J
        bcs     L8A65                           ; 8A54 B0 0F                    ..
        lsr     $03                             ; 8A56 46 03                    F.
        lsr     $03                             ; 8A58 46 03                    F.
        lsr     $03                             ; 8A5A 46 03                    F.
        lsr     $03                             ; 8A5C 46 03                    F.
        jmp     L8A67                           ; 8A5E 4C 67 8A                 Lg.

; ----------------------------------------------------------------------------
L8A61:
        lsr     $03                             ; 8A61 46 03                    F.
        lsr     $03                             ; 8A63 46 03                    F.
L8A65:
        inc     $04                             ; 8A65 E6 04                    ..
L8A67:
        lda     AttributeBuffer,y               ; 8A67 B9 F9 03                 ...
        ora     $03                             ; 8A6A 05 03                    ..
        sta     AttributeBuffer,y               ; 8A6C 99 F9 03                 ...
        inc     $00                             ; 8A6F E6 00                    ..
        inc     $00                             ; 8A71 E6 00                    ..
        ldx     $01                             ; 8A73 A6 01                    ..
        inx                                     ; 8A75 E8                       .
        cpx     #$0D                            ; 8A76 E0 0D                    ..
        bcc     L8A07                           ; 8A78 90 8D                    ..
        ldy     $00                             ; 8A7A A4 00                    ..
        iny                                     ; 8A7C C8                       .
        iny                                     ; 8A7D C8                       .
        iny                                     ; 8A7E C8                       .
        lda     #$00                            ; 8A7F A9 00                    ..
        sta     VRAM_Buffer2,y                  ; 8A81 99 41 03                 .A.
        sty     VRAM_Buffer2_Offset             ; 8A84 8C 40 03                 .@.
        inc     CurrentNTAddr_Low               ; 8A87 EE 21 07                 .!.
        lda     CurrentNTAddr_Low               ; 8A8A AD 21 07                 .!.
        and     #$1F                            ; 8A8D 29 1F                    ).
        bne     L8A9E                           ; 8A8F D0 0D                    ..
        lda     #$80                            ; 8A91 A9 80                    ..
        sta     CurrentNTAddr_Low               ; 8A93 8D 21 07                 .!.
        lda     CurrentNTAddr_High              ; 8A96 AD 20 07                 . .
        eor     #$04                            ; 8A99 49 04                    I.
        sta     CurrentNTAddr_High              ; 8A9B 8D 20 07                 . .
L8A9E:
        jmp     L8AF4                           ; 8A9E 4C F4 8A                 L..

; ----------------------------------------------------------------------------
L8AA1:
        lda     CurrentNTAddr_Low               ; 8AA1 AD 21 07                 .!.
        and     #$1F                            ; 8AA4 29 1F                    ).
        sec                                     ; 8AA6 38                       8
        sbc     #$04                            ; 8AA7 E9 04                    ..
        and     #$1F                            ; 8AA9 29 1F                    ).
        sta     $01                             ; 8AAB 85 01                    ..
        lda     CurrentNTAddr_High              ; 8AAD AD 20 07                 . .
        bcs     L8AB4                           ; 8AB0 B0 02                    ..
        eor     #$04                            ; 8AB2 49 04                    I.
L8AB4:
        and     #$04                            ; 8AB4 29 04                    ).
        ora     #$23                            ; 8AB6 09 23                    .#
        sta     $00                             ; 8AB8 85 00                    ..
        lda     $01                             ; 8ABA A5 01                    ..
        lsr     a                               ; 8ABC 4A                       J
        lsr     a                               ; 8ABD 4A                       J
        adc     #$C0                            ; 8ABE 69 C0                    i.
        sta     $01                             ; 8AC0 85 01                    ..
        ldx     #$00                            ; 8AC2 A2 00                    ..
        ldy     VRAM_Buffer2_Offset             ; 8AC4 AC 40 03                 .@.
L8AC7:
        lda     $00                             ; 8AC7 A5 00                    ..
        sta     VRAM_Buffer2,y                  ; 8AC9 99 41 03                 .A.
        lda     $01                             ; 8ACC A5 01                    ..
        clc                                     ; 8ACE 18                       .
        adc     #$08                            ; 8ACF 69 08                    i.
        sta     $0342,y                         ; 8AD1 99 42 03                 .B.
        sta     $01                             ; 8AD4 85 01                    ..
        lda     AttributeBuffer,x               ; 8AD6 BD F9 03                 ...
        sta     $0344,y                         ; 8AD9 99 44 03                 .D.
        lda     #$01                            ; 8ADC A9 01                    ..
        sta     $0343,y                         ; 8ADE 99 43 03                 .C.
        lsr     a                               ; 8AE1 4A                       J
        sta     AttributeBuffer,x               ; 8AE2 9D F9 03                 ...
        iny                                     ; 8AE5 C8                       .
        iny                                     ; 8AE6 C8                       .
        iny                                     ; 8AE7 C8                       .
        iny                                     ; 8AE8 C8                       .
        inx                                     ; 8AE9 E8                       .
        cpx     #$07                            ; 8AEA E0 07                    ..
        bcc     L8AC7                           ; 8AEC 90 D9                    ..
        sta     VRAM_Buffer2,y                  ; 8AEE 99 41 03                 .A.
        sty     VRAM_Buffer2_Offset             ; 8AF1 8C 40 03                 .@.
L8AF4:
        lda     #$06                            ; 8AF4 A9 06                    ..
        sta     VRAM_Buffer_AddrCtrl            ; 8AF6 8D 73 07                 .s.
        rts                                     ; 8AF9 60                       `

; ----------------------------------------------------------------------------
L8AFA:
        .byte   $27,$27,$27,$17,$07,$17         ; 8AFA 27 27 27 17 07 17        '''...
L8B00:
        .byte   $3F,$0C,$04,$FF,$FF,$FF,$FF,$00 ; 8B00 3F 0C 04 FF FF FF FF 00  ?.......
L8B08:
        .byte   $0F,$07,$12,$0F,$0F,$07,$17,$0F ; 8B08 0F 07 12 0F 0F 07 17 0F  ........
        .byte   $0F,$07,$17,$1C,$0F,$07,$17,$00 ; 8B10 0F 07 17 1C 0F 07 17 00  ........
; ----------------------------------------------------------------------------
L8B18:
        lda     FrameCounter                    ; 8B18 A5 09                    ..
        and     #$07                            ; 8B1A 29 07                    ).
        bne     L8B6F                           ; 8B1C D0 51                    .Q
        ldx     VRAM_Buffer1_Offset             ; 8B1E AE 00 03                 ...
        cpx     #$31                            ; 8B21 E0 31                    .1
        bcs     L8B6F                           ; 8B23 B0 4A                    .J
        tay                                     ; 8B25 A8                       .
L8B26:
        lda     L8B00,y                         ; 8B26 B9 00 8B                 ...
        sta     VRAM_Buffer1,x                  ; 8B29 9D 01 03                 ...
        inx                                     ; 8B2C E8                       .
        iny                                     ; 8B2D C8                       .
        cpy     #$08                            ; 8B2E C0 08                    ..
        bcc     L8B26                           ; 8B30 90 F4                    ..
        ldx     VRAM_Buffer1_Offset             ; 8B32 AE 00 03                 ...
        lda     #$03                            ; 8B35 A9 03                    ..
        sta     $00                             ; 8B37 85 00                    ..
        lda     AreaType                        ; 8B39 AD 4E 07                 .N.
        asl     a                               ; 8B3C 0A                       .
        asl     a                               ; 8B3D 0A                       .
        tay                                     ; 8B3E A8                       .
L8B3F:
        lda     L8B08,y                         ; 8B3F B9 08 8B                 ...
        sta     $0304,x                         ; 8B42 9D 04 03                 ...
        iny                                     ; 8B45 C8                       .
        inx                                     ; 8B46 E8                       .
        dec     $00                             ; 8B47 C6 00                    ..
        bpl     L8B3F                           ; 8B49 10 F4                    ..
        ldx     VRAM_Buffer1_Offset             ; 8B4B AE 00 03                 ...
        ldy     ColorRotateOffset               ; 8B4E AC D4 06                 ...
        lda     L8AFA,y                         ; 8B51 B9 FA 8A                 ...
        sta     $0305,x                         ; 8B54 9D 05 03                 ...
        lda     VRAM_Buffer1_Offset             ; 8B57 AD 00 03                 ...
        clc                                     ; 8B5A 18                       .
        adc     #$07                            ; 8B5B 69 07                    i.
        sta     VRAM_Buffer1_Offset             ; 8B5D 8D 00 03                 ...
        inc     ColorRotateOffset               ; 8B60 EE D4 06                 ...
        lda     ColorRotateOffset               ; 8B63 AD D4 06                 ...
        cmp     #$06                            ; 8B66 C9 06                    ..
        bcc     L8B6F                           ; 8B68 90 05                    ..
        lda     #$00                            ; 8B6A A9 00                    ..
        sta     ColorRotateOffset               ; 8B6C 8D D4 06                 ...
L8B6F:
        rts                                     ; 8B6F 60                       `

; ----------------------------------------------------------------------------
L8B70:
        .byte   $45                             ; 8B70 45                       E
L8B71:
        .byte   $45                             ; 8B71 45                       E
L8B72:
        .byte   $47                             ; 8B72 47                       G
L8B73:
        .byte   $47,$47,$47,$47,$47,$57,$58,$59 ; 8B73 47 47 47 47 47 57 58 59  GGGGGWXY
        .byte   $5A,$24,$24,$24,$24,$26,$26,$26 ; 8B7B 5A 24 24 24 24 26 26 26  Z$$$$&&&
        .byte   $26                             ; 8B83 26                       &
; ----------------------------------------------------------------------------
L8B84:
        ldy     #$41                            ; 8B84 A0 41                    .A
        lda     #$03                            ; 8B86 A9 03                    ..
        ldx     AreaType                        ; 8B88 AE 4E 07                 .N.
        bne     L8B8F                           ; 8B8B D0 02                    ..
        lda     #$04                            ; 8B8D A9 04                    ..
L8B8F:
        jsr     L8BCE                           ; 8B8F 20 CE 8B                  ..
        lda     #$06                            ; 8B92 A9 06                    ..
        sta     VRAM_Buffer_AddrCtrl            ; 8B94 8D 73 07                 .s.
        rts                                     ; 8B97 60                       `

; ----------------------------------------------------------------------------
L8B98:
        jsr     L8BA4                           ; 8B98 20 A4 8B                  ..
        inc     Block_ResidualCounter           ; 8B9B EE F0 03                 ...
        dec     Block_RepFlag,x                 ; 8B9E DE EC 03                 ...
        rts                                     ; 8BA1 60                       `

; ----------------------------------------------------------------------------
L8BA2:
        lda     #$00                            ; 8BA2 A9 00                    ..
L8BA4:
        ldy     #$03                            ; 8BA4 A0 03                    ..
        cmp     #$00                            ; 8BA6 C9 00                    ..
        beq     L8BBE                           ; 8BA8 F0 14                    ..
        ldy     #$00                            ; 8BAA A0 00                    ..
        cmp     #$58                            ; 8BAC C9 58                    .X
        beq     L8BBE                           ; 8BAE F0 0E                    ..
        cmp     #$51                            ; 8BB0 C9 51                    .Q
        beq     L8BBE                           ; 8BB2 F0 0A                    ..
        iny                                     ; 8BB4 C8                       .
        cmp     #$5D                            ; 8BB5 C9 5D                    .]
        beq     L8BBE                           ; 8BB7 F0 05                    ..
        cmp     #$52                            ; 8BB9 C9 52                    .R
        beq     L8BBE                           ; 8BBB F0 01                    ..
        iny                                     ; 8BBD C8                       .
L8BBE:
        tya                                     ; 8BBE 98                       .
        ldy     VRAM_Buffer1_Offset             ; 8BBF AC 00 03                 ...
        iny                                     ; 8BC2 C8                       .
        jsr     L8BCE                           ; 8BC3 20 CE 8B                  ..
L8BC6:
        dey                                     ; 8BC6 88                       .
        tya                                     ; 8BC7 98                       .
        clc                                     ; 8BC8 18                       .
        adc     #$0A                            ; 8BC9 69 0A                    i.
        jmp     L8640                           ; 8BCB 4C 40 86                 L@.

; ----------------------------------------------------------------------------
L8BCE:
        stx     $00                             ; 8BCE 86 00                    ..
        sty     $01                             ; 8BD0 84 01                    ..
        asl     a                               ; 8BD2 0A                       .
        asl     a                               ; 8BD3 0A                       .
        tax                                     ; 8BD4 AA                       .
        ldy     #$20                            ; 8BD5 A0 20                    . 
        lda     L0006                           ; 8BD7 A5 06                    ..
        cmp     #$D0                            ; 8BD9 C9 D0                    ..
        bcc     L8BDF                           ; 8BDB 90 02                    ..
        ldy     #$24                            ; 8BDD A0 24                    .$
L8BDF:
        sty     $03                             ; 8BDF 84 03                    ..
        and     #$0F                            ; 8BE1 29 0F                    ).
        asl     a                               ; 8BE3 0A                       .
        sta     $04                             ; 8BE4 85 04                    ..
        lda     #$00                            ; 8BE6 A9 00                    ..
        sta     $05                             ; 8BE8 85 05                    ..
        lda     $02                             ; 8BEA A5 02                    ..
        clc                                     ; 8BEC 18                       .
        adc     #$20                            ; 8BED 69 20                    i 
        asl     a                               ; 8BEF 0A                       .
        rol     $05                             ; 8BF0 26 05                    &.
        asl     a                               ; 8BF2 0A                       .
        rol     $05                             ; 8BF3 26 05                    &.
        adc     $04                             ; 8BF5 65 04                    e.
        sta     $04                             ; 8BF7 85 04                    ..
        lda     $05                             ; 8BF9 A5 05                    ..
        adc     #$00                            ; 8BFB 69 00                    i.
        clc                                     ; 8BFD 18                       .
        adc     $03                             ; 8BFE 65 03                    e.
        sta     $05                             ; 8C00 85 05                    ..
        ldy     $01                             ; 8C02 A4 01                    ..
L8C04:
        lda     L8B70,x                         ; 8C04 BD 70 8B                 .p.
        sta     $0303,y                         ; 8C07 99 03 03                 ...
        lda     L8B71,x                         ; 8C0A BD 71 8B                 .q.
        sta     $0304,y                         ; 8C0D 99 04 03                 ...
        lda     L8B72,x                         ; 8C10 BD 72 8B                 .r.
        sta     $0308,y                         ; 8C13 99 08 03                 ...
        lda     L8B73,x                         ; 8C16 BD 73 8B                 .s.
        sta     $0309,y                         ; 8C19 99 09 03                 ...
        lda     $04                             ; 8C1C A5 04                    ..
        sta     VRAM_Buffer1,y                  ; 8C1E 99 01 03                 ...
        clc                                     ; 8C21 18                       .
        adc     #$20                            ; 8C22 69 20                    i 
        sta     $0306,y                         ; 8C24 99 06 03                 ...
        lda     $05                             ; 8C27 A5 05                    ..
        sta     VRAM_Buffer1_Offset,y           ; 8C29 99 00 03                 ...
        sta     $0305,y                         ; 8C2C 99 05 03                 ...
        lda     #$02                            ; 8C2F A9 02                    ..
        sta     $0302,y                         ; 8C31 99 02 03                 ...
        sta     $0307,y                         ; 8C34 99 07 03                 ...
        lda     #$00                            ; 8C37 A9 00                    ..
        sta     $030A,y                         ; 8C39 99 0A 03                 ...
        ldx     $00                             ; 8C3C A6 00                    ..
        rts                                     ; 8C3E 60                       `

; ----------------------------------------------------------------------------
L8C3F:
        .byte   $47,$EB,$A3,$CB                 ; 8C3F 47 EB A3 CB              G...
L8C43:
        .byte   $8C,$8C,$8D,$8D,$24,$24,$24,$24 ; 8C43 8C 8C 8D 8D 24 24 24 24  ....$$$$
        .byte   $27,$27,$27,$27,$24,$24,$24,$35 ; 8C4B 27 27 27 27 24 24 24 35  ''''$$$5
        .byte   $36,$25,$37,$25,$24,$38,$24,$24 ; 8C53 36 25 37 25 24 38 24 24  6%7%$8$$
        .byte   $24,$FB,$FB,$FA,$FA,$FA,$FF,$FA ; 8C5B 24 FB FB FA FA FA FF FA  $.......
        .byte   $24,$FC,$24,$FD,$FE,$FA,$24,$FE ; 8C63 24 FC 24 FD FE FA 24 FE  $.$...$.
        .byte   $FF,$FA,$FA,$FA,$FA,$FA,$FA,$FA ; 8C6B FF FA FA FA FA FA FA FA  ........
        .byte   $24,$C0,$24,$C0,$24,$7F,$7F,$24 ; 8C73 24 C0 24 C0 24 7F 7F 24  $.$.$..$
        .byte   $B8,$BA,$B9,$BB,$B8,$BC,$B9,$BD ; 8C7B B8 BA B9 BB B8 BC B9 BD  ........
        .byte   $BA,$BC,$BB,$BD,$60,$64,$61,$65 ; 8C83 BA BC BB BD 60 64 61 65  ....`dae
        .byte   $62,$66,$63,$67,$60,$64,$61,$65 ; 8C8B 62 66 63 67 60 64 61 65  bfcg`dae
        .byte   $62,$66,$63,$67,$68,$68,$69,$69 ; 8C93 62 66 63 67 68 68 69 69  bfcghhii
        .byte   $F9,$F9,$6A,$6A,$4B,$4C,$4D,$4E ; 8C9B F9 F9 6A 6A 4B 4C 4D 4E  ..jjKLMN
        .byte   $4D,$4F,$4D,$4F,$4D,$4E,$50,$51 ; 8CA3 4D 4F 4D 4F 4D 4E 50 51  MOMOMNPQ
        .byte   $6B,$70,$2C,$2D,$6C,$71,$6D,$72 ; 8CAB 6B 70 2C 2D 6C 71 6D 72  kp,-lqmr
        .byte   $6E,$73,$6F,$74,$86,$8A,$87,$8B ; 8CB3 6E 73 6F 74 86 8A 87 8B  nsot....
        .byte   $88,$8C,$88,$8C,$89,$8D,$69,$69 ; 8CBB 88 8C 88 8C 89 8D 69 69  ......ii
        .byte   $8E,$91,$8F,$92,$F9,$93,$F9,$93 ; 8CC3 8E 91 8F 92 F9 93 F9 93  ........
        .byte   $90,$94,$69,$69,$A4,$E9,$EA,$EB ; 8CCB 90 94 69 69 A4 E9 EA EB  ..ii....
        .byte   $24,$24,$24,$24,$24,$2F,$24,$3D ; 8CD3 24 24 24 24 24 2F 24 3D  $$$$$/$=
        .byte   $A2,$A2,$A3,$A3,$24,$24,$24,$24 ; 8CDB A2 A2 A3 A3 24 24 24 24  ....$$$$
        .byte   $F4,$F0,$F5,$F1,$F6,$F2,$F7,$F3 ; 8CE3 F4 F0 F5 F1 F6 F2 F7 F3  ........
        .byte   $A2,$A2,$A3,$A3,$99,$24,$99,$24 ; 8CEB A2 A2 A3 A3 99 24 99 24  .....$.$
        .byte   $24,$A2,$3E,$3F,$5B,$5C,$24,$A3 ; 8CF3 24 A2 3E 3F 5B 5C 24 A3  $.>?[\$.
        .byte   $24,$24,$24,$24,$9D,$47,$9E,$47 ; 8CFB 24 24 24 24 9D 47 9E 47  $$$$.G.G
        .byte   $47,$47,$27,$27,$47,$47,$47,$47 ; 8D03 47 47 27 27 47 47 47 47  GG''GGGG
        .byte   $27,$27,$47,$47,$A9,$47,$AA,$47 ; 8D0B 27 27 47 47 A9 47 AA 47  ''GG.G.G
        .byte   $9B,$27,$9C,$27,$27,$27,$27,$27 ; 8D13 9B 27 9C 27 27 27 27 27  .'.'''''
        .byte   $52,$52,$52,$52,$80,$A0,$81,$A1 ; 8D1B 52 52 52 52 80 A0 81 A1  RRRR....
        .byte   $BE,$BE,$BF,$BF,$75,$BA,$76,$BB ; 8D23 BE BE BF BF 75 BA 76 BB  ....u.v.
        .byte   $BA,$BA,$BB,$BB,$45,$47,$45,$47 ; 8D2B BA BA BB BB 45 47 45 47  ....EGEG
        .byte   $47,$47,$47,$47,$45,$47,$45,$47 ; 8D33 47 47 47 47 45 47 45 47  GGGGEGEG
        .byte   $B4,$B6,$B5,$B7,$45,$47,$45,$47 ; 8D3B B4 B6 B5 B7 45 47 45 47  ....EGEG
        .byte   $45,$47,$45,$47,$45,$47,$45,$47 ; 8D43 45 47 45 47 45 47 45 47  EGEGEGEG
        .byte   $45,$47,$45,$47,$45,$47,$45,$47 ; 8D4B 45 47 45 47 45 47 45 47  EGEGEGEG
        .byte   $47,$47,$47,$47,$47,$47,$47,$47 ; 8D53 47 47 47 47 47 47 47 47  GGGGGGGG
        .byte   $47,$47,$47,$47,$47,$47,$47,$47 ; 8D5B 47 47 47 47 47 47 47 47  GGGGGGGG
        .byte   $47,$47,$47,$47,$24,$24,$24,$24 ; 8D63 47 47 47 47 24 24 24 24  GGGG$$$$
        .byte   $24,$24,$24,$24,$AB,$AC,$AD,$AE ; 8D6B 24 24 24 24 AB AC AD AE  $$$$....
        .byte   $5D,$5E,$5D,$5E,$C1,$24,$C1,$24 ; 8D73 5D 5E 5D 5E C1 24 C1 24  ]^]^.$.$
        .byte   $C6,$C8,$C7,$C9,$CA,$CC,$CB,$CD ; 8D7B C6 C8 C7 C9 CA CC CB CD  ........
        .byte   $2A,$2A,$40,$40,$24,$24,$24,$24 ; 8D83 2A 2A 40 40 24 24 24 24  **@@$$$$
        .byte   $24,$47,$24,$47,$82,$83,$84,$85 ; 8D8B 24 47 24 47 82 83 84 85  $G$G....
        .byte   $24,$47,$24,$47,$86,$8A,$87,$8B ; 8D93 24 47 24 47 86 8A 87 8B  $G$G....
        .byte   $8E,$91,$8F,$92,$24,$2F,$24,$3D ; 8D9B 8E 91 8F 92 24 2F 24 3D  ....$/$=
        .byte   $24,$24,$24,$35,$36,$25,$37,$25 ; 8DA3 24 24 24 35 36 25 37 25  $$$56%7%
        .byte   $24,$38,$24,$24,$24,$24,$39,$24 ; 8DAB 24 38 24 24 24 24 39 24  $8$$$$9$
        .byte   $3A,$24,$3B,$24,$3C,$24,$24,$24 ; 8DB3 3A 24 3B 24 3C 24 24 24  :$;$<$$$
        .byte   $41,$26,$41,$26,$26,$26,$26,$26 ; 8DBB 41 26 41 26 26 26 26 26  A&A&&&&&
        .byte   $B0,$B1,$B2,$B3,$77,$79,$77,$79 ; 8DC3 B0 B1 B2 B3 77 79 77 79  ....wywy
        .byte   $53,$55,$54,$56,$53,$55,$54,$56 ; 8DCB 53 55 54 56 53 55 54 56  SUTVSUTV
        .byte   $A5,$A7,$A6,$A8,$C2,$C4,$C3,$C5 ; 8DD3 A5 A7 A6 A8 C2 C4 C3 C5  ........
        .byte   $53,$55,$54,$56,$24,$24,$24,$24 ; 8DDB 53 55 54 56 24 24 24 24  SUTV$$$$
        .byte   $24,$24,$24,$24,$57,$59,$58,$5A ; 8DE3 24 24 24 24 57 59 58 5A  $$$$WYXZ
        .byte   $7B,$7D,$7C,$7E,$3F,$00,$20,$0F ; 8DEB 7B 7D 7C 7E 3F 00 20 0F  {}|~?. .
        .byte   $24,$14,$0F,$0F,$3A,$1A,$0F,$0F ; 8DF3 24 14 0F 0F 3A 1A 0F 0F  $...:...
        .byte   $30,$12,$0F,$0F,$27,$12,$0F,$22 ; 8DFB 30 12 0F 0F 27 12 0F 22  0...'.."
        .byte   $16,$27,$18,$0F,$10,$30,$27,$0F ; 8E03 16 27 18 0F 10 30 27 0F  .'...0'.
        .byte   $16,$30,$27,$0F,$0F,$30,$10,$00 ; 8E0B 16 30 27 0F 0F 30 10 00  .0'..0..
        .byte   $3F,$00,$20,$0F,$29,$1A,$0F,$0F ; 8E13 3F 00 20 0F 29 1A 0F 0F  ?. .)...
        .byte   $36,$17,$0F,$0F,$30,$21,$0F,$0F ; 8E1B 36 17 0F 0F 30 21 0F 0F  6...0!..
        .byte   $27,$17,$0F,$0F,$16,$27,$18,$0F ; 8E23 27 17 0F 0F 16 27 18 0F  '....'..
        .byte   $1A,$30,$27,$0F,$16,$30,$27,$0F ; 8E2B 1A 30 27 0F 16 30 27 0F  .0'..0'.
        .byte   $0F,$36,$17,$00,$3F,$00,$20,$0F ; 8E33 0F 36 17 00 3F 00 20 0F  .6..?. .
        .byte   $29,$1A,$09,$0F,$3C,$1C,$0F,$0F ; 8E3B 29 1A 09 0F 3C 1C 0F 0F  )...<...
        .byte   $30,$21,$1C,$0F,$27,$17,$1C,$0F ; 8E43 30 21 1C 0F 27 17 1C 0F  0!..'...
        .byte   $16,$27,$18,$0F,$1C,$36,$17,$0F ; 8E4B 16 27 18 0F 1C 36 17 0F  .'...6..
        .byte   $16,$30,$27,$0F,$0C,$3C,$1C,$00 ; 8E53 16 30 27 0F 0C 3C 1C 00  .0'..<..
        .byte   $3F,$00,$20,$0F,$30,$10,$00,$0F ; 8E5B 3F 00 20 0F 30 10 00 0F  ?. .0...
        .byte   $30,$10,$00,$0F,$30,$16,$00,$0F ; 8E63 30 10 00 0F 30 16 00 0F  0...0...
        .byte   $27,$17,$00,$0F,$16,$27,$18,$0F ; 8E6B 27 17 00 0F 16 27 18 0F  '....'..
        .byte   $1C,$36,$17,$0F,$16,$30,$27,$0F ; 8E73 1C 36 17 0F 16 30 27 0F  .6...0'.
        .byte   $00,$30,$10,$00,$3F,$00,$04,$22 ; 8E7B 00 30 10 00 3F 00 04 22  .0..?.."
        .byte   $30,$00,$10,$00,$3F,$00,$04,$0F ; 8E83 30 00 10 00 3F 00 04 0F  0...?...
        .byte   $30,$00,$10,$00,$3F,$00,$04,$22 ; 8E8B 30 00 10 00 3F 00 04 22  0...?.."
        .byte   $27,$16,$0F,$00,$3F,$14,$04,$0F ; 8E93 27 16 0F 00 3F 14 04 0F  '...?...
        .byte   $1A,$30,$27,$00,$25,$48,$10,$1D ; 8E9B 1A 30 27 00 25 48 10 1D  .0'.%H..
        .byte   $11,$0A,$17,$14,$24,$22,$18,$1E ; 8EA3 11 0A 17 14 24 22 18 1E  ....$"..
        .byte   $24,$16,$0A,$1B,$12,$18,$2B,$00 ; 8EAB 24 16 0A 1B 12 18 2B 00  $.....+.
        .byte   $25,$48,$10,$1D,$11,$0A,$17,$14 ; 8EB3 25 48 10 1D 11 0A 17 14  %H......
        .byte   $24,$22,$18,$1E,$24,$15,$1E,$12 ; 8EBB 24 22 18 1E 24 15 1E 12  $"..$...
        .byte   $10,$12,$2B,$00,$25,$C5,$16,$0B ; 8EC3 10 12 2B 00 25 C5 16 0B  ..+.%...
        .byte   $1E,$1D,$24,$18,$1E,$1B,$24,$19 ; 8ECB 1E 1D 24 18 1E 1B 24 19  ..$...$.
        .byte   $1B,$12,$17,$0C,$0E,$1C,$1C,$24 ; 8ED3 1B 12 17 0C 0E 1C 1C 24  .......$
        .byte   $12,$1C,$24,$12,$17,$26,$05,$0F ; 8EDB 12 1C 24 12 17 26 05 0F  ..$..&..
        .byte   $0A,$17,$18,$1D,$11,$0E,$1B,$24 ; 8EE3 0A 17 18 1D 11 0E 1B 24  .......$
        .byte   $0C,$0A,$1C,$1D,$15,$0E,$2B,$00 ; 8EEB 0C 0A 1C 1D 15 0E 2B 00  ......+.
        .byte   $25,$A5,$17,$22,$18,$1E,$24,$0C ; 8EF3 25 A5 17 22 18 1E 24 0C  %.."..$.
        .byte   $15,$0E,$0A,$1B,$0E,$0D,$24,$0E ; 8EFB 15 0E 0A 1B 0E 0D 24 0E  ......$.
        .byte   $1F,$0E,$1B,$22,$24,$20,$18,$1B ; 8F03 1F 0E 1B 22 24 20 18 1B  ..."$ ..
        .byte   $15,$0D,$00,$25,$E3,$1B,$22,$18 ; 8F0B 15 0D 00 25 E3 1B 22 18  ...%..".
        .byte   $1E,$24,$0A,$1B,$0E,$24,$1D,$11 ; 8F13 1E 24 0A 1B 0E 24 1D 11  .$...$..
        .byte   $0E,$24,$10,$1B,$0E,$0A,$1D,$0E ; 8F1B 0E 24 10 1B 0E 0A 1D 0E  .$......
        .byte   $1C,$1D,$24,$19,$15,$0A,$22,$0E ; 8F23 1C 1D 24 19 15 0A 22 0E  ..$...".
        .byte   $1B,$00,$26,$43,$1B,$24,$24,$24 ; 8F2B 1B 00 26 43 1B 24 24 24  ..&C.$$$
        .byte   $24,$22,$18,$1E,$1B,$24,$1A,$1E ; 8F33 24 22 18 1E 1B 24 1A 1E  $"...$..
        .byte   $0E,$1C,$1D,$24,$12,$1C,$24,$18 ; 8F3B 0E 1C 1D 24 12 1C 24 18  ...$..$.
        .byte   $1F,$0E,$1B,$24,$24,$24,$24,$24 ; 8F43 1F 0E 1B 24 24 24 24 24  ...$$$$$
        .byte   $00,$26,$84,$19,$24,$24,$24,$24 ; 8F4B 00 26 84 19 24 24 24 24  .&..$$$$
        .byte   $0C,$18,$17,$10,$1B,$0A,$1D,$1E ; 8F53 0C 18 17 10 1B 0A 1D 1E  ........
        .byte   $15,$0A,$1D,$12,$18,$17,$1C,$2B ; 8F5B 15 0A 1D 12 18 17 1C 2B  .......+
        .byte   $24,$24,$24,$24,$24,$00         ; 8F63 24 24 24 24 24 00        $$$$$.
; ----------------------------------------------------------------------------
L8F69:
        asl     a                               ; 8F69 0A                       .
        tay                                     ; 8F6A A8                       .
        pla                                     ; 8F6B 68                       h
        sta     $04                             ; 8F6C 85 04                    ..
        pla                                     ; 8F6E 68                       h
        sta     $05                             ; 8F6F 85 05                    ..
        iny                                     ; 8F71 C8                       .
        lda     ($04),y                         ; 8F72 B1 04                    ..
        sta     L0006                           ; 8F74 85 06                    ..
        iny                                     ; 8F76 C8                       .
        lda     ($04),y                         ; 8F77 B1 04                    ..
        sta     $07                             ; 8F79 85 07                    ..
        jmp     (L0006)                         ; 8F7B 6C 06 00                 l..

; ----------------------------------------------------------------------------
L8F7E:
        lda     PPU_STATUS                      ; 8F7E AD 02 20                 .. 
        lda     Mirror_PPU_CTRL_REG1            ; 8F81 AD 78 07                 .x.
        ora     #$10                            ; 8F84 09 10                    ..
        and     #$F0                            ; 8F86 29 F0                    ).
        jsr     L9052                           ; 8F88 20 52 90                  R.
        lda     #$24                            ; 8F8B A9 24                    .$
        jsr     L8F92                           ; 8F8D 20 92 8F                  ..
        lda     #$20                            ; 8F90 A9 20                    . 
L8F92:
        sta     PPU_ADDRESS                     ; 8F92 8D 06 20                 .. 
        lda     #$00                            ; 8F95 A9 00                    ..
        sta     PPU_ADDRESS                     ; 8F97 8D 06 20                 .. 
        ldx     #$04                            ; 8F9A A2 04                    ..
        ldy     #$C0                            ; 8F9C A0 C0                    ..
        lda     #$24                            ; 8F9E A9 24                    .$
L8FA0:
        sta     PPU_DATA                        ; 8FA0 8D 07 20                 .. 
        dey                                     ; 8FA3 88                       .
        bne     L8FA0                           ; 8FA4 D0 FA                    ..
        dex                                     ; 8FA6 CA                       .
        bne     L8FA0                           ; 8FA7 D0 F7                    ..
        ldy     #$40                            ; 8FA9 A0 40                    .@
        txa                                     ; 8FAB 8A                       .
        sta     VRAM_Buffer1_Offset             ; 8FAC 8D 00 03                 ...
        sta     VRAM_Buffer1                    ; 8FAF 8D 01 03                 ...
L8FB2:
        sta     PPU_DATA                        ; 8FB2 8D 07 20                 .. 
        dey                                     ; 8FB5 88                       .
        bne     L8FB2                           ; 8FB6 D0 FA                    ..
        sta     HorizontalScroll                ; 8FB8 8D 3F 07                 .?.
        sta     VerticalScroll                  ; 8FBB 8D 40 07                 .@.
        jmp     L904B                           ; 8FBE 4C 4B 90                 LK.

; ----------------------------------------------------------------------------
L8FC1:
        lda     #$01                            ; 8FC1 A9 01                    ..
        sta     JOYPAD_PORT1                    ; 8FC3 8D 16 40                 ..@
        lsr     a                               ; 8FC6 4A                       J
        tax                                     ; 8FC7 AA                       .
        sta     JOYPAD_PORT1                    ; 8FC8 8D 16 40                 ..@
        jsr     L8FCF                           ; 8FCB 20 CF 8F                  ..
        inx                                     ; 8FCE E8                       .
L8FCF:
        ldy     #$08                            ; 8FCF A0 08                    ..
L8FD1:
        pha                                     ; 8FD1 48                       H
        lda     JOYPAD_PORT1,x                  ; 8FD2 BD 16 40                 ..@
        sta     $00                             ; 8FD5 85 00                    ..
        lsr     a                               ; 8FD7 4A                       J
        ora     $00                             ; 8FD8 05 00                    ..
        lsr     a                               ; 8FDA 4A                       J
        pla                                     ; 8FDB 68                       h
        rol     a                               ; 8FDC 2A                       *
        dey                                     ; 8FDD 88                       .
        bne     L8FD1                           ; 8FDE D0 F1                    ..
        sta     SavedJoypad1Bits,x              ; 8FE0 9D FC 06                 ...
        pha                                     ; 8FE3 48                       H
        and     #$30                            ; 8FE4 29 30                    )0
        and     JoypadBitMask,x                 ; 8FE6 3D 4A 07                 =J.
        beq     L8FF2                           ; 8FE9 F0 07                    ..
        pla                                     ; 8FEB 68                       h
        and     #$CF                            ; 8FEC 29 CF                    ).
        sta     SavedJoypad1Bits,x              ; 8FEE 9D FC 06                 ...
        rts                                     ; 8FF1 60                       `

; ----------------------------------------------------------------------------
L8FF2:
        pla                                     ; 8FF2 68                       h
        sta     JoypadBitMask,x                 ; 8FF3 9D 4A 07                 .J.
        rts                                     ; 8FF6 60                       `

; ----------------------------------------------------------------------------
L8FF7:
        sta     PPU_ADDRESS                     ; 8FF7 8D 06 20                 .. 
        iny                                     ; 8FFA C8                       .
        lda     ($00),y                         ; 8FFB B1 00                    ..
        sta     PPU_ADDRESS                     ; 8FFD 8D 06 20                 .. 
        iny                                     ; 9000 C8                       .
        lda     ($00),y                         ; 9001 B1 00                    ..
        asl     a                               ; 9003 0A                       .
        pha                                     ; 9004 48                       H
        lda     Mirror_PPU_CTRL_REG1            ; 9005 AD 78 07                 .x.
        ora     #$04                            ; 9008 09 04                    ..
        bcs     L900E                           ; 900A B0 02                    ..
        and     #$FB                            ; 900C 29 FB                    ).
L900E:
        jsr     L9052                           ; 900E 20 52 90                  R.
        pla                                     ; 9011 68                       h
        asl     a                               ; 9012 0A                       .
        bcc     L9018                           ; 9013 90 03                    ..
        ora     #$02                            ; 9015 09 02                    ..
        iny                                     ; 9017 C8                       .
L9018:
        lsr     a                               ; 9018 4A                       J
        lsr     a                               ; 9019 4A                       J
        tax                                     ; 901A AA                       .
L901B:
        bcs     L901E                           ; 901B B0 01                    ..
        iny                                     ; 901D C8                       .
L901E:
        lda     ($00),y                         ; 901E B1 00                    ..
        sta     PPU_DATA                        ; 9020 8D 07 20                 .. 
        dex                                     ; 9023 CA                       .
        bne     L901B                           ; 9024 D0 F5                    ..
        sec                                     ; 9026 38                       8
        tya                                     ; 9027 98                       .
        adc     $00                             ; 9028 65 00                    e.
        sta     $00                             ; 902A 85 00                    ..
        lda     #$00                            ; 902C A9 00                    ..
        adc     $01                             ; 902E 65 01                    e.
        sta     $01                             ; 9030 85 01                    ..
        lda     #$3F                            ; 9032 A9 3F                    .?
        sta     PPU_ADDRESS                     ; 9034 8D 06 20                 .. 
        lda     #$90                            ; 9037 A9 90                    ..
        sta     PPU_ADDRESS                     ; 9039 8D 06 20                 .. 
        sta     PPU_ADDRESS                     ; 903C 8D 06 20                 .. 
        sta     PPU_ADDRESS                     ; 903F 8D 06 20                 .. 
L9042:
        ldx     PPU_STATUS                      ; 9042 AE 02 20                 .. 
        ldy     #$00                            ; 9045 A0 00                    ..
        lda     ($00),y                         ; 9047 B1 00                    ..
        bne     L8FF7                           ; 9049 D0 AC                    ..
L904B:
        sta     PPU_SCROLL_REG                  ; 904B 8D 05 20                 .. 
        sta     PPU_SCROLL_REG                  ; 904E 8D 05 20                 .. 
        rts                                     ; 9051 60                       `

; ----------------------------------------------------------------------------
L9052:
        sta     PPU_CTRL_REG1                   ; 9052 8D 00 20                 .. 
        sta     Mirror_PPU_CTRL_REG1            ; 9055 8D 78 07                 .x.
        rts                                     ; 9058 60                       `

; ----------------------------------------------------------------------------
L9059:
        .byte   $F0                             ; 9059 F0                       .
L905A:
        .byte   $06,$62,$06,$62,$06,$6D,$02,$6D ; 905A 06 62 06 62 06 6D 02 6D  .b.b.m.m
        .byte   $02,$7A,$03                     ; 9062 02 7A 03                 .z.
L9065:
        .byte   $06,$0C,$12,$18,$1E,$24         ; 9065 06 0C 12 18 1E 24        .....$
; ----------------------------------------------------------------------------
L906B:
        sta     $00                             ; 906B 85 00                    ..
        jsr     L9076                           ; 906D 20 76 90                  v.
        lda     $00                             ; 9070 A5 00                    ..
        lsr     a                               ; 9072 4A                       J
        lsr     a                               ; 9073 4A                       J
        lsr     a                               ; 9074 4A                       J
        lsr     a                               ; 9075 4A                       J
L9076:
        clc                                     ; 9076 18                       .
        adc     #$01                            ; 9077 69 01                    i.
        and     #$0F                            ; 9079 29 0F                    ).
        cmp     #$06                            ; 907B C9 06                    ..
        bcs     L90C3                           ; 907D B0 44                    .D
        pha                                     ; 907F 48                       H
        asl     a                               ; 9080 0A                       .
        tay                                     ; 9081 A8                       .
        ldx     VRAM_Buffer1_Offset             ; 9082 AE 00 03                 ...
        lda     #$20                            ; 9085 A9 20                    . 
        cpy     #$00                            ; 9087 C0 00                    ..
        bne     L908D                           ; 9089 D0 02                    ..
        lda     #$22                            ; 908B A9 22                    ."
L908D:
        sta     VRAM_Buffer1,x                  ; 908D 9D 01 03                 ...
        lda     L9059,y                         ; 9090 B9 59 90                 .Y.
        sta     $0302,x                         ; 9093 9D 02 03                 ...
        lda     L905A,y                         ; 9096 B9 5A 90                 .Z.
        sta     $0303,x                         ; 9099 9D 03 03                 ...
        sta     $03                             ; 909C 85 03                    ..
        stx     $02                             ; 909E 86 02                    ..
        pla                                     ; 90A0 68                       h
        tax                                     ; 90A1 AA                       .
        lda     L9065,x                         ; 90A2 BD 65 90                 .e.
        sec                                     ; 90A5 38                       8
        sbc     L905A,y                         ; 90A6 F9 5A 90                 .Z.
        tay                                     ; 90A9 A8                       .
        ldx     $02                             ; 90AA A6 02                    ..
L90AC:
        lda     TopScoreDisplay,y               ; 90AC B9 D7 07                 ...
        sta     $0304,x                         ; 90AF 9D 04 03                 ...
        inx                                     ; 90B2 E8                       .
        iny                                     ; 90B3 C8                       .
        dec     $03                             ; 90B4 C6 03                    ..
        bne     L90AC                           ; 90B6 D0 F4                    ..
        lda     #$00                            ; 90B8 A9 00                    ..
        sta     $0304,x                         ; 90BA 9D 04 03                 ...
        inx                                     ; 90BD E8                       .
        inx                                     ; 90BE E8                       .
        inx                                     ; 90BF E8                       .
        stx     VRAM_Buffer1_Offset             ; 90C0 8E 00 03                 ...
L90C3:
        rts                                     ; 90C3 60                       `

; ----------------------------------------------------------------------------
L90C4:
        lda     OperMode                        ; 90C4 AD 70 07                 .p.
        cmp     #$00                            ; 90C7 C9 00                    ..
        beq     L90E1                           ; 90C9 F0 16                    ..
        ldx     #$05                            ; 90CB A2 05                    ..
L90CD:
        lda     DigitModifier,x                 ; 90CD BD 34 01                 .4.
        clc                                     ; 90D0 18                       .
        adc     TopScoreDisplay,y               ; 90D1 79 D7 07                 y..
        bmi     L90EC                           ; 90D4 30 16                    0.
        cmp     #$0A                            ; 90D6 C9 0A                    ..
        bcs     L90F3                           ; 90D8 B0 19                    ..
L90DA:
        sta     TopScoreDisplay,y               ; 90DA 99 D7 07                 ...
        dey                                     ; 90DD 88                       .
        dex                                     ; 90DE CA                       .
        bpl     L90CD                           ; 90DF 10 EC                    ..
L90E1:
        lda     #$00                            ; 90E1 A9 00                    ..
        ldx     #$06                            ; 90E3 A2 06                    ..
L90E5:
        sta     $0133,x                         ; 90E5 9D 33 01                 .3.
        dex                                     ; 90E8 CA                       .
        bpl     L90E5                           ; 90E9 10 FA                    ..
        rts                                     ; 90EB 60                       `

; ----------------------------------------------------------------------------
L90EC:
        dec     $0133,x                         ; 90EC DE 33 01                 .3.
        lda     #$09                            ; 90EF A9 09                    ..
        bne     L90DA                           ; 90F1 D0 E7                    ..
L90F3:
        sec                                     ; 90F3 38                       8
        sbc     #$0A                            ; 90F4 E9 0A                    ..
        inc     $0133,x                         ; 90F6 FE 33 01                 .3.
        jmp     L90DA                           ; 90F9 4C DA 90                 L..

; ----------------------------------------------------------------------------
L90FC:
        ldx     #$05                            ; 90FC A2 05                    ..
        jsr     L9103                           ; 90FE 20 03 91                  ..
        ldx     #$0B                            ; 9101 A2 0B                    ..
L9103:
        ldy     #$05                            ; 9103 A0 05                    ..
        sec                                     ; 9105 38                       8
L9106:
        lda     PlayerScoreDisplay,x            ; 9106 BD DD 07                 ...
        sbc     TopScoreDisplay,y               ; 9109 F9 D7 07                 ...
        dex                                     ; 910C CA                       .
        dey                                     ; 910D 88                       .
        bpl     L9106                           ; 910E 10 F6                    ..
        bcc     L9120                           ; 9110 90 0E                    ..
        inx                                     ; 9112 E8                       .
        iny                                     ; 9113 C8                       .
L9114:
        lda     PlayerScoreDisplay,x            ; 9114 BD DD 07                 ...
        sta     TopScoreDisplay,y               ; 9117 99 D7 07                 ...
        inx                                     ; 911A E8                       .
        iny                                     ; 911B C8                       .
        cpy     #$06                            ; 911C C0 06                    ..
        bcc     L9114                           ; 911E 90 F4                    ..
L9120:
        rts                                     ; 9120 60                       `

; ----------------------------------------------------------------------------
L9121:
        .byte   $04,$30,$48,$60,$78,$90,$A8,$C0 ; 9121 04 30 48 60 78 90 A8 C0  .0H`x...
        .byte   $D8,$E8,$24,$F8,$FC,$28,$2C     ; 9129 D8 E8 24 F8 FC 28 2C     ..$..(,
L9130:
        .byte   $18,$FF,$23,$58                 ; 9130 18 FF 23 58              ..#X
; ----------------------------------------------------------------------------
        ldy     #$6F                            ; 9134 A0 6F                    .o
        jsr     L9231                           ; 9136 20 31 92                  1.
        ldy     #$1F                            ; 9139 A0 1F                    ..
L913B:
        sta     MusicOffset_Noise,y             ; 913B 99 B0 07                 ...
        dey                                     ; 913E 88                       .
        bpl     L913B                           ; 913F 10 FA                    ..
        lda     #$18                            ; 9141 A9 18                    ..
        sta     DemoTimer                       ; 9143 8D A2 07                 ...
        jsr     L9DF5                           ; 9146 20 F5 9D                  ..
        ldy     #$4B                            ; 9149 A0 4B                    .K
        jsr     L9231                           ; 914B 20 31 92                  1.
        ldx     #$21                            ; 914E A2 21                    .!
        lda     #$00                            ; 9150 A9 00                    ..
L9152:
        sta     SelectTimer,x                   ; 9152 9D 80 07                 ...
        dex                                     ; 9155 CA                       .
        bpl     L9152                           ; 9156 10 FA                    ..
        lda     HalfwayPage                     ; 9158 AD 5B 07                 .[.
        ldy     AltEntranceControl              ; 915B AC 52 07                 .R.
        beq     L9163                           ; 915E F0 03                    ..
        lda     EntrancePage                    ; 9160 AD 51 07                 .Q.
L9163:
        sta     ScreenEdge_PageLoc              ; 9163 8D 1A 07                 ...
        sta     CurrentPageLoc                  ; 9166 8D 25 07                 .%.
        sta     BackloadingFlag                 ; 9169 8D 28 07                 .(.
        jsr     LA10F                           ; 916C 20 0F A1                  ..
        ldy     #$20                            ; 916F A0 20                    . 
        and     #$01                            ; 9171 29 01                    ).
        beq     L9177                           ; 9173 F0 02                    ..
        .byte   $A0,$24                         ; 9175 A0 24                    .$
; ----------------------------------------------------------------------------
L9177:
        sty     CurrentNTAddr_High              ; 9177 8C 20 07                 . .
        ldy     #$80                            ; 917A A0 80                    ..
        sty     CurrentNTAddr_Low               ; 917C 8C 21 07                 .!.
        asl     a                               ; 917F 0A                       .
        asl     a                               ; 9180 0A                       .
        asl     a                               ; 9181 0A                       .
        asl     a                               ; 9182 0A                       .
        sta     BlockBufferColumnPos            ; 9183 8D A0 06                 ...
        dec     AreaObjectLength                ; 9186 CE 30 07                 .0.
        dec     $0731                           ; 9189 CE 31 07                 .1.
        dec     $0732                           ; 918C CE 32 07                 .2.
        lda     #$0B                            ; 918F A9 0B                    ..
        sta     ColumnSets                      ; 9191 8D 1E 07                 ...
        jsr     L9E14                           ; 9194 20 14 9E                  ..
        lda     PrimaryHardMode                 ; 9197 AD 6A 07                 .j.
        bne     L91AC                           ; 919A D0 10                    ..
        lda     WorldNumber                     ; 919C AD 5F 07                 ._.
        cmp     #$04                            ; 919F C9 04                    ..
        bcc     L91AF                           ; 91A1 90 0C                    ..
        .byte   $D0,$07,$AD,$5C,$07,$C9,$02,$90 ; 91A3 D0 07 AD 5C 07 C9 02 90  ...\....
        .byte   $03                             ; 91AB 03                       .
L91AC:
        .byte   $EE,$CC,$06                     ; 91AC EE CC 06                 ...
; ----------------------------------------------------------------------------
L91AF:
        lda     HalfwayPage                     ; 91AF AD 5B 07                 .[.
        beq     L91B9                           ; 91B2 F0 05                    ..
        .byte   $A9,$02,$8D,$10,$07             ; 91B4 A9 02 8D 10 07           .....
; ----------------------------------------------------------------------------
L91B9:
        lda     #$80                            ; 91B9 A9 80                    ..
        sta     AreaMusicQueue                  ; 91BB 85 FB                    ..
        lda     #$01                            ; 91BD A9 01                    ..
        sta     DisableScreenFlag               ; 91BF 8D 74 07                 .t.
        inc     OperMode_Task                   ; 91C2 EE 72 07                 .r.
        rts                                     ; 91C5 60                       `

; ----------------------------------------------------------------------------
        lda     #$01                            ; 91C6 A9 01                    ..
        sta     FetchNewGameTimerFlag           ; 91C8 8D 57 07                 .W.
        sta     PlayerSize                      ; 91CB 8D 54 07                 .T.
        lda     #$02                            ; 91CE A9 02                    ..
        sta     $075A                           ; 91D0 8D 5A 07                 .Z.
        sta     OffScr_NumberofLives            ; 91D3 8D 61 07                 .a.
        lda     #$00                            ; 91D6 A9 00                    ..
        sta     DisableScreenFlag               ; 91D8 8D 74 07                 .t.
        tay                                     ; 91DB A8                       .
L91DC:
        sta     VRAM_Buffer1_Offset,y           ; 91DC 99 00 03                 ...
        iny                                     ; 91DF C8                       .
        bne     L91DC                           ; 91E0 D0 FA                    ..
        sta     GameTimerExpiredFlag            ; 91E2 8D 59 07                 .Y.
        sta     DisableIntermediate             ; 91E5 8D 69 07                 .i.
        sta     BackloadingFlag                 ; 91E8 8D 28 07                 .(.
        lda     #$FF                            ; 91EB A9 FF                    ..
        sta     BalPlatformAlignment            ; 91ED 8D A0 03                 ...
        lda     ScreenEdge_PageLoc              ; 91F0 AD 1A 07                 ...
        lsr     Mirror_PPU_CTRL_REG1            ; 91F3 4E 78 07                 Nx.
        and     #$01                            ; 91F6 29 01                    ).
        ror     a                               ; 91F8 6A                       j
        rol     Mirror_PPU_CTRL_REG1            ; 91F9 2E 78 07                 .x.
        jsr     L9252                           ; 91FC 20 52 92                  R.
        lda     #$38                            ; 91FF A9 38                    .8
        sta     $06E3                           ; 9201 8D E3 06                 ...
        lda     #$48                            ; 9204 A9 48                    .H
        sta     $06E2                           ; 9206 8D E2 06                 ...
        lda     #$58                            ; 9209 A9 58                    .X
        sta     SprShuffleAmt                   ; 920B 8D E1 06                 ...
        ldx     #$0E                            ; 920E A2 0E                    ..
L9210:
        lda     L9121,x                         ; 9210 BD 21 91                 .!.
        sta     Player_SprDataOffset,x          ; 9213 9D E4 06                 ...
        dex                                     ; 9216 CA                       .
        bpl     L9210                           ; 9217 10 F7                    ..
        ldy     #$03                            ; 9219 A0 03                    ..
L921B:
        lda     L9130,y                         ; 921B B9 30 91                 .0.
        sta     Sprite_Y_Position,y             ; 921E 99 00 02                 ...
        dey                                     ; 9221 88                       .
        bpl     L921B                           ; 9222 10 F7                    ..
        jsr     L9414                           ; 9224 20 14 94                  ..
        jsr BANK_PractiseEnterStage
        ;jsr     L940F                           ; 9227 20 0F 94                  ..
        inc     Sprite0HitDetectFlag            ; 922A EE 22 07                 .".
        inc     OperMode_Task                   ; 922D EE 72 07                 .r.
        rts                                     ; 9230 60                       `

; ----------------------------------------------------------------------------
L9231:
        ldx     #$07                            ; 9231 A2 07                    ..
        lda     #$00                            ; 9233 A9 00                    ..
        sta     L0006                           ; 9235 85 06                    ..
L9237:
        stx     $07                             ; 9237 86 07                    ..
L9239:
        cpx     #$01                            ; 9239 E0 01                    ..
        bne     L9241                           ; 923B D0 04                    ..
        cpy     #$60                            ; 923D C0 60                    .`
        bcs     L9243                           ; 923F B0 02                    ..
L9241:
        sta     (L0006),y                       ; 9241 91 06                    ..
L9243:
        dey                                     ; 9243 88                       .
        cpy     #$FF                            ; 9244 C0 FF                    ..
        bne     L9239                           ; 9246 D0 F1                    ..
        dex                                     ; 9248 CA                       .
        bpl     L9237                           ; 9249 10 EC                    ..
        rts                                     ; 924B 60                       `

; ----------------------------------------------------------------------------
L924C:
        .byte   $02,$01,$04,$08,$10,$01         ; 924C 02 01 04 08 10 01        ......
; ----------------------------------------------------------------------------
L9252:
        lda     OperMode                        ; 9252 AD 70 07                 .p.
        beq     L927A                           ; 9255 F0 23                    .#
        lda     AltEntranceControl              ; 9257 AD 52 07                 .R.
        cmp     #$02                            ; 925A C9 02                    ..
        beq     L926B                           ; 925C F0 0D                    ..
        ldy     #$05                            ; 925E A0 05                    ..
        lda     PlayerEntranceCtrl              ; 9260 AD 10 07                 ...
        cmp     #$06                            ; 9263 C9 06                    ..
        beq     L9275                           ; 9265 F0 0E                    ..
        cmp     #$07                            ; 9267 C9 07                    ..
        beq     L9275                           ; 9269 F0 0A                    ..
L926B:
        ldy     AreaType                        ; 926B AC 4E 07                 .N.
        lda     CloudTypeOverride               ; 926E AD 43 07                 .C.
        beq     L9275                           ; 9271 F0 02                    ..
        .byte   $A0,$04                         ; 9273 A0 04                    ..
; ----------------------------------------------------------------------------
L9275:
        lda     L924C,y                         ; 9275 B9 4C 92                 .L.
        sta     AreaMusicQueue                  ; 9278 85 FB                    ..
L927A:
        rts                                     ; 927A 60                       `

; ----------------------------------------------------------------------------
L927B:
        .byte   $28,$18                         ; 927B 28 18                    (.
L927D:
        .byte   $38,$28,$08,$00                 ; 927D 38 28 08 00              8(..
L9281:
        .byte   $00,$20,$B0,$50,$00,$00,$B0,$B0 ; 9281 00 20 B0 50 00 00 B0 B0  . .P....
        .byte   $F0                             ; 9289 F0                       .
L928A:
        .byte   $00,$20,$00,$00,$00,$00,$00,$00 ; 928A 00 20 00 00 00 00 00 00  . ......
L9292:
        .byte   $20,$04,$03,$02                 ; 9292 20 04 03 02               ...
; ----------------------------------------------------------------------------
        lda     ScreenEdge_PageLoc              ; 9296 AD 1A 07                 ...
        sta     SprObject_PageLoc               ; 9299 85 6D                    .m
        lda     #$28                            ; 929B A9 28                    .(
        sta     VerticalForceDown               ; 929D 8D 0A 07                 ...
        lda     #$01                            ; 92A0 A9 01                    ..
        sta     PlayerFacingDir                 ; 92A2 85 33                    .3
        sta     SprObject_Y_HighPos             ; 92A4 85 B5                    ..
        lda     #$00                            ; 92A6 A9 00                    ..
        sta     Player_State                    ; 92A8 85 1D                    ..
        dec     Player_CollisionBits            ; 92AA CE 90 04                 ...
        ldy     #$00                            ; 92AD A0 00                    ..
        sty     HalfwayPage                     ; 92AF 8C 5B 07                 .[.
        lda     AreaType                        ; 92B2 AD 4E 07                 .N.
        bne     L92B8                           ; 92B5 D0 01                    ..
        iny                                     ; 92B7 C8                       .
L92B8:
        sty     SwimmingFlag                    ; 92B8 8C 04 07                 ...
        ldx     PlayerEntranceCtrl              ; 92BB AE 10 07                 ...
        ldy     AltEntranceControl              ; 92BE AC 52 07                 .R.
        beq     L92CA                           ; 92C1 F0 07                    ..
        cpy     #$01                            ; 92C3 C0 01                    ..
        beq     L92CA                           ; 92C5 F0 03                    ..
        ldx     L927D,y                         ; 92C7 BE 7D 92                 .}.
L92CA:
        lda     L927B,y                         ; 92CA B9 7B 92                 .{.
        sta     SprObject_X_Position            ; 92CD 85 86                    ..
        lda     L9281,x                         ; 92CF BD 81 92                 ...
        sta     SprObject_Y_Position            ; 92D2 85 CE                    ..
        lda     L928A,x                         ; 92D4 BD 8A 92                 ...
        sta     SprObject_SprAttrib             ; 92D7 8D C4 03                 ...
        jsr     L85F2                           ; 92DA 20 F2 85                  ..
        ldy     GameTimerSetting                ; 92DD AC 15 07                 ...
        beq     L92FC                           ; 92E0 F0 1A                    ..
        lda     FetchNewGameTimerFlag           ; 92E2 AD 57 07                 .W.
        beq     L92FC                           ; 92E5 F0 15                    ..
        lda     L9292,y                         ; 92E7 B9 92 92                 ...
        sta     GameTimerDisplay                ; 92EA 8D F8 07                 ...
        lda     #$01                            ; 92ED A9 01                    ..
        sta     $07FA                           ; 92EF 8D FA 07                 ...
        lsr     a                               ; 92F2 4A                       J
        sta     $07F9                           ; 92F3 8D F9 07                 ...
        sta     FetchNewGameTimerFlag           ; 92F6 8D 57 07                 .W.
        sta     StarInvincibleTimer             ; 92F9 8D 9F 07                 ...
L92FC:
        ldy     JoypadOverride                  ; 92FC AC 58 07                 .X.
        beq     L9315                           ; 92FF F0 14                    ..
        .byte   $A9,$03,$85,$1D,$A2,$00,$20,$60 ; 9301 A9 03 85 1D A2 00 20 60  ...... `
        .byte   $AE,$A9,$F0,$85,$D7,$A2,$05,$A0 ; 9309 AE A9 F0 85 D7 A2 05 A0  ........
        .byte   $00,$20,$FA,$A9                 ; 9311 00 20 FA A9              . ..
; ----------------------------------------------------------------------------
L9315:
        ldy     AreaType                        ; 9315 AC 4E 07                 .N.
        bne     L931D                           ; 9318 D0 03                    ..
        jsr     LA7E2                           ; 931A 20 E2 A7                  ..
L931D:
        lda     #$07                            ; 931D A9 07                    ..
        sta     GameEngineSubroutine            ; 931F 85 0E                    ..
        rts                                     ; 9321 60                       `

; ----------------------------------------------------------------------------
L9322:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 9322 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 932A 00 00 00 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
        inc     DisableScreenFlag               ; 9332 EE 74 07                 .t.
        lda     #$00                            ; 9335 A9 00                    ..
        sta     Sprite0HitDetectFlag            ; 9337 8D 22 07                 .".
        lda     #$80                            ; 933A A9 80                    ..
        sta     EventMusicQueue                 ; 933C 85 FC                    ..
        dec     $075A                           ; 933E CE 5A 07                 .Z.
        bpl     L934E                           ; 9341 10 0B                    ..
        .byte   $A9,$00,$8D,$72,$07,$A9,$03,$8D ; 9343 A9 00 8D 72 07 A9 03 8D  ...r....
        .byte   $70,$07,$60                     ; 934B 70 07 60                 p.`
; ----------------------------------------------------------------------------
L934E:
        lda     WorldNumber                     ; 934E AD 5F 07                 ._.
        asl     a                               ; 9351 0A                       .
        tax                                     ; 9352 AA                       .
        lda     LevelNumber                     ; 9353 AD 5C 07                 .\.
        and     #$02                            ; 9356 29 02                    ).
        beq     L935B                           ; 9358 F0 01                    ..
        .byte   $E8                             ; 935A E8                       .
; ----------------------------------------------------------------------------
L935B:
        ldy     L9322,x                         ; 935B BC 22 93                 .".
        lda     LevelNumber                     ; 935E AD 5C 07                 .\.
        lsr     a                               ; 9361 4A                       J
        tya                                     ; 9362 98                       .
        bcs     L9369                           ; 9363 B0 04                    ..
        lsr     a                               ; 9365 4A                       J
        lsr     a                               ; 9366 4A                       J
        lsr     a                               ; 9367 4A                       J
        lsr     a                               ; 9368 4A                       J
L9369:
        and     #$0F                            ; 9369 29 0F                    ).
        cmp     ScreenEdge_PageLoc              ; 936B CD 1A 07                 ...
        beq     L9374                           ; 936E F0 04                    ..
        bcc     L9374                           ; 9370 90 02                    ..
        .byte   $A9,$00                         ; 9372 A9 00                    ..
; ----------------------------------------------------------------------------
L9374:
        sta     HalfwayPage                     ; 9374 8D 5B 07                 .[.
        jsr     L93E7                           ; 9377 20 E7 93                  ..
        jmp     L93C9                           ; 937A 4C C9 93                 L..

; ----------------------------------------------------------------------------
        .byte   $20,$C0,$F3,$20,$69,$8F,$89,$93 ; 937D 20 C0 F3 20 69 8F 89 93   .. i...
        .byte   $68,$85,$9C,$93,$A9,$00,$8D,$3C ; 9385 68 85 9C 93 A9 00 8D 3C  h......<
        .byte   $07,$8D,$22,$07,$A9,$02,$85,$FC ; 938D 07 8D 22 07 A9 02 85 FC  ..".....
        .byte   $EE,$74,$07,$EE,$72,$07,$60,$A9 ; 9395 EE 74 07 EE 72 07 60 A9  .t..r.`.
        .byte   $00,$8D,$74,$07,$AD,$FC,$06,$29 ; 939D 00 8D 74 07 AD FC 06 29  ..t....)
        .byte   $10,$D0,$05,$AD,$A0,$07,$D0,$39 ; 93A5 10 D0 05 AD A0 07 D0 39  .......9
        .byte   $A9,$80,$85,$FC,$20,$E7,$93,$90 ; 93AD A9 80 85 FC 20 E7 93 90  .... ...
        .byte   $13,$AD,$5F,$07,$8D,$FD,$07,$A9 ; 93B5 13 AD 5F 07 8D FD 07 A9  .._.....
        .byte   $00,$0A,$8D,$72,$07,$8D,$A0,$07 ; 93BD 00 0A 8D 72 07 8D A0 07  ...r....
        .byte   $8D,$70,$07,$60                 ; 93C5 8D 70 07 60              .p.`
; ----------------------------------------------------------------------------
L93C9:
        jsr     L9DF5                           ; 93C9 20 F5 9D                  ..
        lda     #$01                            ; 93CC A9 01                    ..
        sta     PlayerSize                      ; 93CE 8D 54 07                 .T.
        inc     FetchNewGameTimerFlag           ; 93D1 EE 57 07                 .W.
        lda     #$00                            ; 93D4 A9 00                    ..
        sta     TimerControl                    ; 93D6 8D 47 07                 .G.
        sta     PlayerStatus                    ; 93D9 8D 56 07                 .V.
        sta     GameEngineSubroutine            ; 93DC 85 0E                    ..
        sta     OperMode_Task                   ; 93DE 8D 72 07                 .r.
        lda     #$01                            ; 93E1 A9 01                    ..
        sta     OperMode                        ; 93E3 8D 70 07                 .p.
        rts                                     ; 93E6 60                       `

; ----------------------------------------------------------------------------
L93E7:
        sec                                     ; 93E7 38                       8
        lda     NumberOfPlayers                 ; 93E8 AD 7A 07                 .z.
        beq     L940E                           ; 93EB F0 21                    .!
        .byte   $AD,$61,$07,$30,$1C,$AD,$53,$07 ; 93ED AD 61 07 30 1C AD 53 07  .a.0..S.
        .byte   $49,$01,$8D,$53,$07,$A2,$06,$BD ; 93F5 49 01 8D 53 07 A2 06 BD  I..S....
        .byte   $5A,$07,$48,$BD,$61,$07,$9D,$5A ; 93FD 5A 07 48 BD 61 07 9D 5A  Z.H.a..Z
        .byte   $07,$68,$9D,$61,$07,$CA,$10,$EF ; 9405 07 68 9D 61 07 CA 10 EF  .h.a....
        .byte   $18                             ; 940D 18                       .
; ----------------------------------------------------------------------------
L940E:
        rts                                     ; 940E 60                       `

; ----------------------------------------------------------------------------
L940F:
        lda     #$FF                            ; 940F A9 FF                    ..
        sta     $06C9                           ; 9411 8D C9 06                 ...
L9414:
        rts                                     ; 9414 60                       `

; ----------------------------------------------------------------------------
L9415:
        ldy     AreaParserTaskNum               ; 9415 AC 1F 07                 ...
        bne     L941F                           ; 9418 D0 05                    ..
        ldy     #$08                            ; 941A A0 08                    ..
        sty     AreaParserTaskNum               ; 941C 8C 1F 07                 ...
L941F:
        dey                                     ; 941F 88                       .
        tya                                     ; 9420 98                       .
        jsr     L942D                           ; 9421 20 2D 94                  -.
        dec     AreaParserTaskNum               ; 9424 CE 1F 07                 ...
        bne     L942C                           ; 9427 D0 03                    ..
        jsr     L8AA1                           ; 9429 20 A1 8A                  ..
L942C:
        rts                                     ; 942C 60                       `

; ----------------------------------------------------------------------------
L942D:
        jsr     L8F69                           ; 942D 20 69 8F                  i.
        .byte   $40,$94,$E5,$89,$E5,$89,$62,$95 ; 9430 40 94 E5 89 E5 89 62 95  @.....b.
        .byte   $40,$94,$E5,$89,$E5,$89,$62,$95 ; 9438 40 94 E5 89 E5 89 62 95  @.....b.
; ----------------------------------------------------------------------------
        inc     CurrentColumnPos                ; 9440 EE 26 07                 .&.
        lda     CurrentColumnPos                ; 9443 AD 26 07                 .&.
        and     #$0F                            ; 9446 29 0F                    ).
        bne     L9450                           ; 9448 D0 06                    ..
        sta     CurrentColumnPos                ; 944A 8D 26 07                 .&.
        inc     CurrentPageLoc                  ; 944D EE 25 07                 .%.
L9450:
        inc     BlockBufferColumnPos            ; 9450 EE A0 06                 ...
        lda     BlockBufferColumnPos            ; 9453 AD A0 06                 ...
        and     #$1F                            ; 9456 29 1F                    ).
        sta     BlockBufferColumnPos            ; 9458 8D A0 06                 ...
L945B:
        rts                                     ; 945B 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$30,$60                     ; 945C 00 30 60                 .0`
L945F:
        .byte   $93,$00,$00,$11,$12,$12,$13,$00 ; 945F 93 00 00 11 12 12 13 00  ........
        .byte   $00,$51,$52,$53,$00,$00,$00,$00 ; 9467 00 51 52 53 00 00 00 00  .QRS....
        .byte   $00,$00,$01,$02,$02,$03,$00,$00 ; 946F 00 00 01 02 02 03 00 00  ........
        .byte   $00,$00,$00,$00,$91,$92,$93,$00 ; 9477 00 00 00 00 91 92 93 00  ........
        .byte   $00,$00,$00,$51,$52,$53,$41,$42 ; 947F 00 00 00 51 52 53 41 42  ...QRSAB
        .byte   $43,$00,$00,$00,$00,$00,$91,$92 ; 9487 43 00 00 00 00 00 91 92  C.......
        .byte   $97,$87,$88,$89,$99,$00,$00,$00 ; 948F 97 87 88 89 99 00 00 00  ........
        .byte   $11,$12,$13,$A4,$A5,$A5,$A5,$A6 ; 9497 11 12 13 A4 A5 A5 A5 A6  ........
        .byte   $97,$98,$99,$01,$02,$03,$00,$A4 ; 949F 97 98 99 01 02 03 00 A4  ........
        .byte   $A5,$A6,$00,$11,$12,$12,$12,$13 ; 94A7 A5 A6 00 11 12 12 12 13  ........
        .byte   $00,$00,$00,$00,$01,$02,$02,$03 ; 94AF 00 00 00 00 01 02 02 03  ........
        .byte   $00,$A4,$A5,$A5,$A6,$00,$00,$00 ; 94B7 00 A4 A5 A5 A6 00 00 00  ........
        .byte   $11,$12,$12,$13,$A4,$A5,$A6,$00 ; 94BF 11 12 12 13 A4 A5 A6 00  ........
        .byte   $00,$00,$8B,$9C,$00,$AA,$AA,$AA ; 94C7 00 00 8B 9C 00 AA AA AA  ........
        .byte   $AA,$AA,$11,$12,$13,$00,$8C,$9C ; 94CF AA AA 11 12 13 00 8C 9C  ........
        .byte   $00,$00,$00,$01,$02,$03,$11,$12 ; 94D7 00 00 00 01 02 03 11 12  ........
        .byte   $12,$13,$8C,$00,$00,$00,$A4,$A5 ; 94DF 12 13 8C 00 00 00 A4 A5  ........
        .byte   $A5,$A6,$00,$8B,$00,$01,$02,$03 ; 94E7 A5 A6 00 8B 00 01 02 03  ........
L94EF:
        .byte   $80,$83,$00,$81,$84,$00,$82,$85 ; 94EF 80 83 00 81 84 00 82 85  ........
        .byte   $00,$02,$00,$00,$03,$00,$00,$04 ; 94F7 00 02 00 00 03 00 00 04  ........
        .byte   $00,$00,$00,$05,$06,$07,$06,$0A ; 94FF 00 00 00 05 06 07 06 0A  ........
        .byte   $00,$08,$09,$4D,$00,$00,$0D,$0F ; 9507 00 08 09 4D 00 00 0D 0F  ...M....
        .byte   $4E,$0E,$4E                     ; 950F 4E 0E 4E                 N.N
L9512:
        .byte   $4E,$00,$0D,$1A                 ; 9512 4E 00 0D 1A              N...
L9516:
        .byte   $00,$86,$00,$00,$00,$00,$00,$00 ; 9516 00 86 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$69,$69,$00,$00,$00 ; 951E 00 00 00 69 69 00 00 00  ...ii...
        .byte   $00,$00,$45,$47,$47,$47,$47,$47 ; 9526 00 00 45 47 47 47 47 47  ..EGGGGG
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 952E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$86,$87,$69 ; 9536 00 00 00 00 00 86 87 69  .......i
L953E:
        .byte   $69,$54,$52,$62                 ; 953E 69 54 52 62              iTRb
L9542:
        .byte   $00,$00,$00,$18,$02,$18,$06,$18 ; 9542 00 00 00 18 02 18 06 18  ........
        .byte   $0E,$18,$FE,$18,$02,$1E,$06,$1E ; 954A 0E 18 FE 18 02 1E 06 1E  ........
        .byte   $0E,$1E,$1E,$1E,$02,$00,$CE,$1F ; 9552 0E 1E 1E 1E 02 00 CE 1F  ........
        .byte   $C2,$1F,$CE,$19,$C2,$19,$FE,$1F ; 955A C2 1F CE 19 C2 19 FE 1F  ........
; ----------------------------------------------------------------------------
        lda     BackloadingFlag                 ; 9562 AD 28 07                 .(.
        beq     L956A                           ; 9565 F0 03                    ..
        jsr     L966E                           ; 9567 20 6E 96                  n.
L956A:
        ldx     #$0C                            ; 956A A2 0C                    ..
        lda     #$00                            ; 956C A9 00                    ..
L956E:
        sta     MetatileBuffer,x                ; 956E 9D A1 06                 ...
        dex                                     ; 9571 CA                       .
        bpl     L956E                           ; 9572 10 FA                    ..
        ldy     BackgroundScenery               ; 9574 AC 42 07                 .B.
        beq     L95BB                           ; 9577 F0 42                    .B
        lda     CurrentPageLoc                  ; 9579 AD 25 07                 .%.
L957C:
        cmp     #$03                            ; 957C C9 03                    ..
        bmi     L9585                           ; 957E 30 05                    0.
        sec                                     ; 9580 38                       8
        sbc     #$03                            ; 9581 E9 03                    ..
        bpl     L957C                           ; 9583 10 F7                    ..
L9585:
        asl     a                               ; 9585 0A                       .
        asl     a                               ; 9586 0A                       .
        asl     a                               ; 9587 0A                       .
        asl     a                               ; 9588 0A                       .
        adc     L945B,y                         ; 9589 79 5B 94                 y[.
        adc     CurrentColumnPos                ; 958C 6D 26 07                 m&.
        tax                                     ; 958F AA                       .
        lda     L945F,x                         ; 9590 BD 5F 94                 ._.
        beq     L95BB                           ; 9593 F0 26                    .&
        pha                                     ; 9595 48                       H
        and     #$0F                            ; 9596 29 0F                    ).
        sec                                     ; 9598 38                       8
        sbc     #$01                            ; 9599 E9 01                    ..
        sta     $00                             ; 959B 85 00                    ..
        asl     a                               ; 959D 0A                       .
        adc     $00                             ; 959E 65 00                    e.
        tax                                     ; 95A0 AA                       .
        pla                                     ; 95A1 68                       h
        lsr     a                               ; 95A2 4A                       J
        lsr     a                               ; 95A3 4A                       J
        lsr     a                               ; 95A4 4A                       J
        lsr     a                               ; 95A5 4A                       J
        tay                                     ; 95A6 A8                       .
        lda     #$03                            ; 95A7 A9 03                    ..
        sta     $00                             ; 95A9 85 00                    ..
L95AB:
        lda     L94EF,x                         ; 95AB BD EF 94                 ...
        sta     MetatileBuffer,y                ; 95AE 99 A1 06                 ...
        inx                                     ; 95B1 E8                       .
        iny                                     ; 95B2 C8                       .
        cpy     #$0B                            ; 95B3 C0 0B                    ..
        beq     L95BB                           ; 95B5 F0 04                    ..
        dec     $00                             ; 95B7 C6 00                    ..
        bne     L95AB                           ; 95B9 D0 F0                    ..
L95BB:
        ldx     ForegroundScenery               ; 95BB AE 41 07                 .A.
        beq     L95D3                           ; 95BE F0 13                    ..
        ldy     L9512,x                         ; 95C0 BC 12 95                 ...
        ldx     #$00                            ; 95C3 A2 00                    ..
L95C5:
        lda     L9516,y                         ; 95C5 B9 16 95                 ...
        beq     L95CD                           ; 95C8 F0 03                    ..
        sta     MetatileBuffer,x                ; 95CA 9D A1 06                 ...
L95CD:
        iny                                     ; 95CD C8                       .
        inx                                     ; 95CE E8                       .
        cpx     #$0D                            ; 95CF E0 0D                    ..
        bne     L95C5                           ; 95D1 D0 F2                    ..
L95D3:
        ldy     AreaType                        ; 95D3 AC 4E 07                 .N.
        bne     L95E4                           ; 95D6 D0 0C                    ..
        lda     WorldNumber                     ; 95D8 AD 5F 07                 ._.
        cmp     #$07                            ; 95DB C9 07                    ..
        bne     L95E4                           ; 95DD D0 05                    ..
        .byte   $A9,$62,$4C,$EE,$95             ; 95DF A9 62 4C EE 95           .bL..
; ----------------------------------------------------------------------------
L95E4:
        lda     L953E,y                         ; 95E4 B9 3E 95                 .>.
        ldy     CloudTypeOverride               ; 95E7 AC 43 07                 .C.
        beq     L95EE                           ; 95EA F0 02                    ..
        .byte   $A9,$88                         ; 95EC A9 88                    ..
; ----------------------------------------------------------------------------
L95EE:
        sta     $07                             ; 95EE 85 07                    ..
        ldx     #$00                            ; 95F0 A2 00                    ..
        lda     TerrainControl                  ; 95F2 AD 27 07                 .'.
        asl     a                               ; 95F5 0A                       .
        tay                                     ; 95F6 A8                       .
L95F7:
        lda     L9542,y                         ; 95F7 B9 42 95                 .B.
        sta     $00                             ; 95FA 85 00                    ..
        iny                                     ; 95FC C8                       .
        sty     $01                             ; 95FD 84 01                    ..
        lda     CloudTypeOverride               ; 95FF AD 43 07                 .C.
        beq     L960E                           ; 9602 F0 0A                    ..
        .byte   $E0,$00,$F0,$06,$A5,$00,$29,$08 ; 9604 E0 00 F0 06 A5 00 29 08  ......).
        .byte   $85,$00                         ; 960C 85 00                    ..
; ----------------------------------------------------------------------------
L960E:
        ldy     #$00                            ; 960E A0 00                    ..
L9610:
        lda     LC64D,y                         ; 9610 B9 4D C6                 .M.
        bit     $00                             ; 9613 24 00                    $.
        beq     L961C                           ; 9615 F0 05                    ..
        lda     $07                             ; 9617 A5 07                    ..
        sta     MetatileBuffer,x                ; 9619 9D A1 06                 ...
L961C:
        inx                                     ; 961C E8                       .
        cpx     #$0D                            ; 961D E0 0D                    ..
        beq     L9639                           ; 961F F0 18                    ..
        lda     AreaType                        ; 9621 AD 4E 07                 .N.
        cmp     #$02                            ; 9624 C9 02                    ..
        bne     L9630                           ; 9626 D0 08                    ..
        cpx     #$0B                            ; 9628 E0 0B                    ..
        bne     L9630                           ; 962A D0 04                    ..
        lda     #$54                            ; 962C A9 54                    .T
        sta     $07                             ; 962E 85 07                    ..
L9630:
        iny                                     ; 9630 C8                       .
        cpy     #$08                            ; 9631 C0 08                    ..
        bne     L9610                           ; 9633 D0 DB                    ..
        ldy     $01                             ; 9635 A4 01                    ..
        bne     L95F7                           ; 9637 D0 BE                    ..
L9639:
        jsr     L966E                           ; 9639 20 6E 96                  n.
        lda     BlockBufferColumnPos            ; 963C AD A0 06                 ...
        jsr     L9DD3                           ; 963F 20 D3 9D                  ..
        ldx     #$00                            ; 9642 A2 00                    ..
        ldy     #$00                            ; 9644 A0 00                    ..
L9646:
        sty     $00                             ; 9646 84 00                    ..
        lda     MetatileBuffer,x                ; 9648 BD A1 06                 ...
        and     #$C0                            ; 964B 29 C0                    ).
        asl     a                               ; 964D 0A                       .
        rol     a                               ; 964E 2A                       *
        rol     a                               ; 964F 2A                       *
        tay                                     ; 9650 A8                       .
        lda     MetatileBuffer,x                ; 9651 BD A1 06                 ...
        cmp     L966A,y                         ; 9654 D9 6A 96                 .j.
        bcs     L965B                           ; 9657 B0 02                    ..
        lda     #$00                            ; 9659 A9 00                    ..
L965B:
        ldy     $00                             ; 965B A4 00                    ..
        sta     (L0006),y                       ; 965D 91 06                    ..
        tya                                     ; 965F 98                       .
        clc                                     ; 9660 18                       .
        adc     #$10                            ; 9661 69 10                    i.
        tay                                     ; 9663 A8                       .
        inx                                     ; 9664 E8                       .
        cpx     #$0D                            ; 9665 E0 0D                    ..
        bcc     L9646                           ; 9667 90 DD                    ..
        rts                                     ; 9669 60                       `

; ----------------------------------------------------------------------------
L966A:
        .byte   $10,$51,$88,$C0                 ; 966A 10 51 88 C0              .Q..
; ----------------------------------------------------------------------------
L966E:
        ldx     #$02                            ; 966E A2 02                    ..
L9670:
        stx     ObjectOffset                    ; 9670 86 08                    ..
        lda     #$00                            ; 9672 A9 00                    ..
        sta     BehindAreaParserFlag            ; 9674 8D 29 07                 .).
        ldy     AreaDataOffset                  ; 9677 AC 2C 07                 .,.
        lda     (AreaDataLow),y                 ; 967A B1 E7                    ..
        cmp     #$FD                            ; 967C C9 FD                    ..
        beq     L96CB                           ; 967E F0 4B                    .K
        lda     AreaObjectLength,x              ; 9680 BD 30 07                 .0.
        bpl     L96CB                           ; 9683 10 46                    .F
        iny                                     ; 9685 C8                       .
        lda     (AreaDataLow),y                 ; 9686 B1 E7                    ..
        asl     a                               ; 9688 0A                       .
        bcc     L9696                           ; 9689 90 0B                    ..
        lda     AreaObjectPageSel               ; 968B AD 2B 07                 .+.
        bne     L9696                           ; 968E D0 06                    ..
        inc     AreaObjectPageSel               ; 9690 EE 2B 07                 .+.
        inc     AreaObjectPageLoc               ; 9693 EE 2A 07                 .*.
L9696:
        dey                                     ; 9696 88                       .
        lda     (AreaDataLow),y                 ; 9697 B1 E7                    ..
        and     #$0F                            ; 9699 29 0F                    ).
        cmp     #$0D                            ; 969B C9 0D                    ..
        bne     L96BA                           ; 969D D0 1B                    ..
        iny                                     ; 969F C8                       .
        lda     (AreaDataLow),y                 ; 96A0 B1 E7                    ..
        dey                                     ; 96A2 88                       .
        and     #$40                            ; 96A3 29 40                    )@
        bne     L96C3                           ; 96A5 D0 1C                    ..
        .byte   $AD,$2B,$07,$D0,$17,$C8,$B1,$E7 ; 96A7 AD 2B 07 D0 17 C8 B1 E7  .+......
        .byte   $29,$1F,$8D,$2A,$07,$EE,$2B,$07 ; 96AF 29 1F 8D 2A 07 EE 2B 07  )..*..+.
        .byte   $4C,$D4,$96                     ; 96B7 4C D4 96                 L..
; ----------------------------------------------------------------------------
L96BA:
        cmp     #$0E                            ; 96BA C9 0E                    ..
        bne     L96C3                           ; 96BC D0 05                    ..
        lda     BackloadingFlag                 ; 96BE AD 28 07                 .(.
        bne     L96CB                           ; 96C1 D0 08                    ..
L96C3:
        lda     AreaObjectPageLoc               ; 96C3 AD 2A 07                 .*.
        cmp     CurrentPageLoc                  ; 96C6 CD 25 07                 .%.
        bcc     L96D1                           ; 96C9 90 06                    ..
L96CB:
        jsr     L96FB                           ; 96CB 20 FB 96                  ..
        jmp     L96D7                           ; 96CE 4C D7 96                 L..

; ----------------------------------------------------------------------------
L96D1:
        inc     BehindAreaParserFlag            ; 96D1 EE 29 07                 .).
        jsr     L96EF                           ; 96D4 20 EF 96                  ..
L96D7:
        ldx     ObjectOffset                    ; 96D7 A6 08                    ..
        lda     AreaObjectLength,x              ; 96D9 BD 30 07                 .0.
        bmi     L96E1                           ; 96DC 30 03                    0.
        dec     AreaObjectLength,x              ; 96DE DE 30 07                 .0.
L96E1:
        dex                                     ; 96E1 CA                       .
        bpl     L9670                           ; 96E2 10 8C                    ..
        lda     BehindAreaParserFlag            ; 96E4 AD 29 07                 .).
        bne     L966E                           ; 96E7 D0 85                    ..
        lda     BackloadingFlag                 ; 96E9 AD 28 07                 .(.
        bne     L966E                           ; 96EC D0 80                    ..
L96EE:
        rts                                     ; 96EE 60                       `

; ----------------------------------------------------------------------------
L96EF:
        inc     AreaDataOffset                  ; 96EF EE 2C 07                 .,.
        inc     AreaDataOffset                  ; 96F2 EE 2C 07                 .,.
        lda     #$00                            ; 96F5 A9 00                    ..
        sta     AreaObjectPageSel               ; 96F7 8D 2B 07                 .+.
        rts                                     ; 96FA 60                       `

; ----------------------------------------------------------------------------
L96FB:
        lda     AreaObjectLength,x              ; 96FB BD 30 07                 .0.
        bmi     L9703                           ; 96FE 30 03                    0.
        ldy     AreaObjOffsetBuffer,x           ; 9700 BC 2D 07                 .-.
L9703:
        ldx     #$10                            ; 9703 A2 10                    ..
        lda     (AreaDataLow),y                 ; 9705 B1 E7                    ..
        cmp     #$FD                            ; 9707 C9 FD                    ..
        beq     L96EE                           ; 9709 F0 E3                    ..
        and     #$0F                            ; 970B 29 0F                    ).
        cmp     #$0F                            ; 970D C9 0F                    ..
        beq     L9719                           ; 970F F0 08                    ..
        ldx     #$08                            ; 9711 A2 08                    ..
        cmp     #$0C                            ; 9713 C9 0C                    ..
        beq     L9719                           ; 9715 F0 02                    ..
        ldx     #$00                            ; 9717 A2 00                    ..
L9719:
        stx     $07                             ; 9719 86 07                    ..
        ldx     ObjectOffset                    ; 971B A6 08                    ..
        cmp     #$0E                            ; 971D C9 0E                    ..
        bne     L9729                           ; 971F D0 08                    ..
        lda     #$00                            ; 9721 A9 00                    ..
        sta     $07                             ; 9723 85 07                    ..
        lda     #$34                            ; 9725 A9 34                    .4
        bne     L977C                           ; 9727 D0 53                    .S
L9729:
        cmp     #$0D                            ; 9729 C9 0D                    ..
        bne     L9748                           ; 972B D0 1B                    ..
        lda     #$27                            ; 972D A9 27                    .'
        sta     $07                             ; 972F 85 07                    ..
        iny                                     ; 9731 C8                       .
        lda     (AreaDataLow),y                 ; 9732 B1 E7                    ..
        and     #$40                            ; 9734 29 40                    )@
        beq     L979B                           ; 9736 F0 63                    .c
        lda     (AreaDataLow),y                 ; 9738 B1 E7                    ..
        and     #$7F                            ; 973A 29 7F                    ).
        cmp     #$4B                            ; 973C C9 4B                    .K
        bne     L9743                           ; 973E D0 03                    ..
        .byte   $EE,$45,$07                     ; 9740 EE 45 07                 .E.
; ----------------------------------------------------------------------------
L9743:
        and     #$3F                            ; 9743 29 3F                    )?
        jmp     L977C                           ; 9745 4C 7C 97                 L|.

; ----------------------------------------------------------------------------
L9748:
        cmp     #$0C                            ; 9748 C9 0C                    ..
        bcs     L9773                           ; 974A B0 27                    .'
        iny                                     ; 974C C8                       .
        lda     (AreaDataLow),y                 ; 974D B1 E7                    ..
        and     #$70                            ; 974F 29 70                    )p
        bne     L975E                           ; 9751 D0 0B                    ..
        lda     #$18                            ; 9753 A9 18                    ..
        sta     $07                             ; 9755 85 07                    ..
        lda     (AreaDataLow),y                 ; 9757 B1 E7                    ..
        and     #$0F                            ; 9759 29 0F                    ).
        jmp     L977C                           ; 975B 4C 7C 97                 L|.

; ----------------------------------------------------------------------------
L975E:
        sta     $00                             ; 975E 85 00                    ..
        cmp     #$70                            ; 9760 C9 70                    .p
        bne     L976E                           ; 9762 D0 0A                    ..
        lda     (AreaDataLow),y                 ; 9764 B1 E7                    ..
        and     #$08                            ; 9766 29 08                    ).
        beq     L976E                           ; 9768 F0 04                    ..
        lda     #$00                            ; 976A A9 00                    ..
        sta     $00                             ; 976C 85 00                    ..
L976E:
        lda     $00                             ; 976E A5 00                    ..
        jmp     L9778                           ; 9770 4C 78 97                 Lx.

; ----------------------------------------------------------------------------
L9773:
        iny                                     ; 9773 C8                       .
        lda     (AreaDataLow),y                 ; 9774 B1 E7                    ..
        and     #$70                            ; 9776 29 70                    )p
L9778:
        lsr     a                               ; 9778 4A                       J
        lsr     a                               ; 9779 4A                       J
        lsr     a                               ; 977A 4A                       J
        lsr     a                               ; 977B 4A                       J
L977C:
        sta     $00                             ; 977C 85 00                    ..
        lda     AreaObjectLength,x              ; 977E BD 30 07                 .0.
        bpl     L97C5                           ; 9781 10 42                    .B
        lda     AreaObjectPageLoc               ; 9783 AD 2A 07                 .*.
        cmp     CurrentPageLoc                  ; 9786 CD 25 07                 .%.
        beq     L979C                           ; 9789 F0 11                    ..
        ldy     AreaDataOffset                  ; 978B AC 2C 07                 .,.
        lda     (AreaDataLow),y                 ; 978E B1 E7                    ..
        and     #$0F                            ; 9790 29 0F                    ).
        cmp     #$0E                            ; 9792 C9 0E                    ..
        bne     L979B                           ; 9794 D0 05                    ..
        lda     BackloadingFlag                 ; 9796 AD 28 07                 .(.
        bne     L97BC                           ; 9799 D0 21                    .!
L979B:
        rts                                     ; 979B 60                       `

; ----------------------------------------------------------------------------
L979C:
        lda     BackloadingFlag                 ; 979C AD 28 07                 .(.
        beq     L97AC                           ; 979F F0 0B                    ..
        lda     #$00                            ; 97A1 A9 00                    ..
        sta     BackloadingFlag                 ; 97A3 8D 28 07                 .(.
        sta     BehindAreaParserFlag            ; 97A6 8D 29 07                 .).
        sta     ObjectOffset                    ; 97A9 85 08                    ..
        rts                                     ; 97AB 60                       `

; ----------------------------------------------------------------------------
L97AC:
        ldy     AreaDataOffset                  ; 97AC AC 2C 07                 .,.
        lda     (AreaDataLow),y                 ; 97AF B1 E7                    ..
        and     #$F0                            ; 97B1 29 F0                    ).
        lsr     a                               ; 97B3 4A                       J
        lsr     a                               ; 97B4 4A                       J
        lsr     a                               ; 97B5 4A                       J
        lsr     a                               ; 97B6 4A                       J
        cmp     CurrentColumnPos                ; 97B7 CD 26 07                 .&.
        bne     L979B                           ; 97BA D0 DF                    ..
L97BC:
        lda     AreaDataOffset                  ; 97BC AD 2C 07                 .,.
        sta     AreaObjOffsetBuffer,x           ; 97BF 9D 2D 07                 .-.
        jsr     L96EF                           ; 97C2 20 EF 96                  ..
L97C5:
        lda     $00                             ; 97C5 A5 00                    ..
        clc                                     ; 97C7 18                       .
        adc     $07                             ; 97C8 65 07                    e.
        jsr     L8F69                           ; 97CA 20 69 8F                  i.
        .byte   $BB,$9A,$B2,$98,$09,$9C,$19,$9C ; 97CD BB 9A B2 98 09 9C 19 9C  ........
        .byte   $CD,$9B,$2B,$9C,$34,$9C,$BB,$9A ; 97D5 CD 9B 2B 9C 34 9C BB 9A  ..+.4...
        .byte   $33,$9D,$2C,$99,$54,$9B,$57,$9B ; 97DD 33 9D 2C 99 54 9B 57 9B  3.,.T.W.
        .byte   $5A,$9B,$32,$9B,$43,$9B,$46,$9B ; 97E5 5A 9B 32 9B 43 9B 46 9B  Z.2.C.F.
        .byte   $15,$9B,$B2,$9B,$78,$99,$92,$9C ; 97ED 15 9B B2 9B 78 99 92 9C  ....x...
        .byte   $81,$9A,$08,$9B,$E1,$99,$AB,$9B ; 97F5 81 9A 08 9B E1 99 AB 9B  ........
        .byte   $F3,$9C,$F3,$9C,$F3,$9C,$F3,$9C ; 97FD F3 9C F3 9C F3 9C F3 9C  ........
        .byte   $FE,$9C,$FE,$9C,$FE,$9C,$F9,$9C ; 9805 FE 9C FE 9C FE 9C F9 9C  ........
        .byte   $FE,$9C,$45,$9A,$F4,$9B,$AE,$9C ; 980D FE 9C 45 9A F4 9B AE 9C  ..E.....
        .byte   $E9,$9C,$E9,$9C,$E9,$9C,$58,$9A ; 9815 E9 9C E9 9C E9 9C 58 9A  ......X.
        .byte   $79,$9B,$E4,$9B,$E9,$9B,$DC,$9B ; 981D 79 9B E4 9B E9 9B DC 9B  y.......
        .byte   $64,$98,$7F,$98,$7F,$98,$9D,$98 ; 9825 64 98 7F 98 7F 98 9D 98  d.......
        .byte   $9D,$98,$9D,$98,$AB,$97,$22,$9D ; 982D 9D 98 9D 98 AB 97 22 9D  ......".
        .byte   $37,$98                         ; 9835 37 98                    7.
; ----------------------------------------------------------------------------
        ldy     AreaObjOffsetBuffer,x           ; 9837 BC 2D 07                 .-.
        iny                                     ; 983A C8                       .
        lda     (AreaDataLow),y                 ; 983B B1 E7                    ..
        pha                                     ; 983D 48                       H
        and     #$40                            ; 983E 29 40                    )@
        bne     L9854                           ; 9840 D0 12                    ..
        pla                                     ; 9842 68                       h
        pha                                     ; 9843 48                       H
        and     #$0F                            ; 9844 29 0F                    ).
        sta     TerrainControl                  ; 9846 8D 27 07                 .'.
        pla                                     ; 9849 68                       h
        and     #$30                            ; 984A 29 30                    )0
        lsr     a                               ; 984C 4A                       J
        lsr     a                               ; 984D 4A                       J
        lsr     a                               ; 984E 4A                       J
        lsr     a                               ; 984F 4A                       J
        sta     BackgroundScenery               ; 9850 8D 42 07                 .B.
        rts                                     ; 9853 60                       `

; ----------------------------------------------------------------------------
L9854:
        pla                                     ; 9854 68                       h
        and     #$07                            ; 9855 29 07                    ).
        cmp     #$04                            ; 9857 C9 04                    ..
        bcc     L9860                           ; 9859 90 05                    ..
        .byte   $8D,$44,$07,$A9,$00             ; 985B 8D 44 07 A9 00           .D...
; ----------------------------------------------------------------------------
L9860:
        sta     ForegroundScenery               ; 9860 8D 41 07                 .A.
        rts                                     ; 9863 60                       `

; ----------------------------------------------------------------------------
        .byte   $A2,$04,$AD,$5F,$07,$F0,$08,$E8 ; 9864 A2 04 AD 5F 07 F0 08 E8  ..._....
        .byte   $AC,$4E,$07,$88,$D0,$01,$E8,$8A ; 986C AC 4E 07 88 D0 01 E8 8A  .N......
        .byte   $8D,$D6,$06,$20,$3F,$89,$A9,$0D ; 9874 8D D6 06 20 3F 89 A9 0D  ... ?...
        .byte   $20,$88,$98                     ; 987C 20 88 98                  ..
; ----------------------------------------------------------------------------
        lda     ScrollLock                      ; 987F AD 23 07                 .#.
        eor     #$01                            ; 9882 49 01                    I.
        sta     ScrollLock                      ; 9884 8D 23 07                 .#.
        rts                                     ; 9887 60                       `

; ----------------------------------------------------------------------------
L9888:
        sta     $00                             ; 9888 85 00                    ..
        lda     #$00                            ; 988A A9 00                    ..
        ldx     #$04                            ; 988C A2 04                    ..
L988E:
        ldy     Enemy_ID,x                      ; 988E B4 16                    ..
        cpy     $00                             ; 9890 C4 00                    ..
L9892:
        bne     L9896                           ; 9892 D0 02                    ..
        .byte   $95,$0F                         ; 9894 95 0F                    ..
; ----------------------------------------------------------------------------
L9896:
        dex                                     ; 9896 CA                       .
        bpl     L988E                           ; 9897 10 F5                    ..
        rts                                     ; 9899 60                       `

; ----------------------------------------------------------------------------
        .byte   $14,$17,$18                     ; 989A 14 17 18                 ...
; ----------------------------------------------------------------------------
        ldx     $00                             ; 989D A6 00                    ..
        lda     L9892,x                         ; 989F BD 92 98                 ...
        ldy     #$05                            ; 98A2 A0 05                    ..
L98A4:
        dey                                     ; 98A4 88                       .
        bmi     L98AE                           ; 98A5 30 07                    0.
        cmp     Enemy_ID,y                      ; 98A7 D9 16 00                 ...
        bne     L98A4                           ; 98AA D0 F8                    ..
        .byte   $A9,$00                         ; 98AC A9 00                    ..
; ----------------------------------------------------------------------------
L98AE:
        sta     EnemyFrenzyQueue                ; 98AE 8D CD 06                 ...
        rts                                     ; 98B1 60                       `

; ----------------------------------------------------------------------------
        lda     AreaStyle                       ; 98B2 AD 33 07                 .3.
        jsr     L8F69                           ; 98B5 20 69 8F                  i.
        .byte   $BE,$98,$EA,$98,$44,$9C         ; 98B8 BE 98 EA 98 44 9C        ....D.
; ----------------------------------------------------------------------------
        jsr     L9DAD                           ; 98BE 20 AD 9D                  ..
        lda     AreaObjectLength,x              ; 98C1 BD 30 07                 .0.
        beq     L98E5                           ; 98C4 F0 1F                    ..
        bpl     L98D9                           ; 98C6 10 11                    ..
        tya                                     ; 98C8 98                       .
        sta     AreaObjectLength,x              ; 98C9 9D 30 07                 .0.
        lda     CurrentPageLoc                  ; 98CC AD 25 07                 .%.
        ora     CurrentColumnPos                ; 98CF 0D 26 07                 .&.
        beq     L98D9                           ; 98D2 F0 05                    ..
        lda     #$16                            ; 98D4 A9 16                    ..
        jmp     L9922                           ; 98D6 4C 22 99                 L".

; ----------------------------------------------------------------------------
L98D9:
        ldx     $07                             ; 98D9 A6 07                    ..
        lda     #$17                            ; 98DB A9 17                    ..
        sta     MetatileBuffer,x                ; 98DD 9D A1 06                 ...
        lda     #$4C                            ; 98E0 A9 4C                    .L
        jmp     L991C                           ; 98E2 4C 1C 99                 L..

; ----------------------------------------------------------------------------
L98E5:
        lda     #$18                            ; 98E5 A9 18                    ..
        jmp     L9922                           ; 98E7 4C 22 99                 L".

; ----------------------------------------------------------------------------
        .byte   $20,$9E,$9D,$84,$06,$90,$0C,$BD ; 98EA 20 9E 9D 84 06 90 0C BD   .......
        .byte   $30,$07,$4A,$9D,$36,$07,$A9,$19 ; 98F2 30 07 4A 9D 36 07 A9 19  0.J.6...
        .byte   $4C,$22,$99,$A9,$1B,$BC,$30,$07 ; 98FA 4C 22 99 A9 1B BC 30 07  L"....0.
        .byte   $F0,$1E,$BD,$36,$07,$85,$06,$A6 ; 9902 F0 1E BD 36 07 85 06 A6  ...6....
        .byte   $07,$A9,$1A,$9D,$A1,$06,$C4,$06 ; 990A 07 A9 1A 9D A1 06 C4 06  ........
        .byte   $D0,$2C,$E8,$A9,$4F,$9D,$A1,$06 ; 9912 D0 2C E8 A9 4F 9D A1 06  .,..O...
        .byte   $A9,$50                         ; 991A A9 50                    .P
; ----------------------------------------------------------------------------
L991C:
        inx                                     ; 991C E8                       .
        ldy     #$0F                            ; 991D A0 0F                    ..
        jmp     L9D6F                           ; 991F 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
L9922:
        ldx     $07                             ; 9922 A6 07                    ..
        ldy     #$00                            ; 9924 A0 00                    ..
        jmp     L9D6F                           ; 9926 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
        .byte   $42,$41,$43,$20,$9E,$9D,$A0,$00 ; 9929 42 41 43 20 9E 9D A0 00  BAC ....
        .byte   $B0,$07,$C8,$BD,$30,$07,$D0,$01 ; 9931 B0 07 C8 BD 30 07 D0 01  ....0...
        .byte   $C8,$B9,$29,$99,$8D,$A3,$06,$60 ; 9939 C8 B9 29 99 8D A3 06 60  ..)....`
L9941:
        .byte   $00,$45,$45,$45,$00,$00,$48,$47 ; 9941 00 45 45 45 00 00 48 47  .EEE..HG
        .byte   $46,$00,$45,$49,$49,$49,$45,$47 ; 9949 46 00 45 49 49 49 45 47  F.EIIIEG
        .byte   $47,$4A,$47,$47,$47,$47,$4B,$47 ; 9951 47 4A 47 47 47 47 4B 47  GJGGGGKG
        .byte   $47,$49,$49,$49,$49,$49,$47,$4A ; 9959 47 49 49 49 49 49 47 4A  GIIIIIGJ
        .byte   $47,$4A,$47,$47,$4B,$47,$4B,$47 ; 9961 47 4A 47 47 4B 47 4B 47  GJGGKGKG
        .byte   $47,$47,$47,$47,$47,$4A,$47,$4A ; 9969 47 47 47 47 47 4A 47 4A  GGGGGJGJ
        .byte   $47,$4A,$4B,$47,$4B,$47,$4B     ; 9971 47 4A 4B 47 4B 47 4B     GJKGKGK
; ----------------------------------------------------------------------------
        jsr     L9DAD                           ; 9978 20 AD 9D                  ..
        sty     $07                             ; 997B 84 07                    ..
        ldy     #$04                            ; 997D A0 04                    ..
        jsr     L9DA1                           ; 997F 20 A1 9D                  ..
        txa                                     ; 9982 8A                       .
        pha                                     ; 9983 48                       H
        ldy     AreaObjectLength,x              ; 9984 BC 30 07                 .0.
        ldx     $07                             ; 9987 A6 07                    ..
        lda     #$0B                            ; 9989 A9 0B                    ..
        sta     L0006                           ; 998B 85 06                    ..
L998D:
        lda     L9941,y                         ; 998D B9 41 99                 .A.
        sta     MetatileBuffer,x                ; 9990 9D A1 06                 ...
        inx                                     ; 9993 E8                       .
        lda     L0006                           ; 9994 A5 06                    ..
        beq     L999F                           ; 9996 F0 07                    ..
        iny                                     ; 9998 C8                       .
        iny                                     ; 9999 C8                       .
        iny                                     ; 999A C8                       .
        iny                                     ; 999B C8                       .
        iny                                     ; 999C C8                       .
        dec     L0006                           ; 999D C6 06                    ..
L999F:
        cpx     #$0B                            ; 999F E0 0B                    ..
        bne     L998D                           ; 99A1 D0 EA                    ..
        pla                                     ; 99A3 68                       h
        tax                                     ; 99A4 AA                       .
        lda     CurrentPageLoc                  ; 99A5 AD 25 07                 .%.
        beq     L99E0                           ; 99A8 F0 36                    .6
        lda     AreaObjectLength,x              ; 99AA BD 30 07                 .0.
        cmp     #$01                            ; 99AD C9 01                    ..
        beq     L99DB                           ; 99AF F0 2A                    .*
        ldy     $07                             ; 99B1 A4 07                    ..
        bne     L99B9                           ; 99B3 D0 04                    ..
        cmp     #$03                            ; 99B5 C9 03                    ..
        beq     L99DB                           ; 99B7 F0 22                    ."
L99B9:
        cmp     #$02                            ; 99B9 C9 02                    ..
        bne     L99E0                           ; 99BB D0 23                    .#
        jsr     L9DBD                           ; 99BD 20 BD 9D                  ..
        pha                                     ; 99C0 48                       H
        jsr     L9AE9                           ; 99C1 20 E9 9A                  ..
        pla                                     ; 99C4 68                       h
        sta     Enemy_X_Position,x              ; 99C5 95 87                    ..
        lda     CurrentPageLoc                  ; 99C7 AD 25 07                 .%.
        sta     Enemy_PageLoc,x                 ; 99CA 95 6E                    .n
        lda     #$01                            ; 99CC A9 01                    ..
        sta     Enemy_Y_HighPos,x               ; 99CE 95 B6                    ..
        sta     Enemy_Flag,x                    ; 99D0 95 0F                    ..
        lda     #$90                            ; 99D2 A9 90                    ..
        sta     Enemy_Y_Position,x              ; 99D4 95 CF                    ..
        lda     #$31                            ; 99D6 A9 31                    .1
        sta     Enemy_ID,x                      ; 99D8 95 16                    ..
        rts                                     ; 99DA 60                       `

; ----------------------------------------------------------------------------
L99DB:
        ldy     #$52                            ; 99DB A0 52                    .R
        sty     $06AB                           ; 99DD 8C AB 06                 ...
L99E0:
        rts                                     ; 99E0 60                       `

; ----------------------------------------------------------------------------
        .byte   $20,$AD,$9D,$84,$07,$A0,$04,$20 ; 99E1 20 AD 9D 84 07 A0 04 20   ...... 
        .byte   $A1,$9D,$8A,$48,$BC,$30,$07,$A6 ; 99E9 A1 9D 8A 48 BC 30 07 A6  ...H.0..
        .byte   $07,$A9,$0B,$85,$06,$B9,$41,$99 ; 99F1 07 A9 0B 85 06 B9 41 99  ......A.
        .byte   $9D,$A1,$06,$E8,$A5,$06,$F0,$07 ; 99F9 9D A1 06 E8 A5 06 F0 07  ........
        .byte   $C8,$C8,$C8,$C8,$C8,$C6,$06,$E0 ; 9A01 C8 C8 C8 C8 C8 C6 06 E0  ........
        .byte   $0B,$D0,$EA,$68,$AA,$AD,$25,$07 ; 9A09 0B D0 EA 68 AA AD 25 07  ...h..%.
        .byte   $F0,$31,$BD,$30,$07,$C9,$01,$F0 ; 9A11 F0 31 BD 30 07 C9 01 F0  .1.0....
        .byte   $2A,$A4,$07,$D0,$04,$C9,$03,$F0 ; 9A19 2A A4 07 D0 04 C9 03 F0  *.......
        .byte   $22,$C9,$02,$D0,$1E,$20,$BD,$9D ; 9A21 22 C9 02 D0 1E 20 BD 9D  ".... ..
        .byte   $48,$20,$E9,$9A,$68,$95,$87,$AD ; 9A29 48 20 E9 9A 68 95 87 AD  H ..h...
        .byte   $25,$07,$95,$6E,$A9,$01,$95,$B6 ; 9A31 25 07 95 6E A9 01 95 B6  %..n....
        .byte   $95,$0F,$A9,$90,$95,$CF,$A9,$31 ; 9A39 95 0F A9 90 95 CF A9 31  .......1
        .byte   $95,$16,$60,$60                 ; 9A41 95 16 60 60              ..``
; ----------------------------------------------------------------------------
        jsr     L9DAD                           ; 9A45 20 AD 9D                  ..
        ldy     AreaObjectLength,x              ; 9A48 BC 30 07                 .0.
        ldx     $07                             ; 9A4B A6 07                    ..
        lda     #$1C                            ; 9A4D A9 1C                    ..
        sta     MetatileBuffer,x                ; 9A4F 9D A1 06                 ...
        lda     #$1F                            ; 9A52 A9 1F                    ..
        sta     $06A2,x                         ; 9A54 9D A2 06                 ...
        rts                                     ; 9A57 60                       `

; ----------------------------------------------------------------------------
        ldy     #$03                            ; 9A58 A0 03                    ..
        jsr     L9DA1                           ; 9A5A 20 A1 9D                  ..
        ldy     #$0A                            ; 9A5D A0 0A                    ..
        jsr     L9A89                           ; 9A5F 20 89 9A                  ..
        bcs     L9A74                           ; 9A62 B0 10                    ..
        ldx     #$06                            ; 9A64 A2 06                    ..
L9A66:
        lda     #$00                            ; 9A66 A9 00                    ..
        sta     MetatileBuffer,x                ; 9A68 9D A1 06                 ...
        dex                                     ; 9A6B CA                       .
        bpl     L9A66                           ; 9A6C 10 F8                    ..
        lda     L9AB7,y                         ; 9A6E B9 B7 9A                 ...
        sta     $06A8                           ; 9A71 8D A8 06                 ...
L9A74:
        rts                                     ; 9A74 60                       `

; ----------------------------------------------------------------------------
L9A75:
        .byte   $15,$14,$00,$00                 ; 9A75 15 14 00 00              ....
L9A79:
        .byte   $15,$1E,$1D,$1C                 ; 9A79 15 1E 1D 1C              ....
L9A7D:
        .byte   $15,$21,$20,$1F                 ; 9A7D 15 21 20 1F              .! .
; ----------------------------------------------------------------------------
        ldy     #$03                            ; 9A81 A0 03                    ..
        jsr     L9DA1                           ; 9A83 20 A1 9D                  ..
        jsr     L9DAD                           ; 9A86 20 AD 9D                  ..
L9A89:
        dey                                     ; 9A89 88                       .
        dey                                     ; 9A8A 88                       .
        sty     $05                             ; 9A8B 84 05                    ..
        ldy     AreaObjectLength,x              ; 9A8D BC 30 07                 .0.
        sty     L0006                           ; 9A90 84 06                    ..
        ldx     $05                             ; 9A92 A6 05                    ..
        inx                                     ; 9A94 E8                       .
        lda     L9A75,y                         ; 9A95 B9 75 9A                 .u.
        cmp     #$00                            ; 9A98 C9 00                    ..
        beq     L9AA4                           ; 9A9A F0 08                    ..
        ldx     #$00                            ; 9A9C A2 00                    ..
        ldy     $05                             ; 9A9E A4 05                    ..
        jsr     L9D6F                           ; 9AA0 20 6F 9D                  o.
        clc                                     ; 9AA3 18                       .
L9AA4:
        ldy     L0006                           ; 9AA4 A4 06                    ..
        lda     L9A79,y                         ; 9AA6 B9 79 9A                 .y.
        sta     MetatileBuffer,x                ; 9AA9 9D A1 06                 ...
        lda     L9A7D,y                         ; 9AAC B9 7D 9A                 .}.
        sta     $06A2,x                         ; 9AAF 9D A2 06                 ...
        rts                                     ; 9AB2 60                       `

; ----------------------------------------------------------------------------
L9AB3:
        .byte   $11,$10                         ; 9AB3 11 10                    ..
L9AB5:
        .byte   $15,$14                         ; 9AB5 15 14                    ..
L9AB7:
        .byte   $13,$12,$15,$14                 ; 9AB7 13 12 15 14              ....
; ----------------------------------------------------------------------------
        jsr     L9AD8                           ; 9ABB 20 D8 9A                  ..
        lda     $00                             ; 9ABE A5 00                    ..
        beq     L9AC6                           ; 9AC0 F0 04                    ..
        iny                                     ; 9AC2 C8                       .
        iny                                     ; 9AC3 C8                       .
        iny                                     ; 9AC4 C8                       .
        iny                                     ; 9AC5 C8                       .
L9AC6:
        ldx     $07                             ; 9AC6 A6 07                    ..
        lda     L9AB3,y                         ; 9AC8 B9 B3 9A                 ...
        sta     MetatileBuffer,x                ; 9ACB 9D A1 06                 ...
        inx                                     ; 9ACE E8                       .
        lda     L9AB5,y                         ; 9ACF B9 B5 9A                 ...
        ldy     L0006                           ; 9AD2 A4 06                    ..
        dey                                     ; 9AD4 88                       .
        jmp     L9D6F                           ; 9AD5 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
L9AD8:
        ldy     #$01                            ; 9AD8 A0 01                    ..
        jsr     L9DA1                           ; 9ADA 20 A1 9D                  ..
        jsr     L9DAD                           ; 9ADD 20 AD 9D                  ..
        tya                                     ; 9AE0 98                       .
        and     #$07                            ; 9AE1 29 07                    ).
        sta     L0006                           ; 9AE3 85 06                    ..
        ldy     AreaObjectLength,x              ; 9AE5 BC 30 07                 .0.
        rts                                     ; 9AE8 60                       `

; ----------------------------------------------------------------------------
L9AE9:
        ldx     #$00                            ; 9AE9 A2 00                    ..
L9AEB:
        clc                                     ; 9AEB 18                       .
        lda     Enemy_Flag,x                    ; 9AEC B5 0F                    ..
        beq     L9AF5                           ; 9AEE F0 05                    ..
        inx                                     ; 9AF0 E8                       .
        cpx     #$05                            ; 9AF1 E0 05                    ..
        bne     L9AEB                           ; 9AF3 D0 F6                    ..
L9AF5:
        rts                                     ; 9AF5 60                       `

; ----------------------------------------------------------------------------
L9AF6:
        ldy     #$01                            ; 9AF6 A0 01                    ..
        jsr     L9DA1                           ; 9AF8 20 A1 9D                  ..
        jsr     L9DAD                           ; 9AFB 20 AD 9D                  ..
        dey                                     ; 9AFE 88                       .
        dey                                     ; 9AFF 88                       .
        sty     $05                             ; 9B00 84 05                    ..
        ldy     AreaObjectLength,x              ; 9B02 BC 30 07                 .0.
        sty     L0006                           ; 9B05 84 06                    ..
        rts                                     ; 9B07 60                       `

; ----------------------------------------------------------------------------
        jsr     L9AF6                           ; 9B08 20 F6 9A                  ..
        lda     L9AB5,y                         ; 9B0B B9 B5 9A                 ...
        ldx     #$01                            ; 9B0E A2 01                    ..
        ldy     $05                             ; 9B10 A4 05                    ..
        jmp     L9B23                           ; 9B12 4C 23 9B                 L#.

; ----------------------------------------------------------------------------
        .byte   $20,$F6,$9A,$A9,$08,$18,$E5,$05 ; 9B15 20 F6 9A A9 08 18 E5 05   .......
        .byte   $AA,$B9,$B5,$9A,$A4,$05         ; 9B1D AA B9 B5 9A A4 05        ......
; ----------------------------------------------------------------------------
L9B23:
        jsr     L9D6F                           ; 9B23 20 6F 9D                  o.
        clc                                     ; 9B26 18                       .
        ldy     L0006                           ; 9B27 A4 06                    ..
        lda     L9B30,y                         ; 9B29 B9 30 9B                 .0.
        sta     MetatileBuffer,x                ; 9B2C 9D A1 06                 ...
        rts                                     ; 9B2F 60                       `

; ----------------------------------------------------------------------------
L9B30:
        .byte   $28,$27,$20,$9E,$9D,$A9,$86,$8D ; 9B30 28 27 20 9E 9D A9 86 8D  (' .....
        .byte   $AB,$06,$A2,$0B,$A0,$01,$A9,$87 ; 9B38 AB 06 A2 0B A0 01 A9 87  ........
        .byte   $4C,$6F,$9D                     ; 9B40 4C 6F 9D                 Lo.
; ----------------------------------------------------------------------------
        lda     #$03                            ; 9B43 A9 03                    ..
        bit     $07A9                           ; 9B45 2C A9 07                 ,..
        pha                                     ; 9B48 48                       H
        jsr     L9D9E                           ; 9B49 20 9E 9D                  ..
        pla                                     ; 9B4C 68                       h
        tax                                     ; 9B4D AA                       .
        lda     #$C0                            ; 9B4E A9 C0                    ..
        sta     MetatileBuffer,x                ; 9B50 9D A1 06                 ...
        rts                                     ; 9B53 60                       `

; ----------------------------------------------------------------------------
        .byte   $A9,$06,$2C,$A9,$05,$2C,$A9,$09 ; 9B54 A9 06 2C A9 05 2C A9 09  ..,..,..
        .byte   $48,$20,$9E,$9D,$68,$AA,$A9,$0B ; 9B5C 48 20 9E 9D 68 AA A9 0B  H ..h...
        .byte   $9D,$A1,$06,$E8,$A0,$00,$A9,$63 ; 9B64 9D A1 06 E8 A0 00 A9 63  .......c
        .byte   $4C,$6F,$9D,$20,$AD,$9D,$A2,$02 ; 9B6C 4C 6F 9D 20 AD 9D A2 02  Lo. ....
        .byte   $A9,$6D,$4C,$6F,$9D             ; 9B74 A9 6D 4C 6F 9D           .mLo.
; ----------------------------------------------------------------------------
        lda     #$24                            ; 9B79 A9 24                    .$
        sta     MetatileBuffer                  ; 9B7B 8D A1 06                 ...
        ldx     #$01                            ; 9B7E A2 01                    ..
        ldy     #$08                            ; 9B80 A0 08                    ..
        lda     #$25                            ; 9B82 A9 25                    .%
        jsr     L9D6F                           ; 9B84 20 6F 9D                  o.
        lda     #$61                            ; 9B87 A9 61                    .a
        sta     $06AB                           ; 9B89 8D AB 06                 ...
        jsr     L9DBD                           ; 9B8C 20 BD 9D                  ..
        sec                                     ; 9B8F 38                       8
        sbc     #$08                            ; 9B90 E9 08                    ..
        sta     $8C                             ; 9B92 85 8C                    ..
        lda     CurrentPageLoc                  ; 9B94 AD 25 07                 .%.
        sbc     #$00                            ; 9B97 E9 00                    ..
        sta     $73                             ; 9B99 85 73                    .s
        lda     #$30                            ; 9B9B A9 30                    .0
        sta     $D4                             ; 9B9D 85 D4                    ..
        lda     #$B0                            ; 9B9F A9 B0                    ..
        sta     FlagpoleFNum_Y_Pos              ; 9BA1 8D 0D 01                 ...
        lda     #$30                            ; 9BA4 A9 30                    .0
        sta     $1B                             ; 9BA6 85 1B                    ..
        inc     $14                             ; 9BA8 E6 14                    ..
        rts                                     ; 9BAA 60                       `

; ----------------------------------------------------------------------------
        .byte   $A2,$00,$A0,$0F,$4C,$C4,$9B,$8A ; 9BAB A2 00 A0 0F 4C C4 9B 8A  ....L...
        .byte   $48,$A2,$03,$A0,$0F,$A9,$44,$20 ; 9BB3 48 A2 03 A0 0F A9 44 20  H.....D 
        .byte   $6F,$9D,$68,$AA,$20,$AD,$9D,$A2 ; 9BBB 6F 9D 68 AA 20 AD 9D A2  o.h. ...
        .byte   $03,$A9,$40,$4C,$6F,$9D         ; 9BC3 03 A9 40 4C 6F 9D        ..@Lo.
L9BC9:
        .byte   $C3,$C2,$C2,$C2                 ; 9BC9 C3 C2 C2 C2              ....
; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 9BCD AC 4E 07                 .N.
        lda     L9BC9,y                         ; 9BD0 B9 C9 9B                 ...
L9BD4           := * + 1
        jmp     L9C1F                           ; 9BD3 4C 1F 9C                 L..

; ----------------------------------------------------------------------------
        .byte   $06                             ; 9BD6 06                       .
L9BD7:
        .byte   $07,$08,$C8,$0C,$89             ; 9BD7 07 08 C8 0C 89           .....
; ----------------------------------------------------------------------------
        ldy     #$0C                            ; 9BDC A0 0C                    ..
        jsr     L9DA1                           ; 9BDE 20 A1 9D                  ..
        jmp     L9BE9                           ; 9BE1 4C E9 9B                 L..

; ----------------------------------------------------------------------------
        lda     #$08                            ; 9BE4 A9 08                    ..
        sta     VRAM_Buffer_AddrCtrl            ; 9BE6 8D 73 07                 .s.
L9BE9:
        ldy     $00                             ; 9BE9 A4 00                    ..
        ldx     L9BD4,y                         ; 9BEB BE D4 9B                 ...
        lda     L9BD7,y                         ; 9BEE B9 D7 9B                 ...
        jmp     L9BFB                           ; 9BF1 4C FB 9B                 L..

; ----------------------------------------------------------------------------
        jsr     L9DAD                           ; 9BF4 20 AD 9D                  ..
        ldx     $07                             ; 9BF7 A6 07                    ..
        lda     #$C7                            ; 9BF9 A9 C7                    ..
L9BFB:
        ldy     #$00                            ; 9BFB A0 00                    ..
        jmp     L9D6F                           ; 9BFD 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
L9C00:
        .byte   $69,$61,$61,$62                 ; 9C00 69 61 61 62              iaab
L9C04:
        .byte   $22,$51,$52,$52,$88             ; 9C04 22 51 52 52 88           "QRR.
; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 9C09 AC 4E 07                 .N.
        lda     CloudTypeOverride               ; 9C0C AD 43 07                 .C.
        beq     L9C13                           ; 9C0F F0 02                    ..
        .byte   $A0,$04                         ; 9C11 A0 04                    ..
; ----------------------------------------------------------------------------
L9C13:
        lda     L9C04,y                         ; 9C13 B9 04 9C                 ...
        jmp     L9C1F                           ; 9C16 4C 1F 9C                 L..

; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 9C19 AC 4E 07                 .N.
        lda     L9C00,y                         ; 9C1C B9 00 9C                 ...
L9C1F:
        pha                                     ; 9C1F 48                       H
        jsr     L9D9E                           ; 9C20 20 9E 9D                  ..
L9C23:
        ldx     $07                             ; 9C23 A6 07                    ..
        ldy     #$00                            ; 9C25 A0 00                    ..
        pla                                     ; 9C27 68                       h
        jmp     L9D6F                           ; 9C28 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 9C2B AC 4E 07                 .N.
        lda     L9C04,y                         ; 9C2E B9 04 9C                 ...
        jmp     L9C3A                           ; 9C31 4C 3A 9C                 L:.

; ----------------------------------------------------------------------------
        ldy     AreaType                        ; 9C34 AC 4E 07                 .N.
        lda     L9C00,y                         ; 9C37 B9 00 9C                 ...
L9C3A:
        pha                                     ; 9C3A 48                       H
        jsr     L9DAD                           ; 9C3B 20 AD 9D                  ..
        pla                                     ; 9C3E 68                       h
        ldx     $07                             ; 9C3F A6 07                    ..
        jmp     L9D6F                           ; 9C41 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
        .byte   $20,$AD,$9D,$A6,$07,$A9,$64,$9D ; 9C44 20 AD 9D A6 07 A9 64 9D   .....d.
        .byte   $A1,$06,$E8,$88,$30,$0E,$A9,$65 ; 9C4C A1 06 E8 88 30 0E A9 65  ....0..e
        .byte   $9D,$A1,$06,$E8,$88,$30,$05,$A9 ; 9C54 9D A1 06 E8 88 30 05 A9  .....0..
        .byte   $66,$20,$6F,$9D,$AE,$6A,$04,$20 ; 9C5C 66 20 6F 9D AE 6A 04 20  f o..j. 
        .byte   $C5,$9D,$9D,$77,$04,$AD,$25,$07 ; 9C64 C5 9D 9D 77 04 AD 25 07  ...w..%.
        .byte   $9D,$6B,$04,$20,$BD,$9D,$9D,$71 ; 9C6C 9D 6B 04 20 BD 9D 9D 71  .k. ...q
        .byte   $04,$E8,$E0,$06,$90,$02,$A2,$00 ; 9C74 04 E8 E0 06 90 02 A2 00  ........
        .byte   $8E,$6A,$04,$60                 ; 9C7C 8E 6A 04 60              .j.`
L9C80:
        .byte   $07,$07,$06,$05,$04,$03,$02,$01 ; 9C80 07 07 06 05 04 03 02 01  ........
        .byte   $00                             ; 9C88 00                       .
L9C89:
        .byte   $03,$03,$04,$05,$06,$07,$08,$09 ; 9C89 03 03 04 05 06 07 08 09  ........
        .byte   $0A                             ; 9C91 0A                       .
; ----------------------------------------------------------------------------
        jsr     L9D9E                           ; 9C92 20 9E 9D                  ..
        bcc     L9C9C                           ; 9C95 90 05                    ..
        lda     #$09                            ; 9C97 A9 09                    ..
        sta     StaircaseControl                ; 9C99 8D 34 07                 .4.
L9C9C:
        dec     StaircaseControl                ; 9C9C CE 34 07                 .4.
        ldy     StaircaseControl                ; 9C9F AC 34 07                 .4.
        ldx     L9C89,y                         ; 9CA2 BE 89 9C                 ...
        lda     L9C80,y                         ; 9CA5 B9 80 9C                 ...
        tay                                     ; 9CA8 A8                       .
        lda     #$61                            ; 9CA9 A9 61                    .a
        jmp     L9D6F                           ; 9CAB 4C 6F 9D                 Lo.

; ----------------------------------------------------------------------------
        jsr     L9DAD                           ; 9CAE 20 AD 9D                  ..
        jsr     L9AE9                           ; 9CB1 20 E9 9A                  ..
        jsr     L9DBD                           ; 9CB4 20 BD 9D                  ..
        sta     Enemy_X_Position,x              ; 9CB7 95 87                    ..
        lda     CurrentPageLoc                  ; 9CB9 AD 25 07                 .%.
        sta     Enemy_PageLoc,x                 ; 9CBC 95 6E                    .n
        jsr     L9DC5                           ; 9CBE 20 C5 9D                  ..
        sta     Enemy_Y_Position,x              ; 9CC1 95 CF                    ..
        sta     Enemy_X_Speed,x                 ; 9CC3 95 58                    .X
        lda     #$32                            ; 9CC5 A9 32                    .2
        sta     Enemy_ID,x                      ; 9CC7 95 16                    ..
        ldy     #$01                            ; 9CC9 A0 01                    ..
        sty     Enemy_Y_HighPos,x               ; 9CCB 94 B6                    ..
        inc     Enemy_Flag,x                    ; 9CCD F6 0F                    ..
        ldx     $07                             ; 9CCF A6 07                    ..
        lda     #$67                            ; 9CD1 A9 67                    .g
        sta     MetatileBuffer,x                ; 9CD3 9D A1 06                 ...
        lda     #$68                            ; 9CD6 A9 68                    .h
        sta     $06A2,x                         ; 9CD8 9D A2 06                 ...
        rts                                     ; 9CDB 60                       `

; ----------------------------------------------------------------------------
        .byte   $AD,$5D,$07,$F0,$40,$A9,$00,$8D ; 9CDC AD 5D 07 F0 40 A9 00 8D  .]..@...
        .byte   $5D,$07,$4C,$FE,$9C             ; 9CE4 5D 07 4C FE 9C           ].L..
; ----------------------------------------------------------------------------
        jsr     L9D1B                           ; 9CE9 20 1B 9D                  ..
        tya                                     ; 9CEC 98                       .
        sbc     #$08                            ; 9CED E9 08                    ..
        tay                                     ; 9CEF A8                       .
        jmp     L9D11                           ; 9CF0 4C 11 9D                 L..

; ----------------------------------------------------------------------------
        jsr     L9D1B                           ; 9CF3 20 1B 9D                  ..
        jmp     L9D11                           ; 9CF6 4C 11 9D                 L..

; ----------------------------------------------------------------------------
        lda     #$00                            ; 9CF9 A9 00                    ..
        sta     BrickCoinTimerFlag              ; 9CFB 8D BC 06                 ...
        jsr     L9D1B                           ; 9CFE 20 1B 9D                  ..
        sty     $07                             ; 9D01 84 07                    ..
        lda     #$03                            ; 9D03 A9 03                    ..
        ldy     AreaType                        ; 9D05 AC 4E 07                 .N.
        dey                                     ; 9D08 88                       .
        beq     L9D0D                           ; 9D09 F0 02                    ..
        lda     #$08                            ; 9D0B A9 08                    ..
L9D0D:
        clc                                     ; 9D0D 18                       .
        adc     $07                             ; 9D0E 65 07                    e.
        tay                                     ; 9D10 A8                       .
L9D11:
        lda     LAED2,y                         ; 9D11 B9 D2 AE                 ...
        pha                                     ; 9D14 48                       H
        jsr     L9DAD                           ; 9D15 20 AD 9D                  ..
        jmp     L9C23                           ; 9D18 4C 23 9C                 L#.

; ----------------------------------------------------------------------------
L9D1B:
        lda     $00                             ; 9D1B A5 00                    ..
        sec                                     ; 9D1D 38                       8
        sbc     #$00                            ; 9D1E E9 00                    ..
        tay                                     ; 9D20 A8                       .
        rts                                     ; 9D21 60                       `

; ----------------------------------------------------------------------------
        ldy     AreaObjOffsetBuffer,x           ; 9D22 BC 2D 07                 .-.
        lda     (AreaDataLow),y                 ; 9D25 B1 E7                    ..
        lsr     a                               ; 9D27 4A                       J
        lsr     a                               ; 9D28 4A                       J
        lsr     a                               ; 9D29 4A                       J
        lsr     a                               ; 9D2A 4A                       J
        sta     $7FFF                           ; 9D2B 8D FF 7F                 ...
        rts                                     ; 9D2E 60                       `

; ----------------------------------------------------------------------------
L9D2F:
        .byte   $87,$00,$00,$00                 ; 9D2F 87 00 00 00              ....
; ----------------------------------------------------------------------------
        jsr     L9D9E                           ; 9D33 20 9E 9D                  ..
        bcc     L9D65                           ; 9D36 90 2D                    .-
        lda     AreaType                        ; 9D38 AD 4E 07                 .N.
        bne     L9D65                           ; 9D3B D0 28                    .(
        ldx     Cannon_Offset                   ; 9D3D AE 6A 04                 .j.
        jsr     L9DBD                           ; 9D40 20 BD 9D                  ..
        sec                                     ; 9D43 38                       8
        sbc     #$10                            ; 9D44 E9 10                    ..
        sta     Cannon_X_Position,x             ; 9D46 9D 71 04                 .q.
        lda     CurrentPageLoc                  ; 9D49 AD 25 07                 .%.
        sbc     #$00                            ; 9D4C E9 00                    ..
        sta     Cannon_PageLoc,x                ; 9D4E 9D 6B 04                 .k.
        iny                                     ; 9D51 C8                       .
        iny                                     ; 9D52 C8                       .
        tya                                     ; 9D53 98                       .
        asl     a                               ; 9D54 0A                       .
        asl     a                               ; 9D55 0A                       .
        asl     a                               ; 9D56 0A                       .
        asl     a                               ; 9D57 0A                       .
        sta     Cannon_Y_Position,x             ; 9D58 9D 77 04                 .w.
        inx                                     ; 9D5B E8                       .
        cpx     #$05                            ; 9D5C E0 05                    ..
        bcc     L9D62                           ; 9D5E 90 02                    ..
        .byte   $A2,$00                         ; 9D60 A2 00                    ..
; ----------------------------------------------------------------------------
L9D62:
        stx     Cannon_Offset                   ; 9D62 8E 6A 04                 .j.
L9D65:
        ldx     AreaType                        ; 9D65 AE 4E 07                 .N.
        lda     L9D2F,x                         ; 9D68 BD 2F 9D                 ./.
        ldx     #$08                            ; 9D6B A2 08                    ..
        ldy     #$0F                            ; 9D6D A0 0F                    ..
L9D6F:
        sty     AreaObjectHeight                ; 9D6F 8C 35 07                 .5.
        ldy     MetatileBuffer,x                ; 9D72 BC A1 06                 ...
        beq     L9D8F                           ; 9D75 F0 18                    ..
        cpy     #$17                            ; 9D77 C0 17                    ..
        beq     L9D92                           ; 9D79 F0 17                    ..
        cpy     #$1A                            ; 9D7B C0 1A                    ..
        beq     L9D92                           ; 9D7D F0 13                    ..
        cpy     #$C0                            ; 9D7F C0 C0                    ..
        beq     L9D8F                           ; 9D81 F0 0C                    ..
        cpy     #$C0                            ; 9D83 C0 C0                    ..
        bcs     L9D92                           ; 9D85 B0 0B                    ..
        cpy     #$54                            ; 9D87 C0 54                    .T
        bne     L9D8F                           ; 9D89 D0 04                    ..
        cmp     #$50                            ; 9D8B C9 50                    .P
        beq     L9D92                           ; 9D8D F0 03                    ..
L9D8F:
        sta     MetatileBuffer,x                ; 9D8F 9D A1 06                 ...
L9D92:
        inx                                     ; 9D92 E8                       .
        cpx     #$0D                            ; 9D93 E0 0D                    ..
        bcs     L9D9D                           ; 9D95 B0 06                    ..
        ldy     AreaObjectHeight                ; 9D97 AC 35 07                 .5.
        dey                                     ; 9D9A 88                       .
        bpl     L9D6F                           ; 9D9B 10 D2                    ..
L9D9D:
        rts                                     ; 9D9D 60                       `

; ----------------------------------------------------------------------------
L9D9E:
        jsr     L9DAD                           ; 9D9E 20 AD 9D                  ..
L9DA1:
        lda     AreaObjectLength,x              ; 9DA1 BD 30 07                 .0.
        clc                                     ; 9DA4 18                       .
        bpl     L9DAC                           ; 9DA5 10 05                    ..
        tya                                     ; 9DA7 98                       .
        sta     AreaObjectLength,x              ; 9DA8 9D 30 07                 .0.
        sec                                     ; 9DAB 38                       8
L9DAC:
        rts                                     ; 9DAC 60                       `

; ----------------------------------------------------------------------------
L9DAD:
        ldy     AreaObjOffsetBuffer,x           ; 9DAD BC 2D 07                 .-.
        lda     (AreaDataLow),y                 ; 9DB0 B1 E7                    ..
        and     #$0F                            ; 9DB2 29 0F                    ).
        sta     $07                             ; 9DB4 85 07                    ..
        iny                                     ; 9DB6 C8                       .
        lda     (AreaDataLow),y                 ; 9DB7 B1 E7                    ..
        and     #$0F                            ; 9DB9 29 0F                    ).
        tay                                     ; 9DBB A8                       .
        rts                                     ; 9DBC 60                       `

; ----------------------------------------------------------------------------
L9DBD:
        lda     CurrentColumnPos                ; 9DBD AD 26 07                 .&.
        asl     a                               ; 9DC0 0A                       .
        asl     a                               ; 9DC1 0A                       .
        asl     a                               ; 9DC2 0A                       .
        asl     a                               ; 9DC3 0A                       .
        rts                                     ; 9DC4 60                       `

; ----------------------------------------------------------------------------
L9DC5:
        lda     $07                             ; 9DC5 A5 07                    ..
        asl     a                               ; 9DC7 0A                       .
        asl     a                               ; 9DC8 0A                       .
        asl     a                               ; 9DC9 0A                       .
        asl     a                               ; 9DCA 0A                       .
        clc                                     ; 9DCB 18                       .
        adc     #$20                            ; 9DCC 69 20                    i 
        rts                                     ; 9DCE 60                       `

; ----------------------------------------------------------------------------
L9DCF:
        .byte   $00,$D0                         ; 9DCF 00 D0                    ..
L9DD1:
        .byte   $05,$05                         ; 9DD1 05 05                    ..
; ----------------------------------------------------------------------------
L9DD3:
        pha                                     ; 9DD3 48                       H
        lsr     a                               ; 9DD4 4A                       J
        lsr     a                               ; 9DD5 4A                       J
        lsr     a                               ; 9DD6 4A                       J
        lsr     a                               ; 9DD7 4A                       J
        tay                                     ; 9DD8 A8                       .
        lda     L9DD1,y                         ; 9DD9 B9 D1 9D                 ...
        sta     $07                             ; 9DDC 85 07                    ..
        pla                                     ; 9DDE 68                       h
        and     #$0F                            ; 9DDF 29 0F                    ).
        clc                                     ; 9DE1 18                       .
        adc     L9DCF,y                         ; 9DE2 79 CF 9D                 y..
        sta     L0006                           ; 9DE5 85 06                    ..
        rts                                     ; 9DE7 60                       `

; ----------------------------------------------------------------------------
        .byte   $FF,$FF,$12,$36,$0E,$0E,$0E,$32 ; 9DE8 FF FF 12 36 0E 0E 0E 32  ...6...2
        .byte   $32,$32,$0A,$26,$40             ; 9DF0 32 32 0A 26 40           22.&@
; ----------------------------------------------------------------------------
LoadAreaPointer:
L9DF5:
        jsr     L9E05                           ; 9DF5 20 05 9E                  ..
        sta     AreaPointer                     ; 9DF8 8D 50 07                 .P.
L9DFB:
        and     #$60                            ; 9DFB 29 60                    )`
        asl     a                               ; 9DFD 0A                       .
        rol     a                               ; 9DFE 2A                       *
        rol     a                               ; 9DFF 2A                       *
        rol     a                               ; 9E00 2A                       *
        sta     AreaType                        ; 9E01 8D 4E 07                 .N.
        rts                                     ; 9E04 60                       `

; ----------------------------------------------------------------------------
FindAreaPointer:
L9E05:
        ldy     WorldNumber                     ; 9E05 AC 5F 07                 ._.
        lda     L9EA6,y                         ; 9E08 B9 A6 9E                 ...
        clc                                     ; 9E0B 18                       .
        adc     AreaNumber                      ; 9E0C 6D 60 07                 m`.
        tay                                     ; 9E0F A8                       .
        lda     L9EAE,y                         ; 9E10 B9 AE 9E                 ...
        rts                                     ; 9E13 60                       `

; ----------------------------------------------------------------------------
GetAreaDataAddrs:
L9E14:
        lda     AreaPointer                     ; 9E14 AD 50 07                 .P.
        jsr     L9DFB                           ; 9E17 20 FB 9D                  ..
        tay                                     ; 9E1A A8                       .
        jsr BANK_LoadAreaData
        lda     #$00                         ; 9E2B B9 D7 9E                 ...
        sta     EnemyDataLow                    ; 9E2E 85 E9                    ..
        lda     #$61                         ; 9E30 B9 0D 9F                 ...
        sta     EnemyDataHigh                   ; 9E33 85 EA                    ..
        ldy     AreaType                        ; 9E35 AC 4E 07                 .N.
        lda     L9F43,y                         ; 9E38 B9 43 9F                 .C.
        clc                                     ; 9E3B 18                       .
        adc     AreaAddrsLOffset                ; 9E3C 6D 4F 07                 mO.
        tay                                     ; 9E3F A8                       .
        lda     #$00                         ; 9E40 B9 47 9F                 .G.
        sta     AreaDataLow                     ; 9E43 85 E7                    ..
        lda     #$60                         ; 9E45 B9 7D 9F                 .}.
        sta     AreaDataHigh                    ; 9E48 85 E8                    ..
        ldy     #$00                            ; 9E4A A0 00                    ..
        lda     (AreaDataLow),y                 ; 9E4C B1 E7                    ..
        pha                                     ; 9E4E 48                       H
        and     #$07                            ; 9E4F 29 07                    ).
        cmp     #$04                            ; 9E51 C9 04                    ..
        bcc     L9E5A                           ; 9E53 90 05                    ..
        .byte   $8D,$44,$07,$A9,$00             ; 9E55 8D 44 07 A9 00           .D...
; ----------------------------------------------------------------------------
L9E5A:
        sta     ForegroundScenery               ; 9E5A 8D 41 07                 .A.
        pla                                     ; 9E5D 68                       h
        pha                                     ; 9E5E 48                       H
        and     #$38                            ; 9E5F 29 38                    )8
        lsr     a                               ; 9E61 4A                       J
        lsr     a                               ; 9E62 4A                       J
        lsr     a                               ; 9E63 4A                       J
        sta     PlayerEntranceCtrl              ; 9E64 8D 10 07                 ...
        pla                                     ; 9E67 68                       h
        and     #$C0                            ; 9E68 29 C0                    ).
        clc                                     ; 9E6A 18                       .
        rol     a                               ; 9E6B 2A                       *
        rol     a                               ; 9E6C 2A                       *
        rol     a                               ; 9E6D 2A                       *
        sta     GameTimerSetting                ; 9E6E 8D 15 07                 ...
        iny                                     ; 9E71 C8                       .
        lda     (AreaDataLow),y                 ; 9E72 B1 E7                    ..
        pha                                     ; 9E74 48                       H
        and     #$0F                            ; 9E75 29 0F                    ).
        sta     TerrainControl                  ; 9E77 8D 27 07                 .'.
        pla                                     ; 9E7A 68                       h
        pha                                     ; 9E7B 48                       H
        and     #$30                            ; 9E7C 29 30                    )0
        lsr     a                               ; 9E7E 4A                       J
        lsr     a                               ; 9E7F 4A                       J
        lsr     a                               ; 9E80 4A                       J
        lsr     a                               ; 9E81 4A                       J
        sta     BackgroundScenery               ; 9E82 8D 42 07                 .B.
        pla                                     ; 9E85 68                       h
        and     #$C0                            ; 9E86 29 C0                    ).
        clc                                     ; 9E88 18                       .
        rol     a                               ; 9E89 2A                       *
        rol     a                               ; 9E8A 2A                       *
        rol     a                               ; 9E8B 2A                       *
        cmp     #$03                            ; 9E8C C9 03                    ..
        bne     L9E95                           ; 9E8E D0 05                    ..
        .byte   $8D,$43,$07,$A9,$00             ; 9E90 8D 43 07 A9 00           .C...
; ----------------------------------------------------------------------------
L9E95:
        sta     AreaStyle                       ; 9E95 8D 33 07                 .3.
        lda     AreaDataLow                     ; 9E98 A5 E7                    ..
        clc                                     ; 9E9A 18                       .
        adc     #$02                            ; 9E9B 69 02                    i.
        sta     AreaDataLow                     ; 9E9D 85 E7                    ..
        lda     AreaDataHigh                    ; 9E9F A5 E8                    ..
        adc     #$00                            ; 9EA1 69 00                    i.
        sta     AreaDataHigh                    ; 9EA3 85 E8                    ..
        rts                                     ; 9EA5 60                       `



nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


; ----------------------------------------------------------------------------
L9EA6:
        .byte   $00,$05,$0A,$0F,$13,$17,$1B,$20 ; 9EA6 00 05 0A 0F 13 17 1B 20  ....... 
L9EAE:
        .byte   $20,$21,$41,$22,$60,$23,$21,$00 ; 9EAE 20 21 41 22 60 23 21 00   !A"`#!.
        .byte   $26,$61,$27,$01,$2A,$2C,$62,$25 ; 9EB6 26 61 27 01 2A 2C 62 25  &a'.*,b%
        .byte   $2D,$2E,$63,$2F,$35,$31,$64,$36 ; 9EBE 2D 2E 63 2F 35 31 64 36  -.c/51d6
        .byte   $30,$37,$65,$38,$39,$04,$32,$66 ; 9EC6 30 37 65 38 39 04 32 66  07e89.2f
        .byte   $3B,$34,$3C,$48,$68             ; 9ECE 3B 34 3C 48 68           ;4<Hh
L9ED3:
        .byte   $00,$05,$22,$2B                 ; 9ED3 00 05 22 2B              .."+
L9ED7:
        .byte   $00,$2F,$46,$57,$7A,$C2,$EA,$00 ; 9ED7 00 2F 46 57 7A C2 EA 00  ./FWz...
        .byte   $1F,$78,$85,$AB,$C0,$C1,$DA,$DB ; 9EDF 1F 78 85 AB C0 C1 DA DB  .x......
        .byte   $E5,$FB,$1D,$26,$58,$86,$D3,$E9 ; 9EE7 E5 FB 1D 26 58 86 D3 E9  ...&X...
        .byte   $0F,$13,$3B,$6C,$77,$9D,$D8,$D9 ; 9EEF 0F 13 3B 6C 77 9D D8 D9  ..;lw...
        .byte   $DA,$25,$45,$4E,$63,$6B,$6F,$A0 ; 9EF7 DA 25 45 4E 63 6B 6F A0  .%ENcko.
        .byte   $A4,$BC,$C3,$D9,$F3,$19,$40,$71 ; 9EFF A4 BC C3 D9 F3 19 40 71  ......@q
        .byte   $98,$BF,$04,$0F,$31,$5F         ; 9F07 98 BF 04 0F 31 5F        ....1_
L9F0D:
        .byte   $60,$60,$60,$60,$60,$60,$60,$61 ; 9F0D 60 60 60 60 60 60 60 61  ```````a
        .byte   $61,$61,$61,$61,$61,$61,$61,$61 ; 9F15 61 61 61 61 61 61 61 61  aaaaaaaa
        .byte   $61,$61,$62,$62,$62,$62,$62,$62 ; 9F1D 61 61 62 62 62 62 62 62  aabbbbbb
        .byte   $63,$63,$63,$63,$63,$63,$63,$63 ; 9F25 63 63 63 63 63 63 63 63  cccccccc
        .byte   $63,$64,$64,$64,$64,$64,$64,$64 ; 9F2D 63 64 64 64 64 64 64 64  cddddddd
        .byte   $64,$64,$64,$64,$64,$65,$65,$65 ; 9F35 64 64 64 64 64 65 65 65  dddddeee
        .byte   $65,$65,$66,$66,$66,$66         ; 9F3D 65 65 66 66 66 66        eeffff
L9F43:
        .byte   $00,$05,$22,$2B                 ; 9F43 00 05 22 2B              .."+
L9F47:
        .byte   $5F,$0A,$51,$90,$51,$F6,$89,$32 ; 9F47 5F 0A 51 90 51 F6 89 32  _.Q.Q..2
        .byte   $E7,$78,$9F,$FE,$BD,$CC,$7D,$80 ; 9F4F E7 78 9F FE BD CC 7D 80  .x....}.
        .byte   $AD,$0C,$63,$E6,$53,$EC,$5D,$DA ; 9F57 AD 0C 63 E6 53 EC 5D DA  ..c.S.].
        .byte   $9D,$BC,$17,$B0,$75,$D6,$6F,$7A ; 9F5F 9D BC 17 B0 75 D6 6F 7A  ....u.oz
        .byte   $A3,$0C,$51,$B2,$71,$B6,$A7,$2C ; 9F67 A3 0C 51 B2 71 B6 A7 2C  ..Q.q..,
        .byte   $47,$D8,$33,$A4,$2D,$08,$D5,$86 ; 9F6F 47 D8 33 A4 2D 08 D5 86  G.3.-...
        .byte   $0B,$9C,$7D,$B2,$43,$E6         ; 9F77 0B 9C 7D B2 43 E6        ..}.C.
L9F7D:
        .byte   $66,$67,$67,$67,$68,$68,$69,$6A ; 9F7D 66 67 67 67 68 68 69 6A  fggghhij
        .byte   $6A,$6B,$6B,$6B,$6C,$6C,$6D,$6D ; 9F85 6A 6B 6B 6B 6C 6C 6D 6D  jkkkllmm
        .byte   $6D,$6E,$6E,$6E,$6F,$6F,$70,$70 ; 9F8D 6D 6E 6E 6E 6F 6F 70 70  mnnnoopp
        .byte   $71,$71,$72,$72,$73,$73,$74,$74 ; 9F95 71 71 72 72 73 73 74 74  qqrrsstt
        .byte   $74,$75,$75,$75,$76,$76,$77,$78 ; 9F9D 74 75 75 75 76 76 77 78  tuuuvvwx
        .byte   $78,$78,$79,$79,$7A,$7B,$7B,$7C ; 9FA5 78 78 79 79 7A 7B 7B 7C  xxyyz{{|
        .byte   $7D,$7D,$7E,$7E,$7F,$7F         ; 9FAD 7D 7D 7E 7E 7F 7F        }}~~..
; ----------------------------------------------------------------------------
        lda     OperMode_Task                   ; 9FB3 AD 72 07                 .r.
        jsr     L8F69                           ; 9FB6 20 69 8F                  i.
        .byte   $49,$91,$68,$85,$D6,$91,$C1,$9F ; 9FB9 49 91 68 85 D6 91 C1 9F  I.h.....
; ----------------------------------------------------------------------------
L9FC1:
        ldx     CurrentPlayer                   ; 9FC1 AE 53 07                 .S.
        lda     SavedJoypad1Bits,x              ; 9FC4 BD FC 06                 ...
        sta     SavedJoypad1Bits                ; 9FC7 8D FC 06                 ...
        jsr     LA121                           ; 9FCA 20 21 A1                  !.
        lda     OperMode_Task                   ; 9FCD AD 72 07                 .r.
        cmp     #$03                            ; 9FD0 C9 03                    ..
        bcs     L9FD5                           ; 9FD2 B0 01                    ..
        rts                                     ; 9FD4 60                       `

; ----------------------------------------------------------------------------
L9FD5:
        jsr     LA6FB                           ; 9FD5 20 FB A6                  ..
        ldx     #$00                            ; 9FD8 A2 00                    ..
L9FDA:
        stx     ObjectOffset                    ; 9FDA 86 08                    ..
        jsr     LC000                           ; 9FDC 20 00 C0                  ..
        jsr     L84C4                           ; 9FDF 20 C4 84                  ..
        inx                                     ; 9FE2 E8                       .
        cpx     #$06                            ; 9FE3 E0 06                    ..
        bne     L9FDA                           ; 9FE5 D0 F3                    ..
        jsr     LF1C5                           ; 9FE7 20 C5 F1                  ..
        jsr     LF16F                           ; 9FEA 20 6F F1                  o.
        jsr     LEF2E                           ; 9FED 20 2E EF                  ..
        jsr     LAFC1                           ; 9FF0 20 C1 AF                  ..
        ldx     #$01                            ; 9FF3 A2 01                    ..
        stx     ObjectOffset                    ; 9FF5 86 08                    ..
        jsr     LAF5D                           ; 9FF7 20 5D AF                  ].
        dex                                     ; 9FFA CA                       .
        stx     ObjectOffset                    ; 9FFB 86 08                    ..
        jsr     LAF5D                           ; 9FFD 20 5D AF                  ].
        jsr     LAC72                           ; A000 20 72 AC                  r.
        jsr     LAA98                           ; A003 20 98 AA                  ..
        jsr     LA88F                           ; A006 20 8F A8                  ..
        jsr     LA931                           ; A009 20 31 A9                  1.
        jsr     LA826                           ; A00C 20 26 A8                  &.
        jsr     L8B18                           ; A00F 20 18 8B                  ..
        lda     SprObject_Y_HighPos             ; A012 A5 B5                    ..
        cmp     #$02                            ; A014 C9 02                    ..
        bpl     LA029                           ; A016 10 11                    ..
        lda     StarInvincibleTimer             ; A018 AD 9F 07                 ...
        beq     LA03B                           ; A01B F0 1E                    ..
        cmp     #$04                            ; A01D C9 04                    ..
        bne     LA029                           ; A01F D0 08                    ..
        lda     IntervalTimerControl            ; A021 AD 7F 07                 ...
        bne     LA029                           ; A024 D0 03                    ..
        jsr     L9252                           ; A026 20 52 92                  R.
LA029:
        ldy     StarInvincibleTimer             ; A029 AC 9F 07                 ...
        lda     FrameCounter                    ; A02C A5 09                    ..
        cpy     #$08                            ; A02E C0 08                    ..
        bcs     LA034                           ; A030 B0 02                    ..
        lsr     a                               ; A032 4A                       J
        lsr     a                               ; A033 4A                       J
LA034:
        lsr     a                               ; A034 4A                       J
        jsr     LA35F                           ; A035 20 5F A3                  _.
        jmp     LA03E                           ; A038 4C 3E A0                 L>.

; ----------------------------------------------------------------------------
LA03B:
        jsr     LA371                           ; A03B 20 71 A3                  q.
LA03E:
        lda     A_B_Buttons                     ; A03E A5 0A                    ..
        sta     PreviousA_B_Buttons             ; A040 85 0D                    ..
        lda     #$00                            ; A042 A9 00                    ..
        sta     Left_Right_Buttons              ; A044 85 0C                    ..
LA046:
        lda     VRAM_Buffer_AddrCtrl            ; A046 AD 73 07                 .s.
        cmp     #$06                            ; A049 C9 06                    ..
        beq     LA069                           ; A04B F0 1C                    ..
        lda     AreaParserTaskNum               ; A04D AD 1F 07                 ...
        bne     LA066                           ; A050 D0 14                    ..
        lda     ScrollThirtyTwo                 ; A052 AD 3D 07                 .=.
        cmp     #$20                            ; A055 C9 20                    . 
        bmi     LA069                           ; A057 30 10                    0.
        lda     ScrollThirtyTwo                 ; A059 AD 3D 07                 .=.
        sbc     #$20                            ; A05C E9 20                    . 
        sta     ScrollThirtyTwo                 ; A05E 8D 3D 07                 .=.
        lda     #$00                            ; A061 A9 00                    ..
        sta     VRAM_Buffer2_Offset             ; A063 8D 40 03                 .@.
LA066:
        jsr     L9415                           ; A066 20 15 94                  ..
LA069:
        rts                                     ; A069 60                       `

; ----------------------------------------------------------------------------
LA06A:
        lda     Player_X_Scroll                 ; A06A AD FF 06                 ...
        clc                                     ; A06D 18                       .
        adc     Platform_X_Scroll               ; A06E 6D A1 03                 m..
        sta     Player_X_Scroll                 ; A071 8D FF 06                 ...
        lda     ScrollLock                      ; A074 AD 23 07                 .#.
        bne     LA0D2                           ; A077 D0 59                    .Y
        lda     Player_Pos_ForScroll            ; A079 AD 55 07                 .U.
        cmp     #$50                            ; A07C C9 50                    .P
        bcc     LA0D2                           ; A07E 90 52                    .R
        lda     SideCollisionTimer              ; A080 AD 85 07                 ...
        bne     LA0D2                           ; A083 D0 4D                    .M
        ldy     Player_X_Scroll                 ; A085 AC FF 06                 ...
        dey                                     ; A088 88                       .
        bmi     LA0D2                           ; A089 30 47                    0G
        iny                                     ; A08B C8                       .
        cpy     #$02                            ; A08C C0 02                    ..
        bcc     LA091                           ; A08E 90 01                    ..
        dey                                     ; A090 88                       .
LA091:
        lda     Player_Pos_ForScroll            ; A091 AD 55 07                 .U.
        cmp     #$70                            ; A094 C9 70                    .p
        bcc     LA09B                           ; A096 90 03                    ..
        ldy     Player_X_Scroll                 ; A098 AC FF 06                 ...
LA09B:
        tya                                     ; A09B 98                       .
        sta     ScrollAmount                    ; A09C 8D 75 07                 .u.
        clc                                     ; A09F 18                       .
        adc     ScrollThirtyTwo                 ; A0A0 6D 3D 07                 m=.
        sta     ScrollThirtyTwo                 ; A0A3 8D 3D 07                 .=.
        tya                                     ; A0A6 98                       .
        clc                                     ; A0A7 18                       .
        adc     ScreenEdge_X_Pos                ; A0A8 6D 1C 07                 m..
        sta     ScreenEdge_X_Pos                ; A0AB 8D 1C 07                 ...
        sta     HorizontalScroll                ; A0AE 8D 3F 07                 .?.
        lda     ScreenEdge_PageLoc              ; A0B1 AD 1A 07                 ...
        adc     #$00                            ; A0B4 69 00                    i.
        sta     ScreenEdge_PageLoc              ; A0B6 8D 1A 07                 ...
        and     #$01                            ; A0B9 29 01                    ).
        sta     $00                             ; A0BB 85 00                    ..
        lda     Mirror_PPU_CTRL_REG1            ; A0BD AD 78 07                 .x.
        and     #$FE                            ; A0C0 29 FE                    ).
        ora     $00                             ; A0C2 05 00                    ..
        sta     Mirror_PPU_CTRL_REG1            ; A0C4 8D 78 07                 .x.
        jsr     LA10F                           ; A0C7 20 0F A1                  ..
        lda     #$08                            ; A0CA A9 08                    ..
        sta     ScrollIntervalTimer             ; A0CC 8D 95 07                 ...
        jmp     LA0D7                           ; A0CF 4C D7 A0                 L..

; ----------------------------------------------------------------------------
LA0D2:
        lda     #$00                            ; A0D2 A9 00                    ..
        sta     ScrollAmount                    ; A0D4 8D 75 07                 .u.
LA0D7:
        ldx     #$00                            ; A0D7 A2 00                    ..
        jsr     LF23B                           ; A0D9 20 3B F2                  ;.
        sta     $00                             ; A0DC 85 00                    ..
        ldy     #$00                            ; A0DE A0 00                    ..
        asl     a                               ; A0E0 0A                       .
        bcs     LA0EA                           ; A0E1 B0 07                    ..
        iny                                     ; A0E3 C8                       .
        lda     $00                             ; A0E4 A5 00                    ..
        and     #$20                            ; A0E6 29 20                    ) 
        beq     LA105                           ; A0E8 F0 1B                    ..
LA0EA:
        lda     ScreenEdge_X_Pos,y              ; A0EA B9 1C 07                 ...
        sec                                     ; A0ED 38                       8
        sbc     LA10B,y                         ; A0EE F9 0B A1                 ...
        sta     SprObject_X_Position            ; A0F1 85 86                    ..
        lda     ScreenEdge_PageLoc,y            ; A0F3 B9 1A 07                 ...
        sbc     #$00                            ; A0F6 E9 00                    ..
        sta     SprObject_PageLoc               ; A0F8 85 6D                    .m
        lda     Left_Right_Buttons              ; A0FA A5 0C                    ..
        cmp     LA10D,y                         ; A0FC D9 0D A1                 ...
        beq     LA105                           ; A0FF F0 04                    ..
        lda     #$00                            ; A101 A9 00                    ..
        sta     SprObject_X_Speed               ; A103 85 57                    .W
LA105:
        lda     #$00                            ; A105 A9 00                    ..
        sta     Platform_X_Scroll               ; A107 8D A1 03                 ...
        rts                                     ; A10A 60                       `

; ----------------------------------------------------------------------------
LA10B:
        .byte   $00,$10                         ; A10B 00 10                    ..
LA10D:
        .byte   $01,$02                         ; A10D 01 02                    ..
; ----------------------------------------------------------------------------
LA10F:
        lda     ScreenEdge_X_Pos                ; A10F AD 1C 07                 ...
        clc                                     ; A112 18                       .
        adc     #$FF                            ; A113 69 FF                    i.
        sta     ScreenRight_X_Pos               ; A115 8D 1D 07                 ...
        lda     ScreenEdge_PageLoc              ; A118 AD 1A 07                 ...
        adc     #$00                            ; A11B 69 00                    i.
        sta     ScreenRight_PageLoc             ; A11D 8D 1B 07                 ...
        rts                                     ; A120 60                       `

; ----------------------------------------------------------------------------
LA121:
        lda     GameEngineSubroutine            ; A121 A5 0E                    ..
        jsr     L8F69                           ; A123 20 69 8F                  i.
        .byte   $96,$92,$9E,$A2,$DD,$A2,$BC,$A2 ; A126 96 92 9E A2 DD A2 BC A2  ........
        .byte   $7B,$A3,$A1,$A3,$32,$93,$40,$A1 ; A12E 7B A3 A1 A3 32 93 40 A1  {...2.@.
        .byte   $C0,$A1,$0A,$A3,$1C,$A3,$40,$A3 ; A136 C0 A1 0A A3 1C A3 40 A3  ......@.
        .byte   $54,$A3                         ; A13E 54 A3                    T.
; ----------------------------------------------------------------------------
        lda     AltEntranceControl              ; A140 AD 52 07                 .R.
        cmp     #$02                            ; A143 C9 02                    ..
        beq     LA172                           ; A145 F0 2B                    .+
        lda     #$00                            ; A147 A9 00                    ..
        ldy     SprObject_Y_Position            ; A149 A4 CE                    ..
        cpy     #$30                            ; A14B C0 30                    .0
        bcc     LA1BD                           ; A14D 90 6E                    .n
        lda     PlayerEntranceCtrl              ; A14F AD 10 07                 ...
        cmp     #$06                            ; A152 C9 06                    ..
        beq     LA15A                           ; A154 F0 04                    ..
        cmp     #$07                            ; A156 C9 07                    ..
        bne     LA1AA                           ; A158 D0 50                    .P
LA15A:
        lda     SprObject_SprAttrib             ; A15A AD C4 03                 ...
        bne     LA164                           ; A15D D0 05                    ..
        lda     #$01                            ; A15F A9 01                    ..
        jmp     LA1C0                           ; A161 4C C0 A1                 L..

; ----------------------------------------------------------------------------
LA164:
        jsr     LA2F6                           ; A164 20 F6 A2                  ..
        dec     ChangeAreaTimer                 ; A167 CE DE 06                 ...
        bne     LA1BC                           ; A16A D0 50                    .P
        inc     DisableIntermediate             ; A16C EE 69 07                 .i.
        jmp     LA3EC                           ; A16F 4C EC A3                 L..

; ----------------------------------------------------------------------------
LA172:
        lda     JoypadOverride                  ; A172 AD 58 07                 .X.
        bne     LA183                           ; A175 D0 0C                    ..
        lda     #$FF                            ; A177 A9 FF                    ..
        jsr     LA2D7                           ; A179 20 D7 A2                  ..
        lda     SprObject_Y_Position            ; A17C A5 CE                    ..
        cmp     #$91                            ; A17E C9 91                    ..
        bcc     LA1AA                           ; A180 90 28                    .(
        rts                                     ; A182 60                       `

; ----------------------------------------------------------------------------
LA183:
        .byte   $AD,$99,$03,$C9,$60,$D0,$32,$A5 ; A183 AD 99 03 C9 60 D0 32 A5  ....`.2.
        .byte   $CE,$C9,$99,$A0,$00,$A9,$01,$90 ; A18B CE C9 99 A0 00 A9 01 90  ........
        .byte   $0A,$A9,$03,$85,$1D,$C8,$A9,$08 ; A193 0A A9 03 85 1D C8 A9 08  ........
        .byte   $8D,$B4,$05,$8C,$16,$07,$20,$BD ; A19B 8D B4 05 8C 16 07 20 BD  ...... .
        .byte   $A1,$A5,$86,$C9,$48,$90,$12     ; A1A3 A1 A5 86 C9 48 90 12     ....H..
; ----------------------------------------------------------------------------
LA1AA:
        lda     #$08                            ; A1AA A9 08                    ..
        sta     GameEngineSubroutine            ; A1AC 85 0E                    ..
        lda     #$01                            ; A1AE A9 01                    ..
        sta     PlayerFacingDir                 ; A1B0 85 33                    .3
        lsr     a                               ; A1B2 4A                       J
        sta     AltEntranceControl              ; A1B3 8D 52 07                 .R.
        sta     DisableCollisionDet             ; A1B6 8D 16 07                 ...
        sta     JoypadOverride                  ; A1B9 8D 58 07                 .X.
LA1BC:
        rts                                     ; A1BC 60                       `

; ----------------------------------------------------------------------------
LA1BD:
        sta     SavedJoypad1Bits                ; A1BD 8D FC 06                 ...
LA1C0:
        lda     GameEngineSubroutine            ; A1C0 A5 0E                    ..
        cmp     #$0B                            ; A1C2 C9 0B                    ..
        beq     LA202                           ; A1C4 F0 3C                    .<
        lda     AreaType                        ; A1C6 AD 4E 07                 .N.
        bne     LA1DB                           ; A1C9 D0 10                    ..
        ldy     SprObject_Y_HighPos             ; A1CB A4 B5                    ..
        dey                                     ; A1CD 88                       .
        bne     LA1D6                           ; A1CE D0 06                    ..
        lda     SprObject_Y_Position            ; A1D0 A5 CE                    ..
        cmp     #$D0                            ; A1D2 C9 D0                    ..
        bcc     LA1DB                           ; A1D4 90 05                    ..
LA1D6:
        .byte   $A9,$00,$8D,$FC,$06             ; A1D6 A9 00 8D FC 06           .....
; ----------------------------------------------------------------------------
LA1DB:
        lda     SavedJoypad1Bits                ; A1DB AD FC 06                 ...
        and     #$C0                            ; A1DE 29 C0                    ).
        sta     A_B_Buttons                     ; A1E0 85 0A                    ..
        lda     SavedJoypad1Bits                ; A1E2 AD FC 06                 ...
        and     #$03                            ; A1E5 29 03                    ).
        sta     Left_Right_Buttons              ; A1E7 85 0C                    ..
        lda     SavedJoypad1Bits                ; A1E9 AD FC 06                 ...
        and     #$0C                            ; A1EC 29 0C                    ).
        sta     Up_Down_Buttons                 ; A1EE 85 0B                    ..
        and     #$04                            ; A1F0 29 04                    ).
        beq     LA202                           ; A1F2 F0 0E                    ..
        lda     Player_State                    ; A1F4 A5 1D                    ..
        bne     LA202                           ; A1F6 D0 0A                    ..
        ldy     Left_Right_Buttons              ; A1F8 A4 0C                    ..
        beq     LA202                           ; A1FA F0 06                    ..
        lda     #$00                            ; A1FC A9 00                    ..
        sta     Left_Right_Buttons              ; A1FE 85 0C                    ..
        sta     Up_Down_Buttons                 ; A200 85 0B                    ..
LA202:
        jsr     LA400                           ; A202 20 00 A4                  ..
        ldy     #$01                            ; A205 A0 01                    ..
        lda     PlayerSize                      ; A207 AD 54 07                 .T.
        bne     LA215                           ; A20A D0 09                    ..
        ldy     #$00                            ; A20C A0 00                    ..
        lda     CrouchingFlag                   ; A20E AD 14 07                 ...
        beq     LA215                           ; A211 F0 02                    ..
        ldy     #$02                            ; A213 A0 02                    ..
LA215:
        sty     SprObj_BoundBoxCtrl             ; A215 8C 99 04                 ...
        lda     #$01                            ; A218 A9 01                    ..
        ldy     SprObject_X_Speed               ; A21A A4 57                    .W
        beq     LA223                           ; A21C F0 05                    ..
        bpl     LA221                           ; A21E 10 01                    ..
        asl     a                               ; A220 0A                       .
LA221:
        sta     Player_MovingDir                ; A221 85 45                    .E
LA223:
        jsr     LA06A                           ; A223 20 6A A0                  j.
        jsr     LF1C5                           ; A226 20 C5 F1                  ..
        jsr     LF16F                           ; A229 20 6F F1                  o.
        ldx     #$00                            ; A22C A2 00                    ..
        jsr     LE2AF                           ; A22E 20 AF E2                  ..
        jsr     LDC4A                           ; A231 20 4A DC                  J.
        lda     SprObject_Y_Position            ; A234 A5 CE                    ..
        cmp     #$40                            ; A236 C9 40                    .@
        bcc     LA250                           ; A238 90 16                    ..
        lda     GameEngineSubroutine            ; A23A A5 0E                    ..
        cmp     #$05                            ; A23C C9 05                    ..
        beq     LA250                           ; A23E F0 10                    ..
        cmp     #$07                            ; A240 C9 07                    ..
        beq     LA250                           ; A242 F0 0C                    ..
        cmp     #$04                            ; A244 C9 04                    ..
        bcc     LA250                           ; A246 90 08                    ..
        lda     SprObject_SprAttrib             ; A248 AD C4 03                 ...
        and     #$DF                            ; A24B 29 DF                    ).
        sta     SprObject_SprAttrib             ; A24D 8D C4 03                 ...
LA250:
        lda     SprObject_Y_HighPos             ; A250 A5 B5                    ..
        cmp     #$02                            ; A252 C9 02                    ..
        bmi     LA291                           ; A254 30 3B                    0;
        ldx     #$01                            ; A256 A2 01                    ..
        stx     ScrollLock                      ; A258 8E 23 07                 .#.
        ldy     #$04                            ; A25B A0 04                    ..
        sty     $07                             ; A25D 84 07                    ..
        ldx     #$00                            ; A25F A2 00                    ..
        ldy     GameTimerExpiredFlag            ; A261 AC 59 07                 .Y.
        bne     LA26B                           ; A264 D0 05                    ..
        ldy     CloudTypeOverride               ; A266 AC 43 07                 .C.
        bne     LA281                           ; A269 D0 16                    ..
LA26B:
        inx                                     ; A26B E8                       .
        ldy     GameEngineSubroutine            ; A26C A4 0E                    ..
        cpy     #$0B                            ; A26E C0 0B                    ..
        beq     LA281                           ; A270 F0 0F                    ..
        ldy     DeathMusicLoaded                ; A272 AC 12 07                 ...
        bne     LA27D                           ; A275 D0 06                    ..
        iny                                     ; A277 C8                       .
        sty     EventMusicQueue                 ; A278 84 FC                    ..
        sty     DeathMusicLoaded                ; A27A 8C 12 07                 ...
LA27D:
        ldy     #$06                            ; A27D A0 06                    ..
        sty     $07                             ; A27F 84 07                    ..
LA281:
        cmp     $07                             ; A281 C5 07                    ..
        bmi     LA291                           ; A283 30 0C                    0.
        dex                                     ; A285 CA                       .
        bmi     LA292                           ; A286 30 0A                    0.
        ldy     EventMusicBuffer                ; A288 AC B1 07                 ...
        bne     LA291                           ; A28B D0 04                    ..
        lda     #$06                            ; A28D A9 06                    ..
        sta     GameEngineSubroutine            ; A28F 85 0E                    ..
LA291:
        rts                                     ; A291 60                       `

; ----------------------------------------------------------------------------
LA292:
        .byte   $A9,$00,$8D,$58,$07,$20,$B4,$A2 ; A292 A9 00 8D 58 07 20 B4 A2  ...X. ..
        .byte   $EE,$52,$07,$60,$A5,$B5,$D0,$06 ; A29A EE 52 07 60 A5 B5 D0 06  .R.`....
        .byte   $A5,$CE,$C9,$E4,$90,$0C,$A9,$08 ; A2A2 A5 CE C9 E4 90 0C A9 08  ........
        .byte   $8D,$58,$07,$A0,$03,$84,$1D,$4C ; A2AA 8D 58 07 A0 03 84 1D 4C  .X.....L
        .byte   $BD,$A1,$A9,$02,$8D,$52,$07,$4C ; A2B2 BD A1 A9 02 8D 52 07 4C  .....R.L
        .byte   $EA,$A2                         ; A2BA EA A2                    ..
; ----------------------------------------------------------------------------
        lda     #$01                            ; A2BC A9 01                    ..
        jsr     LA2D7                           ; A2BE 20 D7 A2                  ..
        jsr     LA06A                           ; A2C1 20 6A A0                  j.
        ldy     #$00                            ; A2C4 A0 00                    ..
        lda     WarpZoneControl                 ; A2C6 AD D6 06                 ...
        bne     LA2E2                           ; A2C9 D0 17                    ..
        iny                                     ; A2CB C8                       .
        lda     AreaType                        ; A2CC AD 4E 07                 .N.
        cmp     #$03                            ; A2CF C9 03                    ..
        bne     LA2E2                           ; A2D1 D0 0F                    ..
        .byte   $C8,$4C,$E2,$A2                 ; A2D3 C8 4C E2 A2              .L..
; ----------------------------------------------------------------------------
LA2D7:
        clc                                     ; A2D7 18                       .
        adc     SprObject_Y_Position            ; A2D8 65 CE                    e.
        sta     SprObject_Y_Position            ; A2DA 85 CE                    ..
        rts                                     ; A2DC 60                       `

; ----------------------------------------------------------------------------
        jsr     LA2F6                           ; A2DD 20 F6 A2                  ..
        ldy     #$02                            ; A2E0 A0 02                    ..
LA2E2:
        dec     ChangeAreaTimer                 ; A2E2 CE DE 06                 ...
        bne     LA2F5                           ; A2E5 D0 0E                    ..
        sty     AltEntranceControl              ; A2E7 8C 52 07                 .R.
LA2EA:
        inc     DisableScreenFlag               ; A2EA EE 74 07                 .t.
        lda     #$00                            ; A2ED A9 00                    ..
        sta     OperMode_Task                   ; A2EF 8D 72 07                 .r.
        sta     Sprite0HitDetectFlag            ; A2F2 8D 22 07                 .".
LA2F5:
        rts                                     ; A2F5 60                       `

; ----------------------------------------------------------------------------
LA2F6:
        lda     #$08                            ; A2F6 A9 08                    ..
        sta     SprObject_X_Speed               ; A2F8 85 57                    .W
        ldy     #$01                            ; A2FA A0 01                    ..
        lda     SprObject_X_Position            ; A2FC A5 86                    ..
        and     #$0F                            ; A2FE 29 0F                    ).
        bne     LA305                           ; A300 D0 03                    ..
        sta     SprObject_X_Speed               ; A302 85 57                    .W
        tay                                     ; A304 A8                       .
LA305:
        tya                                     ; A305 98                       .
        jsr     LA1BD                           ; A306 20 BD A1                  ..
        rts                                     ; A309 60                       `

; ----------------------------------------------------------------------------
        lda     TimerControl                    ; A30A AD 47 07                 .G.
        cmp     #$F8                            ; A30D C9 F8                    ..
        bne     LA314                           ; A30F D0 03                    ..
        jmp     LA32C                           ; A311 4C 2C A3                 L,.

; ----------------------------------------------------------------------------
LA314:
        cmp     #$C4                            ; A314 C9 C4                    ..
        bne     LA31B                           ; A316 D0 03                    ..
        jsr     LA34A                           ; A318 20 4A A3                  J.
LA31B:
        rts                                     ; A31B 60                       `

; ----------------------------------------------------------------------------
        lda     TimerControl                    ; A31C AD 47 07                 .G.
        cmp     #$F0                            ; A31F C9 F0                    ..
        bcs     LA32A                           ; A321 B0 07                    ..
        cmp     #$C8                            ; A323 C9 C8                    ..
        beq     LA34A                           ; A325 F0 23                    .#
        jmp     LA1C0                           ; A327 4C C0 A1                 L..

; ----------------------------------------------------------------------------
LA32A:
        bne     LA33F                           ; A32A D0 13                    ..
LA32C:
        ldy     PlayerChangeSizeFlag            ; A32C AC 0B 07                 ...
        bne     LA33F                           ; A32F D0 0E                    ..
        sty     PlayerAnimCtrl                  ; A331 8C 0D 07                 ...
        inc     PlayerChangeSizeFlag            ; A334 EE 0B 07                 ...
        lda     PlayerSize                      ; A337 AD 54 07                 .T.
        eor     #$01                            ; A33A 49 01                    I.
        sta     PlayerSize                      ; A33C 8D 54 07                 .T.
LA33F:
        rts                                     ; A33F 60                       `

; ----------------------------------------------------------------------------
        lda     TimerControl                    ; A340 AD 47 07                 .G.
        cmp     #$F0                            ; A343 C9 F0                    ..
        bcs     LA37A                           ; A345 B0 33                    .3
        jmp     LA1C0                           ; A347 4C C0 A1                 L..

; ----------------------------------------------------------------------------
LA34A:
        lda     #$00                            ; A34A A9 00                    ..
        sta     TimerControl                    ; A34C 8D 47 07                 .G.
        lda     #$08                            ; A34F A9 08                    ..
        sta     GameEngineSubroutine            ; A351 85 0E                    ..
        rts                                     ; A353 60                       `

; ----------------------------------------------------------------------------
        lda     TimerControl                    ; A354 AD 47 07                 .G.
        cmp     #$C0                            ; A357 C9 C0                    ..
        beq     LA36E                           ; A359 F0 13                    ..
        lda     FrameCounter                    ; A35B A5 09                    ..
        lsr     a                               ; A35D 4A                       J
        lsr     a                               ; A35E 4A                       J
LA35F:
        and     #$03                            ; A35F 29 03                    ).
        sta     $00                             ; A361 85 00                    ..
        lda     SprObject_SprAttrib             ; A363 AD C4 03                 ...
        and     #$FC                            ; A366 29 FC                    ).
        ora     $00                             ; A368 05 00                    ..
        sta     SprObject_SprAttrib             ; A36A 8D C4 03                 ...
        rts                                     ; A36D 60                       `

; ----------------------------------------------------------------------------
LA36E:
        jsr     LA34A                           ; A36E 20 4A A3                  J.
LA371:
        lda     SprObject_SprAttrib             ; A371 AD C4 03                 ...
        and     #$FC                            ; A374 29 FC                    ).
        sta     SprObject_SprAttrib             ; A376 8D C4 03                 ...
        rts                                     ; A379 60                       `

; ----------------------------------------------------------------------------
LA37A:
        rts                                     ; A37A 60                       `

; ----------------------------------------------------------------------------
        lda     $1B                             ; A37B A5 1B                    ..
        cmp     #$30                            ; A37D C9 30                    .0
        bne     LA396                           ; A37F D0 15                    ..
        lda     FlagpoleSoundQueue              ; A381 AD 13 07                 ...
        sta     Square1SoundQueue               ; A384 85 FF                    ..
        lda     #$00                            ; A386 A9 00                    ..
        sta     FlagpoleSoundQueue              ; A388 8D 13 07                 ...
        ldy     SprObject_Y_Position            ; A38B A4 CE                    ..
        cpy     #$9E                            ; A38D C0 9E                    ..
        bcs     LA393                           ; A38F B0 02                    ..
        lda     #$04                            ; A391 A9 04                    ..
LA393:
        jmp     LA1BD                           ; A393 4C BD A1                 L..

; ----------------------------------------------------------------------------
LA396:
        .byte   $E6,$0E,$60                     ; A396 E6 0E 60                 ..`
LA399:
        .byte   $00,$23,$16,$1B,$17,$18,$23,$63 ; A399 00 23 16 1B 17 18 23 63  .#....#c
; ----------------------------------------------------------------------------
        lda     #$01                            ; A3A1 A9 01                    ..
        jsr     LA1BD                           ; A3A3 20 BD A1                  ..
        lda     SprObject_Y_Position            ; A3A6 A5 CE                    ..
        cmp     #$AE                            ; A3A8 C9 AE                    ..
        bcc     LA3BA                           ; A3AA 90 0E                    ..
        lda     ScrollLock                      ; A3AC AD 23 07                 .#.
        beq     LA3BA                           ; A3AF F0 09                    ..
        lda     #$20                            ; A3B1 A9 20                    . 
        sta     EventMusicQueue                 ; A3B3 85 FC                    ..
        lda     #$00                            ; A3B5 A9 00                    ..
        sta     ScrollLock                      ; A3B7 8D 23 07                 .#.
LA3BA:
        lda     Player_CollisionBits            ; A3BA AD 90 04                 ...
        lsr     a                               ; A3BD 4A                       J
        bcs     LA3CD                           ; A3BE B0 0D                    ..
        lda     StarFlagTaskControl             ; A3C0 AD 46 07                 .F.
        bne     LA3C8                           ; A3C3 D0 03                    ..
        inc     StarFlagTaskControl             ; A3C5 EE 46 07                 .F.
LA3C8:
        lda     #$20                            ; A3C8 A9 20                    . 
        sta     SprObject_SprAttrib             ; A3CA 8D C4 03                 ...
LA3CD:
        lda     StarFlagTaskControl             ; A3CD AD 46 07                 .F.
        cmp     #$05                            ; A3D0 C9 05                    ..
        bne     LA3FF                           ; A3D2 D0 2B                    .+
        inc     LevelNumber                     ; A3D4 EE 5C 07                 .\.
        lda     LevelNumber                     ; A3D7 AD 5C 07                 .\.
        cmp     #$03                            ; A3DA C9 03                    ..
        bne     LA3EC                           ; A3DC D0 0E                    ..
        ldy     WorldNumber                     ; A3DE AC 5F 07                 ._.
        lda     CoinTallyFor1Ups                ; A3E1 AD 48 07                 .H.
        cmp     LA399,y                         ; A3E4 D9 99 A3                 ...
        bcc     LA3EC                           ; A3E7 90 03                    ..
        inc     Hidden1UpFlag                   ; A3E9 EE 5D 07                 .].
LA3EC:
        inc     AreaNumber                      ; A3EC EE 60 07                 .`.
        jsr     L9DF5                           ; A3EF 20 F5 9D                  ..
        inc     FetchNewGameTimerFlag           ; A3F2 EE 57 07                 .W.
        jsr     LA2EA                           ; A3F5 20 EA A2                  ..
        sta     HalfwayPage                     ; A3F8 8D 5B 07                 .[.
        lda     #$80                            ; A3FB A9 80                    ..
        sta     EventMusicQueue                 ; A3FD 85 FC                    ..
LA3FF:
        rts                                     ; A3FF 60                       `

; ----------------------------------------------------------------------------
LA400:
        lda     #$00                            ; A400 A9 00                    ..
        ldy     PlayerSize                      ; A402 AC 54 07                 .T.
        bne     LA40F                           ; A405 D0 08                    ..
        lda     Player_State                    ; A407 A5 1D                    ..
        bne     LA412                           ; A409 D0 07                    ..
        lda     Up_Down_Buttons                 ; A40B A5 0B                    ..
        and     #$04                            ; A40D 29 04                    ).
LA40F:
        sta     CrouchingFlag                   ; A40F 8D 14 07                 ...
LA412:
        jsr     LA527                           ; A412 20 27 A5                  '.
        lda     PlayerChangeSizeFlag            ; A415 AD 0B 07                 ...
        bne     LA430                           ; A418 D0 16                    ..
        lda     Player_State                    ; A41A A5 1D                    ..
        cmp     #$03                            ; A41C C9 03                    ..
        beq     LA425                           ; A41E F0 05                    ..
        ldy     #$18                            ; A420 A0 18                    ..
        sty     ClimbSideTimer                  ; A422 8C 89 07                 ...
LA425:
        jsr     L8F69                           ; A425 20 69 8F                  i.
        .byte   $31,$A4,$4D,$A4,$44,$A4,$A6,$A4 ; A428 31 A4 4D A4 44 A4 A6 A4  1.M.D...
; ----------------------------------------------------------------------------
LA430:
        rts                                     ; A430 60                       `

; ----------------------------------------------------------------------------
        jsr     LA666                           ; A431 20 66 A6                  f.
        lda     Left_Right_Buttons              ; A434 A5 0C                    ..
        beq     LA43A                           ; A436 F0 02                    ..
        sta     PlayerFacingDir                 ; A438 85 33                    .3
LA43A:
        jsr     LA6A3                           ; A43A 20 A3 A6                  ..
        jsr     LAFF6                           ; A43D 20 F6 AF                  ..
        sta     Player_X_Scroll                 ; A440 8D FF 06                 ...
        rts                                     ; A443 60                       `

; ----------------------------------------------------------------------------
        lda     VerticalForceDown               ; A444 AD 0A 07                 ...
        sta     VerticalForce                   ; A447 8D 09 07                 ...
        jmp     LA483                           ; A44A 4C 83 A4                 L..

; ----------------------------------------------------------------------------
        ldy     SprObject_Y_Speed               ; A44D A4 9F                    ..
        bpl     LA464                           ; A44F 10 13                    ..
        lda     A_B_Buttons                     ; A451 A5 0A                    ..
        and     #$80                            ; A453 29 80                    ).
        and     PreviousA_B_Buttons             ; A455 25 0D                    %.
        bne     LA46A                           ; A457 D0 11                    ..
        lda     JumpOrigin_Y_Position           ; A459 AD 08 07                 ...
        sec                                     ; A45C 38                       8
        sbc     SprObject_Y_Position            ; A45D E5 CE                    ..
        cmp     DiffToHaltJump                  ; A45F CD 06 07                 ...
        bcc     LA46A                           ; A462 90 06                    ..
LA464:
        lda     VerticalForceDown               ; A464 AD 0A 07                 ...
        sta     VerticalForce                   ; A467 8D 09 07                 ...
LA46A:
        lda     SwimmingFlag                    ; A46A AD 04 07                 ...
        beq     LA483                           ; A46D F0 14                    ..
        jsr     LA666                           ; A46F 20 66 A6                  f.
        lda     SprObject_Y_Position            ; A472 A5 CE                    ..
        cmp     #$24                            ; A474 C9 24                    .$
        bcs     LA47D                           ; A476 B0 05                    ..
        lda     #$18                            ; A478 A9 18                    ..
        sta     VerticalForce                   ; A47A 8D 09 07                 ...
LA47D:
        lda     Left_Right_Buttons              ; A47D A5 0C                    ..
        beq     LA483                           ; A47F F0 02                    ..
        sta     PlayerFacingDir                 ; A481 85 33                    .3
LA483:
        lda     Left_Right_Buttons              ; A483 A5 0C                    ..
        beq     LA48A                           ; A485 F0 03                    ..
        jsr     LA6A3                           ; A487 20 A3 A6                  ..
LA48A:
        jsr     LAFF6                           ; A48A 20 F6 AF                  ..
        sta     Player_X_Scroll                 ; A48D 8D FF 06                 ...
        lda     GameEngineSubroutine            ; A490 A5 0E                    ..
        cmp     #$0B                            ; A492 C9 0B                    ..
        bne     LA49B                           ; A494 D0 05                    ..
        lda     #$28                            ; A496 A9 28                    .(
        sta     VerticalForce                   ; A498 8D 09 07                 ...
LA49B:
        jmp     LB03A                           ; A49B 4C 3A B0                 L:.

; ----------------------------------------------------------------------------
LA49E:
        .byte   $0E,$04,$FC,$F2                 ; A49E 0E 04 FC F2              ....
LA4A2:
        .byte   $00,$00,$FF,$FF                 ; A4A2 00 00 FF FF              ....
; ----------------------------------------------------------------------------
        lda     SprObject_YMF_Dummy             ; A4A6 AD 16 04                 ...
        clc                                     ; A4A9 18                       .
        adc     SprObject_Y_MoveForce           ; A4AA 6D 33 04                 m3.
        sta     SprObject_YMF_Dummy             ; A4AD 8D 16 04                 ...
        ldy     #$00                            ; A4B0 A0 00                    ..
        lda     SprObject_Y_Speed               ; A4B2 A5 9F                    ..
        bpl     LA4B7                           ; A4B4 10 01                    ..
        .byte   $88                             ; A4B6 88                       .
; ----------------------------------------------------------------------------
LA4B7:
        sty     $00                             ; A4B7 84 00                    ..
        adc     SprObject_Y_Position            ; A4B9 65 CE                    e.
        sta     SprObject_Y_Position            ; A4BB 85 CE                    ..
        lda     SprObject_Y_HighPos             ; A4BD A5 B5                    ..
        adc     $00                             ; A4BF 65 00                    e.
        sta     SprObject_Y_HighPos             ; A4C1 85 B5                    ..
        lda     Left_Right_Buttons              ; A4C3 A5 0C                    ..
        and     Player_CollisionBits            ; A4C5 2D 90 04                 -..
        beq     LA4F7                           ; A4C8 F0 2D                    .-
        ldy     ClimbSideTimer                  ; A4CA AC 89 07                 ...
        bne     LA4F6                           ; A4CD D0 27                    .'
        ldy     #$18                            ; A4CF A0 18                    ..
        sty     ClimbSideTimer                  ; A4D1 8C 89 07                 ...
        ldx     #$00                            ; A4D4 A2 00                    ..
        ldy     PlayerFacingDir                 ; A4D6 A4 33                    .3
        lsr     a                               ; A4D8 4A                       J
        bcs     LA4DD                           ; A4D9 B0 02                    ..
        .byte   $E8,$E8                         ; A4DB E8 E8                    ..
; ----------------------------------------------------------------------------
LA4DD:
        dey                                     ; A4DD 88                       .
        beq     LA4E1                           ; A4DE F0 01                    ..
        inx                                     ; A4E0 E8                       .
LA4E1:
        lda     SprObject_X_Position            ; A4E1 A5 86                    ..
        clc                                     ; A4E3 18                       .
        adc     LA49E,x                         ; A4E4 7D 9E A4                 }..
        sta     SprObject_X_Position            ; A4E7 85 86                    ..
        lda     SprObject_PageLoc               ; A4E9 A5 6D                    .m
        adc     LA4A2,x                         ; A4EB 7D A2 A4                 }..
        sta     SprObject_PageLoc               ; A4EE 85 6D                    .m
        lda     Left_Right_Buttons              ; A4F0 A5 0C                    ..
        eor     #$03                            ; A4F2 49 03                    I.
        sta     PlayerFacingDir                 ; A4F4 85 33                    .3
LA4F6:
        rts                                     ; A4F6 60                       `

; ----------------------------------------------------------------------------
LA4F7:
        sta     ClimbSideTimer                  ; A4F7 8D 89 07                 ...
        rts                                     ; A4FA 60                       `

; ----------------------------------------------------------------------------
LA4FB:
        .byte   $20,$20,$1E,$28,$28,$0D,$04     ; A4FB 20 20 1E 28 28 0D 04       .((..
LA502:
        .byte   $70,$70,$60,$90,$90,$0A,$09     ; A502 70 70 60 90 90 0A 09     pp`....
LA509:
        .byte   $FC,$FC,$FC,$FB,$FB,$FE,$FF     ; A509 FC FC FC FB FB FE FF     .......
LA510:
        .byte   $00,$00,$00,$00,$00,$80,$00     ; A510 00 00 00 00 00 80 00     .......
LA517:
        .byte   $D8,$E8,$F0                     ; A517 D8 E8 F0                 ...
LA51A:
        .byte   $28,$18,$10,$0C                 ; A51A 28 18 10 0C              (...
LA51E:
        .byte   $E4,$98,$D0                     ; A51E E4 98 D0                 ...
LA521:
        .byte   $00,$FF,$01                     ; A521 00 FF 01                 ...
LA524:
        .byte   $00,$20,$FF                     ; A524 00 20 FF                 . .
; ----------------------------------------------------------------------------
LA527:
        lda     Player_State                    ; A527 A5 1D                    ..
        cmp     #$03                            ; A529 C9 03                    ..
        bne     LA550                           ; A52B D0 23                    .#
        ldy     #$00                            ; A52D A0 00                    ..
        lda     Up_Down_Buttons                 ; A52F A5 0B                    ..
        and     Player_CollisionBits            ; A531 2D 90 04                 -..
        beq     LA53C                           ; A534 F0 06                    ..
        iny                                     ; A536 C8                       .
        and     #$08                            ; A537 29 08                    ).
        bne     LA53C                           ; A539 D0 01                    ..
        iny                                     ; A53B C8                       .
LA53C:
        ldx     LA524,y                         ; A53C BE 24 A5                 .$.
        stx     SprObject_Y_MoveForce           ; A53F 8E 33 04                 .3.
        lda     #$08                            ; A542 A9 08                    ..
        ldx     LA521,y                         ; A544 BE 21 A5                 .!.
        stx     SprObject_Y_Speed               ; A547 86 9F                    ..
        bmi     LA54C                           ; A549 30 01                    0.
        lsr     a                               ; A54B 4A                       J
LA54C:
        sta     PlayerAnimTimerSet              ; A54C 8D 0C 07                 ...
        rts                                     ; A54F 60                       `

; ----------------------------------------------------------------------------
LA550:
        lda     JumpspringAnimCtrl              ; A550 AD 0E 07                 ...
        bne     LA55F                           ; A553 D0 0A                    ..
        lda     A_B_Buttons                     ; A555 A5 0A                    ..
        and     #$80                            ; A557 29 80                    ).
        beq     LA55F                           ; A559 F0 04                    ..
        and     PreviousA_B_Buttons             ; A55B 25 0D                    %.
        beq     LA562                           ; A55D F0 03                    ..
LA55F:
        jmp     LA5F3                           ; A55F 4C F3 A5                 L..

; ----------------------------------------------------------------------------
LA562:
        lda     Player_State                    ; A562 A5 1D                    ..
        beq     LA577                           ; A564 F0 11                    ..
        lda     SwimmingFlag                    ; A566 AD 04 07                 ...
        beq     LA55F                           ; A569 F0 F4                    ..
        lda     JumpSwimTimer                   ; A56B AD 82 07                 ...
        bne     LA577                           ; A56E D0 07                    ..
        lda     SprObject_Y_Speed               ; A570 A5 9F                    ..
        bpl     LA577                           ; A572 10 03                    ..
        .byte   $4C,$F3,$A5                     ; A574 4C F3 A5                 L..
; ----------------------------------------------------------------------------
LA577:
        lda     #$20                            ; A577 A9 20                    . 
        sta     JumpSwimTimer                   ; A579 8D 82 07                 ...
        ldy     #$00                            ; A57C A0 00                    ..
        sty     SprObject_YMF_Dummy             ; A57E 8C 16 04                 ...
        sty     SprObject_Y_MoveForce           ; A581 8C 33 04                 .3.
        lda     SprObject_Y_HighPos             ; A584 A5 B5                    ..
        sta     JumpOrigin_Y_HighPos            ; A586 8D 07 07                 ...
        lda     SprObject_Y_Position            ; A589 A5 CE                    ..
        sta     JumpOrigin_Y_Position           ; A58B 8D 08 07                 ...
        lda     #$01                            ; A58E A9 01                    ..
        sta     Player_State                    ; A590 85 1D                    ..
        lda     Player_XSpeedAbsolute           ; A592 AD 00 07                 ...
        cmp     #$09                            ; A595 C9 09                    ..
        bcc     LA5A9                           ; A597 90 10                    ..
        iny                                     ; A599 C8                       .
        cmp     #$10                            ; A59A C9 10                    ..
        bcc     LA5A9                           ; A59C 90 0B                    ..
        iny                                     ; A59E C8                       .
        cmp     #$19                            ; A59F C9 19                    ..
        bcc     LA5A9                           ; A5A1 90 06                    ..
        iny                                     ; A5A3 C8                       .
        cmp     #$1C                            ; A5A4 C9 1C                    ..
        bcc     LA5A9                           ; A5A6 90 01                    ..
        iny                                     ; A5A8 C8                       .
LA5A9:
        lda     #$01                            ; A5A9 A9 01                    ..
        sta     DiffToHaltJump                  ; A5AB 8D 06 07                 ...
        lda     SwimmingFlag                    ; A5AE AD 04 07                 ...
        beq     LA5BB                           ; A5B1 F0 08                    ..
        ldy     #$05                            ; A5B3 A0 05                    ..
        lda     Cannon_Timer                    ; A5B5 AD 7D 04                 .}.
        beq     LA5BB                           ; A5B8 F0 01                    ..
        .byte   $C8                             ; A5BA C8                       .
; ----------------------------------------------------------------------------
LA5BB:
        lda     LA4FB,y                         ; A5BB B9 FB A4                 ...
        sta     VerticalForce                   ; A5BE 8D 09 07                 ...
        lda     LA502,y                         ; A5C1 B9 02 A5                 ...
        sta     VerticalForceDown               ; A5C4 8D 0A 07                 ...
        lda     LA510,y                         ; A5C7 B9 10 A5                 ...
        sta     SprObject_Y_MoveForce           ; A5CA 8D 33 04                 .3.
        lda     LA509,y                         ; A5CD B9 09 A5                 ...
        sta     SprObject_Y_Speed               ; A5D0 85 9F                    ..
        lda     SwimmingFlag                    ; A5D2 AD 04 07                 ...
        beq     LA5E8                           ; A5D5 F0 11                    ..
        lda     #$04                            ; A5D7 A9 04                    ..
        sta     Square1SoundQueue               ; A5D9 85 FF                    ..
        lda     SprObject_Y_Position            ; A5DB A5 CE                    ..
        cmp     #$24                            ; A5DD C9 24                    .$
        bcs     LA5F3                           ; A5DF B0 12                    ..
        lda     #$00                            ; A5E1 A9 00                    ..
        sta     SprObject_Y_Speed               ; A5E3 85 9F                    ..
        jmp     LA5F3                           ; A5E5 4C F3 A5                 L..

; ----------------------------------------------------------------------------
LA5E8:
        lda     #$01                            ; A5E8 A9 01                    ..
        ldy     PlayerSize                      ; A5EA AC 54 07                 .T.
        beq     LA5F1                           ; A5ED F0 02                    ..
        lda     #$80                            ; A5EF A9 80                    ..
LA5F1:
        sta     Square1SoundQueue               ; A5F1 85 FF                    ..
LA5F3:
        ldy     #$00                            ; A5F3 A0 00                    ..
        sty     $00                             ; A5F5 84 00                    ..
        lda     Player_State                    ; A5F7 A5 1D                    ..
        beq     LA604                           ; A5F9 F0 09                    ..
        lda     Player_XSpeedAbsolute           ; A5FB AD 00 07                 ...
        cmp     #$19                            ; A5FE C9 19                    ..
        bcs     LA635                           ; A600 B0 33                    .3
        bcc     LA61C                           ; A602 90 18                    ..
LA604:
        iny                                     ; A604 C8                       .
        lda     AreaType                        ; A605 AD 4E 07                 .N.
        beq     LA61C                           ; A608 F0 12                    ..
        dey                                     ; A60A 88                       .
        lda     Left_Right_Buttons              ; A60B A5 0C                    ..
        cmp     Player_MovingDir                ; A60D C5 45                    .E
        bne     LA61C                           ; A60F D0 0B                    ..
        lda     A_B_Buttons                     ; A611 A5 0A                    ..
        and     #$40                            ; A613 29 40                    )@
        bne     LA630                           ; A615 D0 19                    ..
        lda     RunningTimer                    ; A617 AD 83 07                 ...
        bne     LA635                           ; A61A D0 19                    ..
LA61C:
        iny                                     ; A61C C8                       .
        inc     $00                             ; A61D E6 00                    ..
        lda     RunningSpeed                    ; A61F AD 03 07                 ...
        bne     LA62B                           ; A622 D0 07                    ..
        lda     Player_XSpeedAbsolute           ; A624 AD 00 07                 ...
        cmp     #$21                            ; A627 C9 21                    .!
        bcc     LA635                           ; A629 90 0A                    ..
LA62B:
        inc     $00                             ; A62B E6 00                    ..
        jmp     LA635                           ; A62D 4C 35 A6                 L5.

; ----------------------------------------------------------------------------
LA630:
        lda     #$0A                            ; A630 A9 0A                    ..
        sta     RunningTimer                    ; A632 8D 83 07                 ...
LA635:
        lda     LA517,y                         ; A635 B9 17 A5                 ...
        sta     MaximumLeftSpeed                ; A638 8D 50 04                 .P.
        lda     GameEngineSubroutine            ; A63B A5 0E                    ..
        nop                                     ; A63D EA                       .
        nop                                     ; A63E EA                       .
        nop                                     ; A63F EA                       .
        nop                                     ; A640 EA                       .
        nop                                     ; A641 EA                       .
        nop                                     ; A642 EA                       .
        lda     LA51A,y                         ; A643 B9 1A A5                 ...
        sta     MaximumRightSpeed               ; A646 8D 56 04                 .V.
        ldy     $00                             ; A649 A4 00                    ..
        lda     LA51E,y                         ; A64B B9 1E A5                 ...
        sta     FrictionAdderLow                ; A64E 8D 02 07                 ...
        lda     #$00                            ; A651 A9 00                    ..
        sta     FrictionAdderHigh               ; A653 8D 01 07                 ...
        lda     PlayerFacingDir                 ; A656 A5 33                    .3
        cmp     Player_MovingDir                ; A658 C5 45                    .E
        beq     LA662                           ; A65A F0 06                    ..
        asl     FrictionAdderLow                ; A65C 0E 02 07                 ...
        rol     FrictionAdderHigh               ; A65F 2E 01 07                 ...
LA662:
        rts                                     ; A662 60                       `

; ----------------------------------------------------------------------------
LA663:
        .byte   $02,$04,$07                     ; A663 02 04 07                 ...
; ----------------------------------------------------------------------------
LA666:
        ldy     #$00                            ; A666 A0 00                    ..
        lda     Player_XSpeedAbsolute           ; A668 AD 00 07                 ...
        cmp     #$1C                            ; A66B C9 1C                    ..
        bcs     LA684                           ; A66D B0 15                    ..
        iny                                     ; A66F C8                       .
        cmp     #$0E                            ; A670 C9 0E                    ..
        bcs     LA675                           ; A672 B0 01                    ..
        iny                                     ; A674 C8                       .
LA675:
        lda     SavedJoypad1Bits                ; A675 AD FC 06                 ...
        and     #$7F                            ; A678 29 7F                    ).
        beq     LA69C                           ; A67A F0 20                    . 
        and     #$03                            ; A67C 29 03                    ).
        cmp     Player_MovingDir                ; A67E C5 45                    .E
        bne     LA68A                           ; A680 D0 08                    ..
        lda     #$00                            ; A682 A9 00                    ..
LA684:
        sta     RunningSpeed                    ; A684 8D 03 07                 ...
        jmp     LA69C                           ; A687 4C 9C A6                 L..

; ----------------------------------------------------------------------------
LA68A:
        lda     Player_XSpeedAbsolute           ; A68A AD 00 07                 ...
        cmp     #$0B                            ; A68D C9 0B                    ..
        bcs     LA69C                           ; A68F B0 0B                    ..
        lda     PlayerFacingDir                 ; A691 A5 33                    .3
        sta     Player_MovingDir                ; A693 85 45                    .E
        lda     #$00                            ; A695 A9 00                    ..
        sta     SprObject_X_Speed               ; A697 85 57                    .W
        sta     Player_X_MoveForce              ; A699 8D 05 07                 ...
LA69C:
        lda     LA663,y                         ; A69C B9 63 A6                 .c.
        sta     PlayerAnimTimerSet              ; A69F 8D 0C 07                 ...
        rts                                     ; A6A2 60                       `

; ----------------------------------------------------------------------------
LA6A3:
        and     Player_CollisionBits            ; A6A3 2D 90 04                 -..
        cmp     #$00                            ; A6A6 C9 00                    ..
        bne     LA6B2                           ; A6A8 D0 08                    ..
        lda     SprObject_X_Speed               ; A6AA A5 57                    .W
        beq     LA6F7                           ; A6AC F0 49                    .I
        bpl     LA6D3                           ; A6AE 10 23                    .#
        bmi     LA6B5                           ; A6B0 30 03                    0.
LA6B2:
        lsr     a                               ; A6B2 4A                       J
        bcc     LA6D3                           ; A6B3 90 1E                    ..
LA6B5:
        lda     Player_X_MoveForce              ; A6B5 AD 05 07                 ...
        clc                                     ; A6B8 18                       .
        adc     FrictionAdderLow                ; A6B9 6D 02 07                 m..
        sta     Player_X_MoveForce              ; A6BC 8D 05 07                 ...
        lda     SprObject_X_Speed               ; A6BF A5 57                    .W
        adc     FrictionAdderHigh               ; A6C1 6D 01 07                 m..
        sta     SprObject_X_Speed               ; A6C4 85 57                    .W
        cmp     MaximumRightSpeed               ; A6C6 CD 56 04                 .V.
        bmi     LA6EE                           ; A6C9 30 23                    0#
        lda     MaximumRightSpeed               ; A6CB AD 56 04                 .V.
        sta     SprObject_X_Speed               ; A6CE 85 57                    .W
        jmp     LA6F7                           ; A6D0 4C F7 A6                 L..

; ----------------------------------------------------------------------------
LA6D3:
        lda     Player_X_MoveForce              ; A6D3 AD 05 07                 ...
        sec                                     ; A6D6 38                       8
        sbc     FrictionAdderLow                ; A6D7 ED 02 07                 ...
        sta     Player_X_MoveForce              ; A6DA 8D 05 07                 ...
        lda     SprObject_X_Speed               ; A6DD A5 57                    .W
        sbc     FrictionAdderHigh               ; A6DF ED 01 07                 ...
        sta     SprObject_X_Speed               ; A6E2 85 57                    .W
        cmp     MaximumLeftSpeed                ; A6E4 CD 50 04                 .P.
        bpl     LA6EE                           ; A6E7 10 05                    ..
        lda     MaximumLeftSpeed                ; A6E9 AD 50 04                 .P.
        sta     SprObject_X_Speed               ; A6EC 85 57                    .W
LA6EE:
        cmp     #$00                            ; A6EE C9 00                    ..
        bpl     LA6F7                           ; A6F0 10 05                    ..
        eor     #$FF                            ; A6F2 49 FF                    I.
        clc                                     ; A6F4 18                       .
        adc     #$01                            ; A6F5 69 01                    i.
LA6F7:
        sta     Player_XSpeedAbsolute           ; A6F7 8D 00 07                 ...
        rts                                     ; A6FA 60                       `

; ----------------------------------------------------------------------------
LA6FB:
        lda     PlayerStatus                    ; A6FB AD 56 07                 .V.
        cmp     #$02                            ; A6FE C9 02                    ..
        bcc     LA745                           ; A700 90 43                    .C
        lda     A_B_Buttons                     ; A702 A5 0A                    ..
        and     #$40                            ; A704 29 40                    )@
        beq     LA73B                           ; A706 F0 33                    .3
        and     PreviousA_B_Buttons             ; A708 25 0D                    %.
        bne     LA73B                           ; A70A D0 2F                    ./
        lda     FireballCounter                 ; A70C AD CE 06                 ...
        and     #$01                            ; A70F 29 01                    ).
        tax                                     ; A711 AA                       .
        lda     Fireball_State,x                ; A712 B5 24                    .$
        bne     LA73B                           ; A714 D0 25                    .%
        ldy     SprObject_Y_HighPos             ; A716 A4 B5                    ..
        dey                                     ; A718 88                       .
        bne     LA73B                           ; A719 D0 20                    . 
        lda     CrouchingFlag                   ; A71B AD 14 07                 ...
        bne     LA73B                           ; A71E D0 1B                    ..
        lda     Player_State                    ; A720 A5 1D                    ..
        cmp     #$03                            ; A722 C9 03                    ..
        beq     LA73B                           ; A724 F0 15                    ..
        lda     #$20                            ; A726 A9 20                    . 
        sta     Square1SoundQueue               ; A728 85 FF                    ..
        lda     #$02                            ; A72A A9 02                    ..
        sta     Fireball_State,x                ; A72C 95 24                    .$
        ldy     PlayerAnimTimerSet              ; A72E AC 0C 07                 ...
        sty     FireballThrowingTimer           ; A731 8C 11 07                 ...
        dey                                     ; A734 88                       .
        sty     PlayerAnimTimer                 ; A735 8C 81 07                 ...
        inc     FireballCounter                 ; A738 EE CE 06                 ...
LA73B:
        ldx     #$00                            ; A73B A2 00                    ..
        jsr     LA760                           ; A73D 20 60 A7                  `.
        ldx     #$01                            ; A740 A2 01                    ..
        jsr     LA760                           ; A742 20 60 A7                  `.
LA745:
        lda     AreaType                        ; A745 AD 4E 07                 .N.
        bne     LA75D                           ; A748 D0 13                    ..
        ldx     #$02                            ; A74A A2 02                    ..
LA74C:
        stx     ObjectOffset                    ; A74C 86 08                    ..
        jsr     LA7D0                           ; A74E 20 D0 A7                  ..
        jsr     LF176                           ; A751 20 76 F1                  v.
        jsr     LF1D6                           ; A754 20 D6 F1                  ..
        jsr     LEE26                           ; A757 20 26 EE                  &.
        dex                                     ; A75A CA                       .
        bpl     LA74C                           ; A75B 10 EF                    ..
LA75D:
        rts                                     ; A75D 60                       `

; ----------------------------------------------------------------------------
LA75E:
        .byte   $40,$C0                         ; A75E 40 C0                    @.
; ----------------------------------------------------------------------------
LA760:
        stx     ObjectOffset                    ; A760 86 08                    ..
        lda     Fireball_State,x                ; A762 B5 24                    .$
        asl     a                               ; A764 0A                       .
        bcs     LA7CA                           ; A765 B0 63                    .c
        ldy     Fireball_State,x                ; A767 B4 24                    .$
        beq     LA7C9                           ; A769 F0 5E                    .^
        dey                                     ; A76B 88                       .
        beq     LA795                           ; A76C F0 27                    .'
        lda     SprObject_X_Position            ; A76E A5 86                    ..
        adc     #$04                            ; A770 69 04                    i.
        sta     Fireball_X_Position,x           ; A772 95 8D                    ..
        lda     SprObject_PageLoc               ; A774 A5 6D                    .m
        adc     #$00                            ; A776 69 00                    i.
        sta     Fireball_PageLoc,x              ; A778 95 74                    .t
        lda     SprObject_Y_Position            ; A77A A5 CE                    ..
        sta     Fireball_Y_Position,x           ; A77C 95 D5                    ..
        lda     #$01                            ; A77E A9 01                    ..
        sta     Fireball_Y_HighPos,x            ; A780 95 BC                    ..
        ldy     PlayerFacingDir                 ; A782 A4 33                    .3
        dey                                     ; A784 88                       .
        lda     LA75E,y                         ; A785 B9 5E A7                 .^.
        sta     Fireball_X_Speed,x              ; A788 95 5E                    .^
        lda     #$04                            ; A78A A9 04                    ..
        sta     Fireball_Y_Speed,x              ; A78C 95 A6                    ..
        lda     #$07                            ; A78E A9 07                    ..
        sta     Fireball_BoundBoxCtrl,x         ; A790 9D A0 04                 ...
        dec     Fireball_State,x                ; A793 D6 24                    .$
LA795:
        txa                                     ; A795 8A                       .
        clc                                     ; A796 18                       .
        adc     #$07                            ; A797 69 07                    i.
        tax                                     ; A799 AA                       .
        lda     #$50                            ; A79A A9 50                    .P
        sta     $00                             ; A79C 85 00                    ..
        lda     #$03                            ; A79E A9 03                    ..
        sta     $02                             ; A7A0 85 02                    ..
        lda     #$00                            ; A7A2 A9 00                    ..
        jsr     LB0C4                           ; A7A4 20 C4 B0                  ..
        jsr     LAFFC                           ; A7A7 20 FC AF                  ..
        ldx     ObjectOffset                    ; A7AA A6 08                    ..
        jsr     LF180                           ; A7AC 20 80 F1                  ..
        jsr     LF1CC                           ; A7AF 20 CC F1                  ..
        jsr     LE240                           ; A7B2 20 40 E2                  @.
        jsr     LE1DB                           ; A7B5 20 DB E1                  ..
        lda     FBall_OffscreenBits             ; A7B8 AD D2 03                 ...
        and     #$CC                            ; A7BB 29 CC                    ).
        bne     LA7C5                           ; A7BD D0 06                    ..
        jsr     LD6A7                           ; A7BF 20 A7 D6                  ..
        jmp     LED23                           ; A7C2 4C 23 ED                 L#.

; ----------------------------------------------------------------------------
LA7C5:
        lda     #$00                            ; A7C5 A9 00                    ..
        sta     Fireball_State,x                ; A7C7 95 24                    .$
LA7C9:
        rts                                     ; A7C9 60                       `

; ----------------------------------------------------------------------------
LA7CA:
        jsr     LF180                           ; A7CA 20 80 F1                  ..
        jmp     LED4E                           ; A7CD 4C 4E ED                 LN.

; ----------------------------------------------------------------------------
LA7D0:
        lda     $07A8,x                         ; A7D0 BD A8 07                 ...
        and     #$01                            ; A7D3 29 01                    ).
        sta     $07                             ; A7D5 85 07                    ..
        lda     Bubble_Y_Position,x             ; A7D7 B5 E4                    ..
        cmp     #$F8                            ; A7D9 C9 F8                    ..
        bne     LA809                           ; A7DB D0 2C                    .,
        lda     AirBubbleTimer                  ; A7DD AD 92 07                 ...
        bne     LA821                           ; A7E0 D0 3F                    .?
LA7E2:
        ldy     #$00                            ; A7E2 A0 00                    ..
        lda     PlayerFacingDir                 ; A7E4 A5 33                    .3
        lsr     a                               ; A7E6 4A                       J
        bcc     LA7EB                           ; A7E7 90 02                    ..
        ldy     #$08                            ; A7E9 A0 08                    ..
LA7EB:
        tya                                     ; A7EB 98                       .
        adc     SprObject_X_Position            ; A7EC 65 86                    e.
        sta     Bubble_X_Position,x             ; A7EE 95 9C                    ..
        lda     SprObject_PageLoc               ; A7F0 A5 6D                    .m
        adc     #$00                            ; A7F2 69 00                    i.
        sta     Bubble_PageLoc,x                ; A7F4 95 83                    ..
        lda     SprObject_Y_Position            ; A7F6 A5 CE                    ..
        clc                                     ; A7F8 18                       .
        adc     #$08                            ; A7F9 69 08                    i.
        sta     Bubble_Y_Position,x             ; A7FB 95 E4                    ..
        lda     #$01                            ; A7FD A9 01                    ..
        sta     Bubble_Y_HighPos,x              ; A7FF 95 CB                    ..
        ldy     $07                             ; A801 A4 07                    ..
        lda     LA824,y                         ; A803 B9 24 A8                 .$.
        sta     AirBubbleTimer                  ; A806 8D 92 07                 ...
LA809:
        ldy     $07                             ; A809 A4 07                    ..
        lda     Bubble_YMF_Dummy,x              ; A80B BD 2C 04                 .,.
        sec                                     ; A80E 38                       8
        sbc     LA822,y                         ; A80F F9 22 A8                 .".
        sta     Bubble_YMF_Dummy,x              ; A812 9D 2C 04                 .,.
        lda     Bubble_Y_Position,x             ; A815 B5 E4                    ..
        sbc     #$00                            ; A817 E9 00                    ..
        cmp     #$20                            ; A819 C9 20                    . 
        bcs     LA81F                           ; A81B B0 02                    ..
        lda     #$F8                            ; A81D A9 F8                    ..
LA81F:
        sta     Bubble_Y_Position,x             ; A81F 95 E4                    ..
LA821:
        rts                                     ; A821 60                       `

; ----------------------------------------------------------------------------
LA822:
        .byte   $FF,$50                         ; A822 FF 50                    .P
LA824:
        .byte   $40,$20                         ; A824 40 20                    @ 
; ----------------------------------------------------------------------------
LA826:
        lda     OperMode                        ; A826 AD 70 07                 .p.
        beq     LA87A                           ; A829 F0 4F                    .O
        lda     GameEngineSubroutine            ; A82B A5 0E                    ..
        cmp     #$08                            ; A82D C9 08                    ..
        bcc     LA87A                           ; A82F 90 49                    .I
        cmp     #$0B                            ; A831 C9 0B                    ..
        beq     LA87A                           ; A833 F0 45                    .E
        lda     SprObject_Y_HighPos             ; A835 A5 B5                    ..
        cmp     #$02                            ; A837 C9 02                    ..
        bcs     LA87A                           ; A839 B0 3F                    .?
        lda     GameTimerCtrlTimer              ; A83B AD 87 07                 ...
        bne     LA87A                           ; A83E D0 3A                    .:
        lda     GameTimerDisplay                ; A840 AD F8 07                 ...
        ora     $07F9                           ; A843 0D F9 07                 ...
        ora     $07FA                           ; A846 0D FA 07                 ...
        beq     LA871                           ; A849 F0 26                    .&
        ldy     GameTimerDisplay                ; A84B AC F8 07                 ...
        dey                                     ; A84E 88                       .
        bne     LA85D                           ; A84F D0 0C                    ..
        lda     $07F9                           ; A851 AD F9 07                 ...
        ora     $07FA                           ; A854 0D FA 07                 ...
        bne     LA85D                           ; A857 D0 04                    ..
        lda     #$40                            ; A859 A9 40                    .@
        sta     EventMusicQueue                 ; A85B 85 FC                    ..
LA85D:
        lda     #$12                            ; A85D A9 12                    ..
        sta     GameTimerCtrlTimer              ; A85F 8D 87 07                 ...
        ldy     #$23                            ; A862 A0 23                    .#
        lda     #$FF                            ; A864 A9 FF                    ..
        sta     $0139                           ; A866 8D 39 01                 .9.
        jsr     L90C4                           ; A869 20 C4 90                  ..
        lda     #$A4                            ; A86C A9 A4                    ..
        jmp     L906B                           ; A86E 4C 6B 90                 Lk.

; ----------------------------------------------------------------------------
LA871:
        sta     PlayerStatus                    ; A871 8D 56 07                 .V.
        jsr     LD917                           ; A874 20 17 D9                  ..
        inc     GameTimerExpiredFlag            ; A877 EE 59 07                 .Y.
LA87A:
        rts                                     ; A87A 60                       `

; ----------------------------------------------------------------------------
        .byte   $AD,$23,$07,$F0,$FA,$A5,$CE,$25 ; A87B AD 23 07 F0 FA A5 CE 25  .#.....%
        .byte   $B5,$D0,$F4,$8D,$23,$07,$EE,$D6 ; A883 B5 D0 F4 8D 23 07 EE D6  ....#...
        .byte   $06,$4C,$5F,$C9                 ; A88B 06 4C 5F C9              .L_.
; ----------------------------------------------------------------------------
LA88F:
        lda     PrimaryHardMode                 ; A88F AD 6A 07                 .j.
        beq     LA8D0                           ; A892 F0 3C                    .<
        .byte   $AD,$4E,$07,$D0,$37,$8D,$7D,$04 ; A894 AD 4E 07 D0 37 8D 7D 04  .N..7.}.
        .byte   $AD,$47,$07,$D0,$2F,$A0,$04,$B9 ; A89C AD 47 07 D0 2F A0 04 B9  .G../...
        .byte   $71,$04,$18,$79,$77,$04,$85,$02 ; A8A4 71 04 18 79 77 04 85 02  q..yw...
        .byte   $B9,$6B,$04,$F0,$1C,$69,$00,$85 ; A8AC B9 6B 04 F0 1C 69 00 85  .k...i..
        .byte   $01,$A5,$86,$38,$F9,$71,$04,$A5 ; A8B4 01 A5 86 38 F9 71 04 A5  ...8.q..
        .byte   $6D,$F9,$6B,$04,$30,$0B,$A5,$02 ; A8BC 6D F9 6B 04 30 0B A5 02  m.k.0...
        .byte   $38,$E5,$86,$A5,$01,$E5,$6D,$10 ; A8C4 38 E5 86 A5 01 E5 6D 10  8.....m.
        .byte   $04,$88,$10,$D3                 ; A8CC 04 88 10 D3              ....
; ----------------------------------------------------------------------------
LA8D0:
        rts                                     ; A8D0 60                       `

; ----------------------------------------------------------------------------
        .byte   $B9,$77,$04,$4A,$85,$00,$B9,$71 ; A8D1 B9 77 04 4A 85 00 B9 71  .w.J...q
        .byte   $04,$18,$65,$00,$85,$01,$B9,$6B ; A8D9 04 18 65 00 85 01 B9 6B  ..e....k
        .byte   $04,$69,$00,$85,$00,$A5,$09,$4A ; A8E1 04 69 00 85 00 A5 09 4A  .i.....J
        .byte   $90,$2C,$A5,$01,$38,$E5,$86,$A5 ; A8E9 90 2C A5 01 38 E5 86 A5  .,..8...
        .byte   $00,$E5,$6D,$10,$0E,$A5,$86,$38 ; A8F1 00 E5 6D 10 0E A5 86 38  ..m....8
        .byte   $E9,$01,$85,$86,$A5,$6D,$E9,$00 ; A8F9 E9 01 85 86 A5 6D E9 00  .....m..
        .byte   $4C,$15,$A9,$AD,$90,$04,$4A,$90 ; A901 4C 15 A9 AD 90 04 4A 90  L.....J.
        .byte   $0D,$A5,$86,$18,$69,$01,$85,$86 ; A909 0D A5 86 18 69 01 85 86  ....i...
        .byte   $A5,$6D,$69,$00,$85,$6D,$A9,$10 ; A911 A5 6D 69 00 85 6D A9 10  .mi..m..
        .byte   $85,$00,$A9,$01,$8D,$7D,$04,$85 ; A919 85 00 A9 01 8D 7D 04 85  .....}..
        .byte   $02,$4A,$AA,$4C,$C4,$B0         ; A921 02 4A AA 4C C4 B0        .J.L..
LA927:
        .byte   $05,$02,$08,$04,$01             ; A927 05 02 08 04 01           .....
LA92C:
        .byte   $03,$03,$04,$04,$04             ; A92C 03 03 04 04 04           .....
; ----------------------------------------------------------------------------
LA931:
        ldx     #$05                            ; A931 A2 05                    ..
        stx     ObjectOffset                    ; A933 86 08                    ..
        lda     Enemy_ID,x                      ; A935 B5 16                    ..
        cmp     #$30                            ; A937 C9 30                    .0
        bne     LA991                           ; A939 D0 56                    .V
        lda     GameEngineSubroutine            ; A93B A5 0E                    ..
        cmp     #$04                            ; A93D C9 04                    ..
        bne     LA972                           ; A93F D0 31                    .1
        lda     Player_State                    ; A941 A5 1D                    ..
        cmp     #$03                            ; A943 C9 03                    ..
        bne     LA972                           ; A945 D0 2B                    .+
        lda     Enemy_Y_Position,x              ; A947 B5 CF                    ..
        cmp     #$AA                            ; A949 C9 AA                    ..
        bcs     LA975                           ; A94B B0 28                    .(
        lda     SprObject_Y_Position            ; A94D A5 CE                    ..
        cmp     #$A2                            ; A94F C9 A2                    ..
        bcs     LA975                           ; A951 B0 22                    ."
        lda     Enemy_YMF_Dummy,x               ; A953 BD 17 04                 ...
        adc     #$FF                            ; A956 69 FF                    i.
        sta     Enemy_YMF_Dummy,x               ; A958 9D 17 04                 ...
        lda     Enemy_Y_Position,x              ; A95B B5 CF                    ..
        adc     #$01                            ; A95D 69 01                    i.
        sta     Enemy_Y_Position,x              ; A95F 95 CF                    ..
        lda     FlagpoleFNum_YMFDummy           ; A961 AD 0E 01                 ...
        sec                                     ; A964 38                       8
        sbc     #$FF                            ; A965 E9 FF                    ..
        sta     FlagpoleFNum_YMFDummy           ; A967 8D 0E 01                 ...
        lda     FlagpoleFNum_Y_Pos              ; A96A AD 0D 01                 ...
        sbc     #$01                            ; A96D E9 01                    ..
        sta     FlagpoleFNum_Y_Pos              ; A96F 8D 0D 01                 ...
LA972:
        jmp     LA988                           ; A972 4C 88 A9                 L..

; ----------------------------------------------------------------------------
LA975:
        ldy     FlagpoleScore                   ; A975 AC 0F 01                 ...
        lda     LA927,y                         ; A978 B9 27 A9                 .'.
        ldx     LA92C,y                         ; A97B BE 2C A9                 .,.
        sta     DigitModifier,x                 ; A97E 9D 34 01                 .4.
        jsr     LAD03                           ; A981 20 03 AD                  ..
        lda     #$05                            ; A984 A9 05                    ..
        sta     GameEngineSubroutine            ; A986 85 0E                    ..
LA988:
        jsr     LF1F4                           ; A988 20 F4 F1                  ..
        jsr     LF197                           ; A98B 20 97 F1                  ..
        jsr     LE564                           ; A98E 20 64 E5                  d.
LA991:
        rts                                     ; A991 60                       `

; ----------------------------------------------------------------------------
LA992:
        .byte   $08,$10,$08,$00                 ; A992 08 10 08 00              ....
; ----------------------------------------------------------------------------
        jsr     LF1F4                           ; A996 20 F4 F1                  ..
        lda     TimerControl                    ; A999 AD 47 07                 .G.
        bne     LA9DE                           ; A99C D0 40                    .@
        lda     JumpspringAnimCtrl              ; A99E AD 0E 07                 ...
        beq     LA9DE                           ; A9A1 F0 3B                    .;
        tay                                     ; A9A3 A8                       .
        dey                                     ; A9A4 88                       .
        tya                                     ; A9A5 98                       .
        and     #$02                            ; A9A6 29 02                    ).
        bne     LA9B1                           ; A9A8 D0 07                    ..
        inc     SprObject_Y_Position            ; A9AA E6 CE                    ..
        inc     SprObject_Y_Position            ; A9AC E6 CE                    ..
        jmp     LA9B5                           ; A9AE 4C B5 A9                 L..

; ----------------------------------------------------------------------------
LA9B1:
        dec     SprObject_Y_Position            ; A9B1 C6 CE                    ..
        dec     SprObject_Y_Position            ; A9B3 C6 CE                    ..
LA9B5:
        lda     Enemy_X_Speed,x                 ; A9B5 B5 58                    .X
        clc                                     ; A9B7 18                       .
        adc     LA992,y                         ; A9B8 79 92 A9                 y..
        sta     Enemy_Y_Position,x              ; A9BB 95 CF                    ..
        cpy     #$01                            ; A9BD C0 01                    ..
        bcc     LA9D0                           ; A9BF 90 0F                    ..
        lda     A_B_Buttons                     ; A9C1 A5 0A                    ..
        and     #$80                            ; A9C3 29 80                    ).
        beq     LA9D0                           ; A9C5 F0 09                    ..
        and     PreviousA_B_Buttons             ; A9C7 25 0D                    %.
        bne     LA9D0                           ; A9C9 D0 05                    ..
        lda     #$F4                            ; A9CB A9 F4                    ..
        sta     JumpspringForce                 ; A9CD 8D DB 06                 ...
LA9D0:
        cpy     #$03                            ; A9D0 C0 03                    ..
        bne     LA9DE                           ; A9D2 D0 0A                    ..
        lda     JumpspringForce                 ; A9D4 AD DB 06                 ...
        sta     SprObject_Y_Speed               ; A9D7 85 9F                    ..
        lda     #$00                            ; A9D9 A9 00                    ..
        sta     JumpspringAnimCtrl              ; A9DB 8D 0E 07                 ...
LA9DE:
        jsr     LF197                           ; A9DE 20 97 F1                  ..
        jsr     LE8B1                           ; A9E1 20 B1 E8                  ..
        jsr     LD648                           ; A9E4 20 48 D6                  H.
        lda     JumpspringAnimCtrl              ; A9E7 AD 0E 07                 ...
        beq     LA9F9                           ; A9EA F0 0D                    ..
        lda     JumpspringTimer                 ; A9EC AD 86 07                 ...
        bne     LA9F9                           ; A9EF D0 08                    ..
        lda     #$04                            ; A9F1 A9 04                    ..
        sta     JumpspringTimer                 ; A9F3 8D 86 07                 ...
        inc     JumpspringAnimCtrl              ; A9F6 EE 0E 07                 ...
LA9F9:
        rts                                     ; A9F9 60                       `

; ----------------------------------------------------------------------------
        .byte   $A9,$2F,$95,$16,$A9,$01,$95,$0F ; A9FA A9 2F 95 16 A9 01 95 0F  ./......
        .byte   $B9,$76,$00,$95,$6E,$B9,$8F,$00 ; AA02 B9 76 00 95 6E B9 8F 00  .v..n...
        .byte   $95,$87,$B9,$D7,$00,$95,$CF,$AC ; AA0A 95 87 B9 D7 00 95 CF AC  ........
        .byte   $98,$03,$D0,$03,$8D,$9D,$03,$8A ; AA12 98 03 D0 03 8D 9D 03 8A  ........
        .byte   $99,$9A,$03,$EE,$98,$03,$A9,$04 ; AA1A 99 9A 03 EE 98 03 A9 04  ........
        .byte   $85,$FE,$60,$30,$60,$E0,$05,$D0 ; AA22 85 FE 60 30 60 E0 05 D0  ..`0`...
        .byte   $68,$AC,$98,$03,$88,$AD,$99,$03 ; AA2A 68 AC 98 03 88 AD 99 03  h.......
        .byte   $D9,$25,$AA,$F0,$0F,$A5,$09,$4A ; AA32 D9 25 AA F0 0F A5 09 4A  .%.....J
        .byte   $4A,$90,$09,$A5,$D4,$E9,$01,$85 ; AA3A 4A 90 09 A5 D4 E9 01 85  J.......
        .byte   $D4,$EE,$99,$03,$AD,$99,$03,$C9 ; AA42 D4 EE 99 03 AD 99 03 C9  ........
        .byte   $08,$90,$46,$20,$97,$F1,$20,$F4 ; AA4A 08 90 46 20 97 F1 20 F4  ..F .. .
        .byte   $F1,$A0,$00,$20,$48,$E4,$C8,$CC ; AA52 F1 A0 00 20 48 E4 C8 CC  ... H...
        .byte   $98,$03,$D0,$F7,$AD,$D1,$03,$29 ; AA5A 98 03 D0 F7 AD D1 03 29  .......)
        .byte   $0C,$F0,$10,$88,$BE,$9A,$03,$20 ; AA62 0C F0 10 88 BE 9A 03 20  ....... 
        .byte   $5F,$C9,$88,$10,$F7,$8D,$98,$03 ; AA6A 5F C9 88 10 F7 8D 98 03  _.......
        .byte   $8D,$99,$03,$AD,$99,$03,$C9,$20 ; AA72 8D 99 03 AD 99 03 C9 20  ....... 
        .byte   $90,$17,$A2,$06,$A9,$01,$A0,$1B ; AA7A 90 17 A2 06 A9 01 A0 1B  ........
        .byte   $20,$03,$E4,$A4,$02,$C0,$D0,$B0 ; AA82 20 03 E4 A4 02 C0 D0 B0   .......
        .byte   $08,$B1,$06,$D0,$04,$A9,$26,$91 ; AA8A 08 B1 06 D0 04 A9 26 91  ......&.
        .byte   $06,$A6,$08,$60                 ; AA92 06 A6 08 60              ...`
LAA96:
        .byte   $0F,$07                         ; AA96 0F 07                    ..
; ----------------------------------------------------------------------------
LAA98:
        lda     AreaType                        ; AA98 AD 4E 07                 .N.
        beq     LAB0C                           ; AA9B F0 6F                    .o
        ldx     #$02                            ; AA9D A2 02                    ..
LAA9F:
        stx     ObjectOffset                    ; AA9F 86 08                    ..
        lda     Enemy_Flag,x                    ; AAA1 B5 0F                    ..
        bne     LAAF6                           ; AAA3 D0 51                    .Q
        lda     $07A8,x                         ; AAA5 BD A8 07                 ...
        ldy     SecondaryHardMode               ; AAA8 AC CC 06                 ...
        and     LAA96,y                         ; AAAB 39 96 AA                 9..
        cmp     #$06                            ; AAAE C9 06                    ..
        bcs     LAAF6                           ; AAB0 B0 44                    .D
        tay                                     ; AAB2 A8                       .
        lda     Cannon_PageLoc,y                ; AAB3 B9 6B 04                 .k.
        beq     LAAF6                           ; AAB6 F0 3E                    .>
        .byte   $B9,$7D,$04,$F0,$08,$E9,$00,$99 ; AAB8 B9 7D 04 F0 08 E9 00 99  .}......
        .byte   $7D,$04,$4C,$F6,$AA,$AD,$47,$07 ; AAC0 7D 04 4C F6 AA AD 47 07  }.L...G.
        .byte   $D0,$2C,$A9,$0E,$99,$7D,$04,$B9 ; AAC8 D0 2C A9 0E 99 7D 04 B9  .,...}..
        .byte   $6B,$04,$95,$6E,$B9,$71,$04,$95 ; AAD0 6B 04 95 6E B9 71 04 95  k..n.q..
        .byte   $87,$B9,$77,$04,$38,$E9,$08,$95 ; AAD8 87 B9 77 04 38 E9 08 95  ..w.8...
        .byte   $CF,$A9,$01,$95,$B6,$95,$0F,$4A ; AAE0 CF A9 01 95 B6 95 0F 4A  .......J
        .byte   $95,$1E,$A9,$09,$9D,$9A,$04,$A9 ; AAE8 95 1E A9 09 9D 9A 04 A9  ........
        .byte   $33,$95,$16,$4C,$09,$AB         ; AAF0 33 95 16 4C 09 AB        3..L..
; ----------------------------------------------------------------------------
LAAF6:
        lda     Enemy_ID,x                      ; AAF6 B5 16                    ..
        cmp     #$33                            ; AAF8 C9 33                    .3
        bne     LAB09                           ; AAFA D0 0D                    ..
        .byte   $20,$48,$D6,$B5,$0F,$F0,$06,$20 ; AAFC 20 48 D6 B5 0F F0 06 20   H..... 
        .byte   $F4,$F1,$20,$0F,$AB             ; AB04 F4 F1 20 0F AB           .. ..
; ----------------------------------------------------------------------------
LAB09:
        dex                                     ; AB09 CA                       .
        bpl     LAA9F                           ; AB0A 10 93                    ..
LAB0C:
        rts                                     ; AB0C 60                       `

; ----------------------------------------------------------------------------
        .byte   $18,$E8,$AD,$47,$07,$D0,$3E,$B5 ; AB0D 18 E8 AD 47 07 D0 3E B5  ...G..>.
        .byte   $1E,$D0,$2E,$AD,$D1,$03,$29,$0C ; AB15 1E D0 2E AD D1 03 29 0C  ......).
        .byte   $C9,$0C,$F0,$40,$A0,$01,$20,$4E ; AB1D C9 0C F0 40 A0 01 20 4E  ...@.. N
        .byte   $E1,$30,$01,$C8,$94,$46,$88,$B9 ; AB25 E1 30 01 C8 94 46 88 B9  .0...F..
        .byte   $0D,$AB,$95,$58,$A5,$00,$69,$28 ; AB2D 0D AB 95 58 A5 00 69 28  ...X..i(
        .byte   $C9,$50,$90,$28,$A9,$01,$95,$1E ; AB35 C9 50 90 28 A9 01 95 1E  .P.(....
        .byte   $A9,$0A,$9D,$8A,$07,$A9,$08,$85 ; AB3D A9 0A 9D 8A 07 A9 08 85  ........
        .byte   $FE,$B5,$1E,$29,$20,$F0,$03,$20 ; AB45 FE B5 1E 29 20 F0 03 20  ...) .. 
        .byte   $50,$B0,$20,$EF,$AF,$20,$F4,$F1 ; AB4D 50 B0 20 EF AF 20 F4 F1  P. .. ..
        .byte   $20,$97,$F1,$20,$56,$E2,$20,$32 ; AB55 20 97 F1 20 56 E2 20 32   .. V. 2
        .byte   $D8,$4C,$B1,$E8,$20,$5F,$C9,$60 ; AB5D D8 4C B1 E8 20 5F C9 60  .L.. _.`
        .byte   $04,$04,$04,$05,$05,$05,$06,$06 ; AB65 04 04 04 05 05 05 06 06  ........
        .byte   $06,$10,$F0,$AD,$A8,$07,$29,$07 ; AB6D 06 10 F0 AD A8 07 29 07  ......).
        .byte   $D0,$05,$AD,$A8,$07,$29,$08,$A8 ; AB75 D0 05 AD A8 07 29 08 A8  .....)..
        .byte   $B9,$2A,$00,$D0,$19,$BE,$65,$AB ; AB7D B9 2A 00 D0 19 BE 65 AB  .*....e.
        .byte   $B5,$0F,$D0,$12,$A6,$08,$8A,$99 ; AB85 B5 0F D0 12 A6 08 8A 99  ........
        .byte   $AE,$06,$A9,$90,$99,$2A,$00,$A9 ; AB8D AE 06 A9 90 99 2A 00 A9  .....*..
        .byte   $07,$99,$A2,$04,$38,$60,$A6,$08 ; AB95 07 99 A2 04 38 60 A6 08  ....8`..
        .byte   $18,$60,$AD,$47,$07,$D0,$63,$B5 ; AB9D 18 60 AD 47 07 D0 63 B5  .`.G..c.
        .byte   $2A,$29,$7F,$BC,$AE,$06,$C9,$02 ; ABA5 2A 29 7F BC AE 06 C9 02  *)......
        .byte   $F0,$20,$B0,$34,$8A,$18,$69,$0D ; ABAD F0 20 B0 34 8A 18 69 0D  . .4..i.
        .byte   $AA,$A9,$10,$85,$00,$A9,$0F,$85 ; ABB5 AA A9 10 85 00 A9 0F 85  ........
        .byte   $01,$A9,$04,$85,$02,$A9,$00,$20 ; ABBD 01 A9 04 85 02 A9 00 20  ....... 
        .byte   $C4,$B0,$20,$FC,$AF,$A6,$08,$4C ; ABC5 C4 B0 20 FC AF A6 08 4C  .. ....L
        .byte   $04,$AC,$A9,$FE,$95,$AC,$B9,$1E ; ABCD 04 AC A9 FE 95 AC B9 1E  ........
        .byte   $00,$29,$F7,$99,$1E,$00,$B6,$46 ; ABD5 00 29 F7 99 1E 00 B6 46  .).....F
        .byte   $CA,$BD,$6E,$AB,$A6,$08,$95,$64 ; ABDD CA BD 6E AB A6 08 95 64  ..n....d
        .byte   $D6,$2A,$B9,$87,$00,$18,$69,$02 ; ABE5 D6 2A B9 87 00 18 69 02  .*....i.
        .byte   $95,$93,$B9,$6E,$00,$69,$00,$95 ; ABED 95 93 B9 6E 00 69 00 95  ...n.i..
        .byte   $7A,$B9,$CF,$00,$38,$E9,$0A,$95 ; ABF5 7A B9 CF 00 38 E9 0A 95  z...8...
        .byte   $DB,$A9,$01,$95,$C2,$D0,$03,$20 ; ABFD DB A9 01 95 C2 D0 03 20  ....... 
        .byte   $9F,$D7,$20,$E0,$F1,$20,$8D,$F1 ; AC05 9F D7 20 E0 F1 20 8D F1  .. .. ..
        .byte   $20,$49,$E2,$20,$F5,$E4,$60     ; AC0D 20 49 E2 20 F5 E4 60      I. ..`
; ----------------------------------------------------------------------------
        jsr     LAC60                           ; AC14 20 60 AC                  `.
        lda     Block_PageLoc,x                 ; AC17 B5 76                    .v
        sta     Misc_PageLoc,y                  ; AC19 99 7A 00                 .z.
        lda     Block_X_Position,x              ; AC1C B5 8F                    ..
        ora     #$05                            ; AC1E 09 05                    ..
        sta     Misc_X_Position,y               ; AC20 99 93 00                 ...
        lda     Block_Y_Position,x              ; AC23 B5 D7                    ..
        sbc     #$10                            ; AC25 E9 10                    ..
        sta     Misc_Y_Position,y               ; AC27 99 DB 00                 ...
        jmp     LAC48                           ; AC2A 4C 48 AC                 LH.

; ----------------------------------------------------------------------------
LAC2D:
        jsr     LAC60                           ; AC2D 20 60 AC                  `.
        lda     Block_PageLoc2,x                ; AC30 BD EA 03                 ...
        sta     Misc_PageLoc,y                  ; AC33 99 7A 00                 .z.
        lda     L0006                           ; AC36 A5 06                    ..
        asl     a                               ; AC38 0A                       .
        asl     a                               ; AC39 0A                       .
        asl     a                               ; AC3A 0A                       .
        asl     a                               ; AC3B 0A                       .
        ora     #$05                            ; AC3C 09 05                    ..
        sta     Misc_X_Position,y               ; AC3E 99 93 00                 ...
        lda     $02                             ; AC41 A5 02                    ..
        adc     #$20                            ; AC43 69 20                    i 
        sta     Misc_Y_Position,y               ; AC45 99 DB 00                 ...
LAC48:
        lda     #$FB                            ; AC48 A9 FB                    ..
        sta     Misc_Y_Speed,y                  ; AC4A 99 AC 00                 ...
        lda     #$01                            ; AC4D A9 01                    ..
        sta     Misc_Y_HighPos,y                ; AC4F 99 C2 00                 ...
        sta     Misc_State,y                    ; AC52 99 2A 00                 .*.
        sta     Square2SoundQueue               ; AC55 85 FE                    ..
        stx     ObjectOffset                    ; AC57 86 08                    ..
        jsr     LACDA                           ; AC59 20 DA AC                  ..
        inc     CoinTallyFor1Ups                ; AC5C EE 48 07                 .H.
        rts                                     ; AC5F 60                       `

; ----------------------------------------------------------------------------
LAC60:
        ldy     #$08                            ; AC60 A0 08                    ..
LAC62:
        lda     Misc_State,y                    ; AC62 B9 2A 00                 .*.
        beq     LAC6E                           ; AC65 F0 07                    ..
        dey                                     ; AC67 88                       .
        cpy     #$05                            ; AC68 C0 05                    ..
        bne     LAC62                           ; AC6A D0 F6                    ..
        .byte   $A0,$08                         ; AC6C A0 08                    ..
; ----------------------------------------------------------------------------
LAC6E:
        sty     JumpCoinMiscOffset              ; AC6E 8C B7 06                 ...
        rts                                     ; AC71 60                       `

; ----------------------------------------------------------------------------
LAC72:
        ldx     #$08                            ; AC72 A2 08                    ..
LAC74:
        stx     ObjectOffset                    ; AC74 86 08                    ..
        lda     Misc_State,x                    ; AC76 B5 2A                    .*
        beq     LACD0                           ; AC78 F0 56                    .V
        asl     a                               ; AC7A 0A                       .
        bcc     LAC83                           ; AC7B 90 06                    ..
        .byte   $20,$9F,$AB,$4C,$D0,$AC         ; AC7D 20 9F AB 4C D0 AC         ..L..
; ----------------------------------------------------------------------------
LAC83:
        ldy     Misc_State,x                    ; AC83 B4 2A                    .*
        dey                                     ; AC85 88                       .
        beq     LACA5                           ; AC86 F0 1D                    ..
        inc     Misc_State,x                    ; AC88 F6 2A                    .*
        lda     Misc_X_Position,x               ; AC8A B5 93                    ..
        clc                                     ; AC8C 18                       .
        adc     ScrollAmount                    ; AC8D 6D 75 07                 mu.
        sta     Misc_X_Position,x               ; AC90 95 93                    ..
        lda     Misc_PageLoc,x                  ; AC92 B5 7A                    .z
        adc     #$00                            ; AC94 69 00                    i.
        sta     Misc_PageLoc,x                  ; AC96 95 7A                    .z
        lda     Misc_State,x                    ; AC98 B5 2A                    .*
        cmp     #$30                            ; AC9A C9 30                    .0
        bne     LACC4                           ; AC9C D0 26                    .&
        lda     #$00                            ; AC9E A9 00                    ..
        sta     Misc_State,x                    ; ACA0 95 2A                    .*
        jmp     LACD0                           ; ACA2 4C D0 AC                 L..

; ----------------------------------------------------------------------------
LACA5:
        txa                                     ; ACA5 8A                       .
        clc                                     ; ACA6 18                       .
        adc     #$0D                            ; ACA7 69 0D                    i.
        tax                                     ; ACA9 AA                       .
        lda     #$50                            ; ACAA A9 50                    .P
        sta     $00                             ; ACAC 85 00                    ..
        lda     #$06                            ; ACAE A9 06                    ..
        sta     $02                             ; ACB0 85 02                    ..
        lsr     a                               ; ACB2 4A                       J
        sta     $01                             ; ACB3 85 01                    ..
        lda     #$00                            ; ACB5 A9 00                    ..
        jsr     LB0C4                           ; ACB7 20 C4 B0                  ..
        ldx     ObjectOffset                    ; ACBA A6 08                    ..
        lda     Misc_Y_Speed,x                  ; ACBC B5 AC                    ..
        cmp     #$05                            ; ACBE C9 05                    ..
        bne     LACC4                           ; ACC0 D0 02                    ..
        inc     Misc_State,x                    ; ACC2 F6 2A                    .*
LACC4:
        jsr     LF18D                           ; ACC4 20 8D F1                  ..
        jsr     LF1E0                           ; ACC7 20 E0 F1                  ..
        jsr     LE249                           ; ACCA 20 49 E2                  I.
        jsr     LE69D                           ; ACCD 20 9D E6                  ..
LACD0:
        dex                                     ; ACD0 CA                       .
        bpl     LAC74                           ; ACD1 10 A1                    ..
        rts                                     ; ACD3 60                       `

; ----------------------------------------------------------------------------
LACD4:
        .byte   $17,$1D                         ; ACD4 17 1D                    ..
LACD6:
        .byte   $0B,$11                         ; ACD6 0B 11                    ..
LACD8:
        .byte   $02,$13                         ; ACD8 02 13                    ..
; ----------------------------------------------------------------------------
LACDA:
        lda     #$01                            ; ACDA A9 01                    ..
        sta     $0139                           ; ACDC 8D 39 01                 .9.
        ldx     CurrentPlayer                   ; ACDF AE 53 07                 .S.
        ldy     LACD4,x                         ; ACE2 BC D4 AC                 ...
        jsr     L90C4                           ; ACE5 20 C4 90                  ..
        inc     CoinTally                       ; ACE8 EE 5E 07                 .^.
        lda     CoinTally                       ; ACEB AD 5E 07                 .^.
        cmp     #$64                            ; ACEE C9 64                    .d
        bne     LACFE                           ; ACF0 D0 0C                    ..
        .byte   $A9,$00,$8D,$5E,$07,$EE,$5A,$07 ; ACF2 A9 00 8D 5E 07 EE 5A 07  ...^..Z.
        .byte   $A9,$40,$85,$FE                 ; ACFA A9 40 85 FE              .@..
; ----------------------------------------------------------------------------
LACFE:
        lda     #$02                            ; ACFE A9 02                    ..
        sta     $0138                           ; AD00 8D 38 01                 .8.
LAD03:
        ldx     CurrentPlayer                   ; AD03 AE 53 07                 .S.
        ldy     LACD6,x                         ; AD06 BC D6 AC                 ...
        jsr     L90C4                           ; AD09 20 C4 90                  ..
LAD0C:
        ldy     CurrentPlayer                   ; AD0C AC 53 07                 .S.
        lda     LACD8,y                         ; AD0F B9 D8 AC                 ...
LAD12:
        jmp BANK_PractisePrintScore
        ;jsr     L906B                           ; AD12 20 6B 90                  k.
        ldy     VRAM_Buffer1_Offset             ; AD15 AC 00 03                 ...
        lda     $02FB,y                         ; AD18 B9 FB 02                 ...
        bne     LAD22                           ; AD1B D0 05                    ..
        lda     #$24                            ; AD1D A9 24                    .$
        sta     $02FB,y                         ; AD1F 99 FB 02                 ...
LAD22:
        ldx     ObjectOffset                    ; AD22 A6 08                    ..
        rts                                     ; AD24 60                       `

; ----------------------------------------------------------------------------
LAD25:
        lda     #$2E                            ; AD25 A9 2E                    ..
        sta     $1B                             ; AD27 85 1B                    ..
        lda     Block_PageLoc,x                 ; AD29 B5 76                    .v
        sta     $73                             ; AD2B 85 73                    .s
        lda     Block_X_Position,x              ; AD2D B5 8F                    ..
        sta     $8C                             ; AD2F 85 8C                    ..
        lda     #$01                            ; AD31 A9 01                    ..
        sta     $BB                             ; AD33 85 BB                    ..
        lda     Block_Y_Position,x              ; AD35 B5 D7                    ..
        sec                                     ; AD37 38                       8
        sbc     #$08                            ; AD38 E9 08                    ..
        sta     $D4                             ; AD3A 85 D4                    ..
        lda     #$01                            ; AD3C A9 01                    ..
        sta     $23                             ; AD3E 85 23                    .#
        sta     $14                             ; AD40 85 14                    ..
        lda     #$03                            ; AD42 A9 03                    ..
        sta     $049F                           ; AD44 8D 9F 04                 ...
        lda     PowerUpType                     ; AD47 A5 39                    .9
        cmp     #$02                            ; AD49 C9 02                    ..
        bcs     LAD57                           ; AD4B B0 0A                    ..
        lda     PlayerStatus                    ; AD4D AD 56 07                 .V.
        cmp     #$02                            ; AD50 C9 02                    ..
        bcc     LAD55                           ; AD52 90 01                    ..
        lsr     a                               ; AD54 4A                       J
LAD55:
        sta     PowerUpType                     ; AD55 85 39                    .9
LAD57:
        lda     #$20                            ; AD57 A9 20                    . 
        sta     $03CA                           ; AD59 8D CA 03                 ...
        lda     #$02                            ; AD5C A9 02                    ..
        sta     Square2SoundQueue               ; AD5E 85 FE                    ..
        rts                                     ; AD60 60                       `

; ----------------------------------------------------------------------------
        ldx     #$05                            ; AD61 A2 05                    ..
        stx     ObjectOffset                    ; AD63 86 08                    ..
        lda     $23                             ; AD65 A5 23                    .#
        beq     LADC6                           ; AD67 F0 5D                    .]
        asl     a                               ; AD69 0A                       .
        bcc     LAD8F                           ; AD6A 90 23                    .#
        lda     TimerControl                    ; AD6C AD 47 07                 .G.
        bne     LADB4                           ; AD6F D0 43                    .C
        lda     PowerUpType                     ; AD71 A5 39                    .9
        beq     LAD86                           ; AD73 F0 11                    ..
        cmp     #$03                            ; AD75 C9 03                    ..
        beq     LAD86                           ; AD77 F0 0D                    ..
        cmp     #$02                            ; AD79 C9 02                    ..
        bne     LADB4                           ; AD7B D0 37                    .7
        jsr     LCAC0                           ; AD7D 20 C0 CA                  ..
        jsr     LE16E                           ; AD80 20 6E E1                  n.
        jmp     LADB4                           ; AD83 4C B4 AD                 L..

; ----------------------------------------------------------------------------
LAD86:
        jsr     LCA3E                           ; AD86 20 3E CA                  >.
        jsr     LDFCC                           ; AD89 20 CC DF                  ..
        jmp     LADB4                           ; AD8C 4C B4 AD                 L..

; ----------------------------------------------------------------------------
LAD8F:
        lda     FrameCounter                    ; AD8F A5 09                    ..
        and     #$03                            ; AD91 29 03                    ).
        bne     LADAE                           ; AD93 D0 19                    ..
        dec     $D4                             ; AD95 C6 D4                    ..
        lda     $23                             ; AD97 A5 23                    .#
        inc     $23                             ; AD99 E6 23                    .#
        cmp     #$11                            ; AD9B C9 11                    ..
        bcc     LADAE                           ; AD9D 90 0F                    ..
        lda     #$10                            ; AD9F A9 10                    ..
        sta     Enemy_X_Speed,x                 ; ADA1 95 58                    .X
        lda     #$80                            ; ADA3 A9 80                    ..
        sta     $23                             ; ADA5 85 23                    .#
        asl     a                               ; ADA7 0A                       .
        sta     $03CA                           ; ADA8 8D CA 03                 ...
        rol     a                               ; ADAB 2A                       *
        sta     Enemy_MovingDir,x               ; ADAC 95 46                    .F
LADAE:
        lda     $23                             ; ADAE A5 23                    .#
        cmp     #$06                            ; ADB0 C9 06                    ..
        bcc     LADC6                           ; ADB2 90 12                    ..
LADB4:
        jsr     LF197                           ; ADB4 20 97 F1                  ..
        jsr     LF1F4                           ; ADB7 20 F4 F1                  ..
        jsr     LE256                           ; ADBA 20 56 E2                  V.
        jsr     LE702                           ; ADBD 20 02 E7                  ..
        jsr     LD832                           ; ADC0 20 32 D8                  2.
        jsr     LD648                           ; ADC3 20 48 D6                  H.
LADC6:
        rts                                     ; ADC6 60                       `

; ----------------------------------------------------------------------------
LADC7:
        .byte   $04,$12                         ; ADC7 04 12                    ..
; ----------------------------------------------------------------------------
LADC9:
        pha                                     ; ADC9 48                       H
        lda     #$11                            ; ADCA A9 11                    ..
        ldx     SprDataOffset_Ctrl              ; ADCC AE EE 03                 ...
        ldy     PlayerSize                      ; ADCF AC 54 07                 .T.
        bne     LADD6                           ; ADD2 D0 02                    ..
        lda     #$12                            ; ADD4 A9 12                    ..
LADD6:
        sta     Block_State,x                   ; ADD6 95 26                    .&
        jsr     L8BA2                           ; ADD8 20 A2 8B                  ..
        ldx     SprDataOffset_Ctrl              ; ADDB AE EE 03                 ...
        lda     $02                             ; ADDE A5 02                    ..
        sta     Block_Orig_YPos,x               ; ADE0 9D E4 03                 ...
        tay                                     ; ADE3 A8                       .
        lda     L0006                           ; ADE4 A5 06                    ..
        sta     Block_BBuf_Low,x                ; ADE6 9D E6 03                 ...
        lda     (L0006),y                       ; ADE9 B1 06                    ..
        jsr     LAEE3                           ; ADEB 20 E3 AE                  ..
        sta     $00                             ; ADEE 85 00                    ..
        ldy     PlayerSize                      ; ADF0 AC 54 07                 .T.
        bne     LADF6                           ; ADF3 D0 01                    ..
        tya                                     ; ADF5 98                       .
LADF6:
        bcc     LAE1D                           ; ADF6 90 25                    .%
        ldy     #$11                            ; ADF8 A0 11                    ..
        sty     Block_State,x                   ; ADFA 94 26                    .&
        lda     #$C7                            ; ADFC A9 C7                    ..
        ldy     $00                             ; ADFE A4 00                    ..
        cpy     #$58                            ; AE00 C0 58                    .X
        beq     LAE08                           ; AE02 F0 04                    ..
        cpy     #$5D                            ; AE04 C0 5D                    .]
        bne     LAE1D                           ; AE06 D0 15                    ..
LAE08:
        lda     BrickCoinTimerFlag              ; AE08 AD BC 06                 ...
        bne     LAE15                           ; AE0B D0 08                    ..
        lda     #$0B                            ; AE0D A9 0B                    ..
        sta     BrickCoinTimer                  ; AE0F 8D 9D 07                 ...
        inc     BrickCoinTimerFlag              ; AE12 EE BC 06                 ...
LAE15:
        lda     BrickCoinTimer                  ; AE15 AD 9D 07                 ...
        bne     LAE1C                           ; AE18 D0 02                    ..
        .byte   $A0,$C7                         ; AE1A A0 C7                    ..
; ----------------------------------------------------------------------------
LAE1C:
        tya                                     ; AE1C 98                       .
LAE1D:
        sta     Block_Metatile,x                ; AE1D 9D E8 03                 ...
        jsr     LAE60                           ; AE20 20 60 AE                  `.
        ldy     $02                             ; AE23 A4 02                    ..
        lda     #$23                            ; AE25 A9 23                    .#
        sta     (L0006),y                       ; AE27 91 06                    ..
        lda     #$10                            ; AE29 A9 10                    ..
        sta     BlockBounceTimer                ; AE2B 8D 84 07                 ...
        pla                                     ; AE2E 68                       h
        sta     $05                             ; AE2F 85 05                    ..
        ldy     #$00                            ; AE31 A0 00                    ..
        lda     CrouchingFlag                   ; AE33 AD 14 07                 ...
        bne     LAE3D                           ; AE36 D0 05                    ..
        lda     PlayerSize                      ; AE38 AD 54 07                 .T.
        beq     LAE3E                           ; AE3B F0 01                    ..
LAE3D:
        iny                                     ; AE3D C8                       .
LAE3E:
        lda     SprObject_Y_Position            ; AE3E A5 CE                    ..
        clc                                     ; AE40 18                       .
        adc     LADC7,y                         ; AE41 79 C7 AD                 y..
        and     #$F0                            ; AE44 29 F0                    ).
        sta     Block_Y_Position,x              ; AE46 95 D7                    ..
        ldy     Block_State,x                   ; AE48 B4 26                    .&
        cpy     #$11                            ; AE4A C0 11                    ..
        beq     LAE54                           ; AE4C F0 06                    ..
        jsr     LAEEF                           ; AE4E 20 EF AE                  ..
        jmp     LAE57                           ; AE51 4C 57 AE                 LW.

; ----------------------------------------------------------------------------
LAE54:
        jsr     LAE77                           ; AE54 20 77 AE                  w.
LAE57:
        lda     SprDataOffset_Ctrl              ; AE57 AD EE 03                 ...
        eor     #$01                            ; AE5A 49 01                    I.
        sta     SprDataOffset_Ctrl              ; AE5C 8D EE 03                 ...
        rts                                     ; AE5F 60                       `

; ----------------------------------------------------------------------------
LAE60:
        lda     SprObject_X_Position            ; AE60 A5 86                    ..
        clc                                     ; AE62 18                       .
        adc     #$08                            ; AE63 69 08                    i.
        and     #$F0                            ; AE65 29 F0                    ).
        sta     Block_X_Position,x              ; AE67 95 8F                    ..
        lda     SprObject_PageLoc               ; AE69 A5 6D                    .m
        adc     #$00                            ; AE6B 69 00                    i.
        sta     Block_PageLoc,x                 ; AE6D 95 76                    .v
        sta     Block_PageLoc2,x                ; AE6F 9D EA 03                 ...
        lda     SprObject_Y_HighPos             ; AE72 A5 B5                    ..
        sta     Block_Y_HighPos,x               ; AE74 95 BE                    ..
        rts                                     ; AE76 60                       `

; ----------------------------------------------------------------------------
LAE77:
        jsr     LAF0C                           ; AE77 20 0C AF                  ..
        lda     #$02                            ; AE7A A9 02                    ..
        sta     Square1SoundQueue               ; AE7C 85 FF                    ..
        lda     #$00                            ; AE7E A9 00                    ..
        sta     Block_X_Speed,x                 ; AE80 95 60                    .`
        sta     Block_Y_MoveForce,x             ; AE82 9D 3C 04                 .<.
        sta     SprObject_Y_Speed               ; AE85 85 9F                    ..
        lda     #$FE                            ; AE87 A9 FE                    ..
        sta     Block_Y_Speed,x                 ; AE89 95 A8                    ..
        lda     $05                             ; AE8B A5 05                    ..
        jsr     LAEE3                           ; AE8D 20 E3 AE                  ..
        bcc     LAED1                           ; AE90 90 3F                    .?
        tya                                     ; AE92 98                       .
        cmp     #$0C                            ; AE93 C9 0C                    ..
        bcc     LAE99                           ; AE95 90 02                    ..
        sbc     #$05                            ; AE97 E9 05                    ..
LAE99:
        jsr     L8F69                           ; AE99 20 69 8F                  i.
        .byte   $B4,$AE,$14,$AC,$14,$AC,$BA,$AE ; AE9C B4 AE 14 AC 14 AC BA AE  ........
        .byte   $B7,$AE,$B4,$AE,$C1,$AE,$B4,$AE ; AEA4 B7 AE B4 AE C1 AE B4 AE  ........
        .byte   $C9,$AE,$B7,$AE,$14,$AC,$BA,$AE ; AEAC C9 AE B7 AE 14 AC BA AE  ........
; ----------------------------------------------------------------------------
        lda     #$00                            ; AEB4 A9 00                    ..
        bit     $02A9                           ; AEB6 2C A9 02                 ,..
        bit     $03A9                           ; AEB9 2C A9 03                 ,..
        sta     PowerUpType                     ; AEBC 85 39                    .9
        jmp     LAD25                           ; AEBE 4C 25 AD                 L%.

; ----------------------------------------------------------------------------
        .byte   $AD,$FF,$7F,$85,$39,$4C,$25,$AD ; AEC1 AD FF 7F 85 39 4C 25 AD  ....9L%.
        .byte   $A2,$05,$AC,$EE,$03,$20,$FA,$A9 ; AEC9 A2 05 AC EE 03 20 FA A9  ..... ..
; ----------------------------------------------------------------------------
LAED1:
        rts                                     ; AED1 60                       `

; ----------------------------------------------------------------------------
LAED2:
        .byte   $C1,$C0,$5F,$60,$57,$C5,$C6,$55 ; AED2 C1 C0 5F 60 57 C5 C6 55  .._`W..U
        .byte   $56,$57,$58,$59,$5A,$5B,$5C,$5D ; AEDA 56 57 58 59 5A 5B 5C 5D  VWXYZ[\]
        .byte   $5E                             ; AEE2 5E                       ^
; ----------------------------------------------------------------------------
LAEE3:
        ldy     #$10                            ; AEE3 A0 10                    ..
LAEE5:
        cmp     LAED2,y                         ; AEE5 D9 D2 AE                 ...
        beq     LAEEE                           ; AEE8 F0 04                    ..
        dey                                     ; AEEA 88                       .
        bpl     LAEE5                           ; AEEB 10 F8                    ..
        clc                                     ; AEED 18                       .
LAEEE:
        rts                                     ; AEEE 60                       `

; ----------------------------------------------------------------------------
LAEEF:
        jsr     LAF0C                           ; AEEF 20 0C AF                  ..
        lda     #$01                            ; AEF2 A9 01                    ..
        sta     Block_RepFlag,x                 ; AEF4 9D EC 03                 ...
        sta     NoiseSoundQueue                 ; AEF7 85 FD                    ..
        jsr     LAF2E                           ; AEF9 20 2E AF                  ..
        lda     #$FE                            ; AEFC A9 FE                    ..
        sta     SprObject_Y_Speed               ; AEFE 85 9F                    ..
        lda     #$05                            ; AF00 A9 05                    ..
        sta     $0139                           ; AF02 8D 39 01                 .9.
        jsr     LAD03                           ; AF05 20 03 AD                  ..
        ldx     SprDataOffset_Ctrl              ; AF08 AE EE 03                 ...
        rts                                     ; AF0B 60                       `

; ----------------------------------------------------------------------------
LAF0C:
        ldx     SprDataOffset_Ctrl              ; AF0C AE EE 03                 ...
        ldy     $02                             ; AF0F A4 02                    ..
        beq     LAF2D                           ; AF11 F0 1A                    ..
        tya                                     ; AF13 98                       .
        sec                                     ; AF14 38                       8
        sbc     #$10                            ; AF15 E9 10                    ..
        sta     $02                             ; AF17 85 02                    ..
        tay                                     ; AF19 A8                       .
        lda     (L0006),y                       ; AF1A B1 06                    ..
        cmp     #$C2                            ; AF1C C9 C2                    ..
        bne     LAF2D                           ; AF1E D0 0D                    ..
        lda     #$00                            ; AF20 A9 00                    ..
        sta     (L0006),y                       ; AF22 91 06                    ..
        jsr     L8B84                           ; AF24 20 84 8B                  ..
        ldx     SprDataOffset_Ctrl              ; AF27 AE EE 03                 ...
        jsr     LAC2D                           ; AF2A 20 2D AC                  -.
LAF2D:
        rts                                     ; AF2D 60                       `

; ----------------------------------------------------------------------------
LAF2E:
        lda     Block_X_Position,x              ; AF2E B5 8F                    ..
        sta     Block_Orig_XPos,x               ; AF30 9D F1 03                 ...
        lda     #$F0                            ; AF33 A9 F0                    ..
        sta     Block_X_Speed,x                 ; AF35 95 60                    .`
        sta     $62,x                           ; AF37 95 62                    .b
        lda     #$FA                            ; AF39 A9 FA                    ..
        sta     Block_Y_Speed,x                 ; AF3B 95 A8                    ..
        lda     #$FC                            ; AF3D A9 FC                    ..
        sta     $AA,x                           ; AF3F 95 AA                    ..
        lda     #$00                            ; AF41 A9 00                    ..
        sta     Block_Y_MoveForce,x             ; AF43 9D 3C 04                 .<.
        sta     $043E,x                         ; AF46 9D 3E 04                 .>.
        lda     Block_PageLoc,x                 ; AF49 B5 76                    .v
        sta     $78,x                           ; AF4B 95 78                    .x
        lda     Block_X_Position,x              ; AF4D B5 8F                    ..
        sta     $91,x                           ; AF4F 95 91                    ..
        lda     Block_Y_Position,x              ; AF51 B5 D7                    ..
        clc                                     ; AF53 18                       .
        adc     #$08                            ; AF54 69 08                    i.
        sta     $D9,x                           ; AF56 95 D9                    ..
        lda     #$FA                            ; AF58 A9 FA                    ..
        sta     Block_Y_Speed,x                 ; AF5A 95 A8                    ..
        rts                                     ; AF5C 60                       `

; ----------------------------------------------------------------------------
LAF5D:
        lda     Block_State,x                   ; AF5D B5 26                    .&
        beq     LAFBE                           ; AF5F F0 5D                    .]
        and     #$0F                            ; AF61 29 0F                    ).
        pha                                     ; AF63 48                       H
        tay                                     ; AF64 A8                       .
        txa                                     ; AF65 8A                       .
        clc                                     ; AF66 18                       .
        adc     #$09                            ; AF67 69 09                    i.
        tax                                     ; AF69 AA                       .
        dey                                     ; AF6A 88                       .
        beq     LAFA0                           ; AF6B F0 33                    .3
        jsr     LB091                           ; AF6D 20 91 B0                  ..
        jsr     LAFFC                           ; AF70 20 FC AF                  ..
        txa                                     ; AF73 8A                       .
        clc                                     ; AF74 18                       .
        adc     #$02                            ; AF75 69 02                    i.
        tax                                     ; AF77 AA                       .
        jsr     LB091                           ; AF78 20 91 B0                  ..
        jsr     LAFFC                           ; AF7B 20 FC AF                  ..
        ldx     ObjectOffset                    ; AF7E A6 08                    ..
        jsr     LF19E                           ; AF80 20 9E F1                  ..
        jsr     LF1FB                           ; AF83 20 FB F1                  ..
        jsr     LEC98                           ; AF86 20 98 EC                  ..
        pla                                     ; AF89 68                       h
        ldy     Block_Y_HighPos,x               ; AF8A B4 BE                    ..
        beq     LAFBE                           ; AF8C F0 30                    .0
        pha                                     ; AF8E 48                       H
        lda     #$F0                            ; AF8F A9 F0                    ..
        cmp     $D9,x                           ; AF91 D5 D9                    ..
        bcs     LAF97                           ; AF93 B0 02                    ..
        sta     $D9,x                           ; AF95 95 D9                    ..
LAF97:
        lda     Block_Y_Position,x              ; AF97 B5 D7                    ..
        cmp     #$F0                            ; AF99 C9 F0                    ..
        pla                                     ; AF9B 68                       h
        bcc     LAFBE                           ; AF9C 90 20                    . 
        bcs     LAFBC                           ; AF9E B0 1C                    ..
LAFA0:
        jsr     LB091                           ; AFA0 20 91 B0                  ..
        ldx     ObjectOffset                    ; AFA3 A6 08                    ..
        jsr     LF19E                           ; AFA5 20 9E F1                  ..
        jsr     LF1FB                           ; AFA8 20 FB F1                  ..
        jsr     LEC16                           ; AFAB 20 16 EC                  ..
        lda     Block_Y_Position,x              ; AFAE B5 D7                    ..
        and     #$0F                            ; AFB0 29 0F                    ).
        cmp     #$05                            ; AFB2 C9 05                    ..
        pla                                     ; AFB4 68                       h
        bcs     LAFBE                           ; AFB5 B0 07                    ..
        lda     #$01                            ; AFB7 A9 01                    ..
        sta     Block_RepFlag,x                 ; AFB9 9D EC 03                 ...
LAFBC:
        lda     #$00                            ; AFBC A9 00                    ..
LAFBE:
        sta     Block_State,x                   ; AFBE 95 26                    .&
        rts                                     ; AFC0 60                       `

; ----------------------------------------------------------------------------
LAFC1:
        ldx     #$01                            ; AFC1 A2 01                    ..
LAFC3:
        stx     ObjectOffset                    ; AFC3 86 08                    ..
        lda     VRAM_Buffer1                    ; AFC5 AD 01 03                 ...
        bne     LAFEB                           ; AFC8 D0 21                    .!
        lda     Block_RepFlag,x                 ; AFCA BD EC 03                 ...
        beq     LAFEB                           ; AFCD F0 1C                    ..
        lda     Block_BBuf_Low,x                ; AFCF BD E6 03                 ...
        sta     L0006                           ; AFD2 85 06                    ..
        lda     #$05                            ; AFD4 A9 05                    ..
        sta     $07                             ; AFD6 85 07                    ..
        lda     Block_Orig_YPos,x               ; AFD8 BD E4 03                 ...
        sta     $02                             ; AFDB 85 02                    ..
        tay                                     ; AFDD A8                       .
        lda     Block_Metatile,x                ; AFDE BD E8 03                 ...
        sta     (L0006),y                       ; AFE1 91 06                    ..
        jsr     L8B98                           ; AFE3 20 98 8B                  ..
        lda     #$00                            ; AFE6 A9 00                    ..
        sta     Block_RepFlag,x                 ; AFE8 9D EC 03                 ...
LAFEB:
        dex                                     ; AFEB CA                       .
        bpl     LAFC3                           ; AFEC 10 D5                    ..
        rts                                     ; AFEE 60                       `

; ----------------------------------------------------------------------------
LAFEF:
        inx                                     ; AFEF E8                       .
        jsr     LAFFC                           ; AFF0 20 FC AF                  ..
        ldx     ObjectOffset                    ; AFF3 A6 08                    ..
        rts                                     ; AFF5 60                       `

; ----------------------------------------------------------------------------
LAFF6:
        lda     JumpspringAnimCtrl              ; AFF6 AD 0E 07                 ...
        bne     LB039                           ; AFF9 D0 3E                    .>
        tax                                     ; AFFB AA                       .
LAFFC:
        lda     SprObject_X_Speed,x             ; AFFC B5 57                    .W
        asl     a                               ; AFFE 0A                       .
        asl     a                               ; AFFF 0A                       .
        asl     a                               ; B000 0A                       .
        asl     a                               ; B001 0A                       .
        sta     $01                             ; B002 85 01                    ..
        lda     SprObject_X_Speed,x             ; B004 B5 57                    .W
        lsr     a                               ; B006 4A                       J
        lsr     a                               ; B007 4A                       J
        lsr     a                               ; B008 4A                       J
        lsr     a                               ; B009 4A                       J
        cmp     #$08                            ; B00A C9 08                    ..
        bcc     LB010                           ; B00C 90 02                    ..
        ora     #$F0                            ; B00E 09 F0                    ..
LB010:
        sta     $00                             ; B010 85 00                    ..
        ldy     #$00                            ; B012 A0 00                    ..
        cmp     #$00                            ; B014 C9 00                    ..
        bpl     LB019                           ; B016 10 01                    ..
        dey                                     ; B018 88                       .
LB019:
        sty     $02                             ; B019 84 02                    ..
        lda     SprObject_X_MoveForce,x         ; B01B BD 00 04                 ...
        clc                                     ; B01E 18                       .
        adc     $01                             ; B01F 65 01                    e.
        sta     SprObject_X_MoveForce,x         ; B021 9D 00 04                 ...
        lda     #$00                            ; B024 A9 00                    ..
        rol     a                               ; B026 2A                       *
        pha                                     ; B027 48                       H
        ror     a                               ; B028 6A                       j
        lda     SprObject_X_Position,x          ; B029 B5 86                    ..
        adc     $00                             ; B02B 65 00                    e.
        sta     SprObject_X_Position,x          ; B02D 95 86                    ..
        lda     SprObject_PageLoc,x             ; B02F B5 6D                    .m
        adc     $02                             ; B031 65 02                    e.
        sta     SprObject_PageLoc,x             ; B033 95 6D                    .m
        pla                                     ; B035 68                       h
        clc                                     ; B036 18                       .
        adc     $00                             ; B037 65 00                    e.
LB039:
        rts                                     ; B039 60                       `

; ----------------------------------------------------------------------------
LB03A:
        ldx     #$00                            ; B03A A2 00                    ..
        lda     TimerControl                    ; B03C AD 47 07                 .G.
        bne     LB046                           ; B03F D0 05                    ..
        lda     JumpspringAnimCtrl              ; B041 AD 0E 07                 ...
        bne     LB039                           ; B044 D0 F3                    ..
LB046:
        lda     VerticalForce                   ; B046 AD 09 07                 ...
        sta     $00                             ; B049 85 00                    ..
        lda     #$04                            ; B04B A9 04                    ..
        jmp     LB09A                           ; B04D 4C 9A B0                 L..

; ----------------------------------------------------------------------------
LB050:
        ldy     #$3D                            ; B050 A0 3D                    .=
        lda     Enemy_State,x                   ; B052 B5 1E                    ..
        cmp     #$05                            ; B054 C9 05                    ..
        bne     LB05A                           ; B056 D0 02                    ..
        .byte   $A0,$20                         ; B058 A0 20                    . 
; ----------------------------------------------------------------------------
LB05A:
        jmp     LB081                           ; B05A 4C 81 B0                 L..

; ----------------------------------------------------------------------------
LB05D:
        ldy     #$00                            ; B05D A0 00                    ..
        jmp     LB064                           ; B05F 4C 64 B0                 Ld.

; ----------------------------------------------------------------------------
LB062:
        ldy     #$01                            ; B062 A0 01                    ..
LB064:
        inx                                     ; B064 E8                       .
        lda     #$03                            ; B065 A9 03                    ..
        sta     $00                             ; B067 85 00                    ..
        lda     #$06                            ; B069 A9 06                    ..
        sta     $01                             ; B06B 85 01                    ..
        lda     #$02                            ; B06D A9 02                    ..
        sta     $02                             ; B06F 85 02                    ..
        tya                                     ; B071 98                       .
        jmp     LB0BE                           ; B072 4C BE B0                 L..

; ----------------------------------------------------------------------------
LB075:
        ldy     #$7F                            ; B075 A0 7F                    ..
        bne     LB07B                           ; B077 D0 02                    ..
LB079:
        ldy     #$0F                            ; B079 A0 0F                    ..
LB07B:
        lda     #$02                            ; B07B A9 02                    ..
        bne     LB083                           ; B07D D0 04                    ..
LB07F:
        ldy     #$1C                            ; B07F A0 1C                    ..
LB081:
        lda     #$03                            ; B081 A9 03                    ..
LB083:
        sty     $00                             ; B083 84 00                    ..
        inx                                     ; B085 E8                       .
        jsr     LB09A                           ; B086 20 9A B0                  ..
        ldx     ObjectOffset                    ; B089 A6 08                    ..
        rts                                     ; B08B 60                       `

; ----------------------------------------------------------------------------
LB08C:
        .byte   $06,$08,$A0,$00,$2C             ; B08C 06 08 A0 00 2C           ....,
; ----------------------------------------------------------------------------
LB091:
        ldy     #$01                            ; B091 A0 01                    ..
        lda     #$50                            ; B093 A9 50                    .P
        sta     $00                             ; B095 85 00                    ..
        lda     LB08C,y                         ; B097 B9 8C B0                 ...
LB09A:
        sta     $02                             ; B09A 85 02                    ..
        lda     #$00                            ; B09C A9 00                    ..
        jmp     LB0C4                           ; B09E 4C C4 B0                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$00,$2C,$A9,$01,$48,$B4,$16 ; B0A1 A9 00 2C A9 01 48 B4 16  ..,..H..
        .byte   $E8,$A9,$05,$C0,$29,$D0,$02,$A9 ; B0A9 E8 A9 05 C0 29 D0 02 A9  ....)...
        .byte   $09,$85,$00,$A9,$0A,$85,$01,$A9 ; B0B1 09 85 00 A9 0A 85 01 A9  ........
        .byte   $03,$85,$02,$68,$A8             ; B0B9 03 85 02 68 A8           ...h.
; ----------------------------------------------------------------------------
LB0BE:
        jsr     LB0C4                           ; B0BE 20 C4 B0                  ..
        ldx     ObjectOffset                    ; B0C1 A6 08                    ..
        rts                                     ; B0C3 60                       `

; ----------------------------------------------------------------------------
LB0C4:
        pha                                     ; B0C4 48                       H
        lda     SprObject_YMF_Dummy,x           ; B0C5 BD 16 04                 ...
        clc                                     ; B0C8 18                       .
        adc     SprObject_Y_MoveForce,x         ; B0C9 7D 33 04                 }3.
        sta     SprObject_YMF_Dummy,x           ; B0CC 9D 16 04                 ...
        ldy     #$00                            ; B0CF A0 00                    ..
        lda     SprObject_Y_Speed,x             ; B0D1 B5 9F                    ..
        bpl     LB0D6                           ; B0D3 10 01                    ..
        dey                                     ; B0D5 88                       .
LB0D6:
        sty     $07                             ; B0D6 84 07                    ..
        adc     SprObject_Y_Position,x          ; B0D8 75 CE                    u.
        sta     SprObject_Y_Position,x          ; B0DA 95 CE                    ..
        lda     SprObject_Y_HighPos,x           ; B0DC B5 B5                    ..
        adc     $07                             ; B0DE 65 07                    e.
        sta     SprObject_Y_HighPos,x           ; B0E0 95 B5                    ..
        lda     SprObject_Y_MoveForce,x         ; B0E2 BD 33 04                 .3.
        clc                                     ; B0E5 18                       .
        adc     $00                             ; B0E6 65 00                    e.
        sta     SprObject_Y_MoveForce,x         ; B0E8 9D 33 04                 .3.
        lda     SprObject_Y_Speed,x             ; B0EB B5 9F                    ..
        adc     #$00                            ; B0ED 69 00                    i.
        sta     SprObject_Y_Speed,x             ; B0EF 95 9F                    ..
        cmp     $02                             ; B0F1 C5 02                    ..
        bmi     LB105                           ; B0F3 30 10                    0.
        lda     SprObject_Y_MoveForce,x         ; B0F5 BD 33 04                 .3.
        cmp     #$80                            ; B0F8 C9 80                    ..
        bcc     LB105                           ; B0FA 90 09                    ..
        lda     $02                             ; B0FC A5 02                    ..
        sta     SprObject_Y_Speed,x             ; B0FE 95 9F                    ..
        lda     #$00                            ; B100 A9 00                    ..
        sta     SprObject_Y_MoveForce,x         ; B102 9D 33 04                 .3.
LB105:
        pla                                     ; B105 68                       h
        beq     LB133                           ; B106 F0 2B                    .+
        lda     $02                             ; B108 A5 02                    ..
        eor     #$FF                            ; B10A 49 FF                    I.
        tay                                     ; B10C A8                       .
        iny                                     ; B10D C8                       .
        sty     $07                             ; B10E 84 07                    ..
        lda     SprObject_Y_MoveForce,x         ; B110 BD 33 04                 .3.
        sec                                     ; B113 38                       8
        sbc     $01                             ; B114 E5 01                    ..
        sta     SprObject_Y_MoveForce,x         ; B116 9D 33 04                 .3.
        lda     SprObject_Y_Speed,x             ; B119 B5 9F                    ..
        sbc     #$00                            ; B11B E9 00                    ..
        sta     SprObject_Y_Speed,x             ; B11D 95 9F                    ..
        cmp     $07                             ; B11F C5 07                    ..
        bpl     LB133                           ; B121 10 10                    ..
        .byte   $BD,$33,$04,$C9,$80,$B0,$09,$A5 ; B123 BD 33 04 C9 80 B0 09 A5  .3......
        .byte   $07,$95,$9F,$A9,$FF,$9D,$33,$04 ; B12B 07 95 9F A9 FF 9D 33 04  ......3.
; ----------------------------------------------------------------------------
LB133:
        rts                                     ; B133 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B134 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$4E,$45,$57,$00 ; B13C 00 00 00 00 4E 45 57 00  ....NEW.
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B144 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$20,$A5,$01,$72 ; B14C 00 00 00 00 20 A5 01 72  .... ..r
        .byte   $20,$A6,$54,$73,$20,$BA,$01,$74 ; B154 20 A6 54 73 20 BA 01 74   .Ts ..t
        .byte   $20,$C5,$C9,$46,$20,$DA,$C9,$75 ; B15C 20 C5 C9 46 20 DA C9 75   ..F ..u
        .byte   $20,$C6,$14,$D0,$D1,$D8,$D8,$DE ; B164 20 C6 14 D0 D1 D8 D8 DE   .......
        .byte   $D1,$D0,$DA,$DE,$D1,$26,$26,$26 ; B16C D1 D0 DA DE D1 26 26 26  .....&&&
        .byte   $2A,$2C,$26,$26,$26,$2D,$2F,$20 ; B174 2A 2C 26 26 26 2D 2F 20  *,&&&-/ 
        .byte   $E6,$14,$D2,$D3,$DB,$DB,$DB,$D9 ; B17C E6 14 D2 D3 DB DB DB D9  ........
        .byte   $DB,$DC,$DB,$DF,$26,$26,$26,$3D ; B184 DB DC DB DF 26 26 26 3D  ....&&&=
        .byte   $3E,$26,$26,$3F,$40,$41,$21,$06 ; B18C 3E 26 26 3F 40 41 21 06  >&&?@A!.
        .byte   $14,$D4,$D5,$D4,$D9,$DB,$E2,$D4 ; B194 14 D4 D5 D4 D9 DB E2 D4  ........
        .byte   $DA,$DB,$E0,$26,$26,$4B,$4C,$4D ; B19C DA DB E0 26 26 4B 4C 4D  ...&&KLM
        .byte   $4E,$4F,$50,$51,$52,$21,$26,$14 ; B1A4 4E 4F 50 51 52 21 26 14  NOPQR!&.
        .byte   $D6,$D7,$D6,$D7,$E1,$26,$D6,$DD ; B1AC D6 D7 D6 D7 E1 26 D6 DD  .....&..
        .byte   $E1,$E1,$26,$26,$5B,$5C,$5D,$5E ; B1B4 E1 E1 26 26 5B 5C 5D 5E  ..&&[\]^
        .byte   $6B,$6C,$26,$26,$21,$46,$14,$D0 ; B1BC 6B 6C 26 26 21 46 14 D0  kl&&!F..
        .byte   $E8,$D1,$D0,$D1,$DE,$D1,$D8,$D0 ; B1C4 E8 D1 D0 D1 DE D1 D8 D0  ........
        .byte   $D1,$26,$DE,$D1,$DE,$D1,$D0,$D1 ; B1CC D1 26 DE D1 DE D1 D0 D1  .&......
        .byte   $D0,$D1,$26,$21,$66,$14,$DB,$70 ; B1D4 D0 D1 26 21 66 14 DB 70  ..&!f..p
        .byte   $70,$DB,$70,$DB,$70,$DB,$DB,$70 ; B1DC 70 DB 70 DB 70 DB DB 70  p.p.p..p
        .byte   $26,$DB,$70,$DB,$70,$DB,$70,$DB ; B1E4 26 DB 70 DB 70 DB 70 DB  &.p.p.p.
        .byte   $70,$26,$21,$86,$46,$DB,$21,$8C ; B1EC 70 26 21 86 46 DB 21 8C  p&!.F.!.
        .byte   $0E,$DF,$DB,$DB,$DB,$26,$DB,$DF ; B1F4 0E DF DB DB DB 26 DB DF  .....&..
        .byte   $DB,$DF,$DB,$DB,$E4,$E5,$26,$21 ; B1FC DB DF DB DB E4 E5 26 21  ......&!
        .byte   $A6,$14,$DB,$DB,$DB,$DE,$71,$DB ; B204 A6 14 DB DB DB DE 71 DB  ......q.
        .byte   $E0,$DB,$DB,$DB,$26,$DB,$E3,$DB ; B20C E0 DB DB DB 26 DB E3 DB  ....&...
        .byte   $E0,$DB,$DB,$E6,$E3,$26,$21,$C6 ; B214 E0 DB DB E6 E3 26 21 C6  .....&!.
        .byte   $14,$DB,$DB,$DB,$DB,$70,$DB,$DB ; B21C 14 DB DB DB DB 70 DB DB  .....p..
        .byte   $DB,$D4,$D9,$26,$DB,$D9,$DB,$DB ; B224 DB D4 D9 26 DB D9 DB DB  ...&....
        .byte   $D4,$D9,$D4,$D9,$E7,$21,$E5,$01 ; B22C D4 D9 D4 D9 E7 21 E5 01  .....!..
        .byte   $5F,$21,$E6,$48,$95,$21,$EE,$0D ; B234 5F 21 E6 48 95 21 EE 0D  _!.H.!..
        .byte   $97,$98,$78,$95,$96,$95,$95,$97 ; B23C 97 98 78 95 96 95 95 97  ..x.....
        .byte   $98,$97,$98,$95,$7A,$22,$0D,$0E ; B244 98 97 98 95 7A 22 0D 0E  ....z"..
        .byte   $CF,$01,$09,$08,$05,$24,$17,$12 ; B24C CF 01 09 08 05 24 17 12  .....$..
        .byte   $17,$1D,$0E,$17,$0D,$18,$22,$2E ; B254 17 1D 0E 17 0D 18 22 2E  ......".
        .byte   $10,$01,$09,$08,$06,$24,$11,$1E ; B25C 10 01 09 08 06 24 11 1E  .....$..
        .byte   $0D,$1C,$18,$17,$24,$1C,$18,$0F ; B264 0D 1C 18 17 24 1C 18 0F  ....$...
        .byte   $1D,$22,$67,$11,$19,$1E,$1C,$11 ; B26C 1D 22 67 11 19 1E 1C 11  ."g.....
        .byte   $24,$1C,$1D,$0A,$1B,$1D,$24,$0B ; B274 24 1C 1D 0A 1B 1D 24 0B  $.....$.
        .byte   $1E,$1D,$1D,$18,$17,$22,$EA,$05 ; B27C 1E 1D 1D 18 17 22 EA 05  ....."..
        .byte   $1D,$18,$19,$24,$28,$22,$F6,$01 ; B284 1D 18 19 24 28 22 F6 01  ...$("..
        .byte   $00,$23,$C9,$43,$55,$23,$CC,$03 ; B28C 00 23 C9 43 55 23 CC 03  .#.CU#..
        .byte   $F5,$F5,$75,$23,$D1,$43,$55,$23 ; B294 F5 F5 75 23 D1 43 55 23  ..u#.CU#
        .byte   $D4,$03,$5F,$5F,$57,$23,$D9,$46 ; B29C D4 03 5F 5F 57 23 D9 46  ..__W#.F
        .byte   $55,$23,$E1,$01,$99,$23,$E2,$46 ; B2A4 55 23 E1 01 99 23 E2 46  U#...#.F
        .byte   $AA,$23,$EA,$44,$AA,$00,$00,$00 ; B2AC AA 23 EA 44 AA 00 00 00  .#.D....
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B2FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B304 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B30C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B314 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B31C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B324 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B32C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B334 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B33C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B344 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B34C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B354 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B35C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B364 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B36C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B374 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B37C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B384 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B38C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B394 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B39C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B3FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B404 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B40C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B414 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B41C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B424 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B42C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B434 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B43C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B444 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B44C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B454 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B45C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B464 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B46C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B474 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B47C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B484 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B48C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B494 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B49C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B4FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B504 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B50C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B514 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B51C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B524 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B52C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B534 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B53C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B544 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B54C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B554 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B55C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B564 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B56C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B574 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B57C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B584 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B58C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B594 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B59C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B604 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B60C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B614 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B61C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B624 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B62C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B634 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B63C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B644 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B64C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B654 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B65C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B664 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B66C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B674 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B67C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B684 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B68C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B694 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B69C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B6FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B704 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B70C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B714 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B71C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B724 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B72C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B734 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B73C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B744 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B74C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B754 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B75C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B764 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B76C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B774 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B77C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B784 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B78C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B794 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B79C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B7FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B804 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B80C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B814 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B81C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B824 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B82C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B834 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B83C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B844 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B84C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B854 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B85C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B864 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B86C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B874 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B87C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B884 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B88C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B894 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B89C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B8FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B904 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B90C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B914 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B91C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B924 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B92C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B934 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B93C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B944 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B94C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B954 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B95C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B964 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B96C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B974 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B97C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B984 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B98C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B994 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B99C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9A4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9AC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9B4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9BC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9C4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9CC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9D4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9DC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9E4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9EC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9F4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B9FC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BA9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BABC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BACC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAD4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BADC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BAFC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BB9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBBC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBCC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBD4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBDC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BBFC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BC9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCBC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCCC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCD4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCDC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BCFC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BD9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDBC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDCC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDD4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDDC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BDFC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BE9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEBC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BECC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BED4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEDC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BEFC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF04 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF0C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF14 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF1C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF24 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF2C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF34 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF3C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF44 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF4C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF54 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF5C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF64 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF6C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF74 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF7C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF84 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF8C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF94 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BF9C 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFA4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFAC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFB4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFBC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFC4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFCC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFD4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFDC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFE4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFEC 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; BFF4 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00                 ; BFFC 00 00 00 00              ....
; ----------------------------------------------------------------------------

LC000:
        lda     Enemy_Flag,x                    ; C000 B5 0F                    ..
        pha                                     ; C002 48                       H
        asl     a                               ; C003 0A                       .
        bcs     LC018                           ; C004 B0 12                    ..
        pla                                     ; C006 68                       h
        beq     LC00C                           ; C007 F0 03                    ..
        jmp     LC849                           ; C009 4C 49 C8                 LI.

; ----------------------------------------------------------------------------
LC00C:
        lda     AreaParserTaskNum               ; C00C AD 1F 07                 ...
        and     #$07                            ; C00F 29 07                    ).
        cmp     #$07                            ; C011 C9 07                    ..
        beq     LC023                           ; C013 F0 0E                    ..
        jmp     LC085                           ; C015 4C 85 C0                 L..

; ----------------------------------------------------------------------------
LC018:
        pla                                     ; C018 68                       h
        and     #$0F                            ; C019 29 0F                    ).
        tay                                     ; C01B A8                       .
        lda     Enemy_Flag,y                    ; C01C B9 0F 00                 ...
        bne     LC023                           ; C01F D0 02                    ..
        .byte   $95,$0F                         ; C021 95 0F                    ..
; ----------------------------------------------------------------------------
LC023:
        rts                                     ; C023 60                       `

; ----------------------------------------------------------------------------
        .byte   $03,$03,$06,$06,$06,$06,$06,$06 ; C024 03 03 06 06 06 06 06 06  ........
        .byte   $07,$07,$07,$05,$09,$04,$05,$06 ; C02C 07 07 07 05 09 04 05 06  ........
        .byte   $08,$09,$0A,$06,$0B,$10,$40,$B0 ; C034 08 09 0A 06 0B 10 40 B0  ......@.
        .byte   $B0,$80,$40,$40,$80,$40,$F0,$F0 ; C03C B0 80 40 40 80 40 F0 F0  ..@@.@..
        .byte   $F0,$A5,$6D,$38,$E9,$04,$85,$6D ; C044 F0 A5 6D 38 E9 04 85 6D  ..m8...m
        .byte   $AD,$25,$07,$38,$E9,$04,$8D,$25 ; C04C AD 25 07 38 E9 04 8D 25  .%.8...%
        .byte   $07,$AD,$1A,$07,$38,$E9,$04,$8D ; C054 07 AD 1A 07 38 E9 04 8D  ....8...
        .byte   $1A,$07,$AD,$1B,$07,$38,$E9,$04 ; C05C 1A 07 AD 1B 07 38 E9 04  .....8..
        .byte   $8D,$1B,$07,$AD,$2A,$07,$38,$E9 ; C064 8D 1B 07 AD 2A 07 38 E9  ....*.8.
        .byte   $04,$8D,$2A,$07,$A9,$00,$8D,$3B ; C06C 04 8D 2A 07 A9 00 8D 3B  ..*....;
        .byte   $07,$8D,$2B,$07,$8D,$39,$07,$8D ; C074 07 8D 2B 07 8D 39 07 8D  ..+..9..
        .byte   $3A,$07,$B9,$EA,$9D,$8D,$2C,$07 ; C07C 3A 07 B9 EA 9D 8D 2C 07  :.....,.
        .byte   $60                             ; C084 60                       `
; ----------------------------------------------------------------------------
LC085:
        lda     LoopCommand                     ; C085 AD 45 07                 .E.
        beq     LC0E8                           ; C088 F0 5E                    .^
        .byte   $AD,$26,$07,$D0,$59,$A0,$0B,$88 ; C08A AD 26 07 D0 59 A0 0B 88  .&..Y...
        .byte   $30,$54,$AD,$5F,$07,$D9,$24,$C0 ; C092 30 54 AD 5F 07 D9 24 C0  0T._..$.
        .byte   $D0,$F5,$AD,$25,$07,$D9,$2F,$C0 ; C09A D0 F5 AD 25 07 D9 2F C0  ...%../.
        .byte   $D0,$ED,$A5,$CE,$D9,$3A,$C0,$D0 ; C0A2 D0 ED A5 CE D9 3A C0 D0  .....:..
        .byte   $23,$A5,$1D,$C9,$00,$D0,$1D,$AD ; C0AA 23 A5 1D C9 00 D0 1D AD  #.......
        .byte   $5F,$07,$C9,$06,$D0,$23,$EE,$D9 ; C0B2 5F 07 C9 06 D0 23 EE D9  _....#..
        .byte   $06,$EE,$DA,$06,$AD,$DA,$06,$C9 ; C0BA 06 EE DA 06 AD DA 06 C9  ........
        .byte   $03,$D0,$1E,$AD,$D9,$06,$C9,$03 ; C0C2 03 D0 1E AD D9 06 C9 03  ........
        .byte   $F0,$0F,$D0,$07,$AD,$5F,$07,$C9 ; C0CA F0 0F D0 07 AD 5F 07 C9  ....._..
        .byte   $06,$F0,$E6,$20,$45,$C0,$20,$38 ; C0D2 06 F0 E6 20 45 C0 20 38  ... E. 8
        .byte   $D0,$A9,$00,$8D,$DA,$06,$8D,$D9 ; C0DA D0 A9 00 8D DA 06 8D D9  ........
        .byte   $06,$A9,$00,$8D,$45,$07         ; C0E2 06 A9 00 8D 45 07        ....E.
; ----------------------------------------------------------------------------
LC0E8:
        lda     EnemyFrenzyQueue                ; C0E8 AD CD 06                 ...
        beq     LC0FD                           ; C0EB F0 10                    ..
        sta     Enemy_ID,x                      ; C0ED 95 16                    ..
        lda     #$01                            ; C0EF A9 01                    ..
        sta     Enemy_Flag,x                    ; C0F1 95 0F                    ..
        lda     #$00                            ; C0F3 A9 00                    ..
        sta     Enemy_State,x                   ; C0F5 95 1E                    ..
        sta     EnemyFrenzyQueue                ; C0F7 8D CD 06                 ...
        jmp     LC1DF                           ; C0FA 4C DF C1                 L..

; ----------------------------------------------------------------------------
LC0FD:
        ldy     EnemyDataOffset                 ; C0FD AC 39 07                 .9.
        lda     (EnemyDataLow),y                ; C100 B1 E9                    ..
        cmp     #$FF                            ; C102 C9 FF                    ..
        bne     LC109                           ; C104 D0 03                    ..
        jmp     LC1CF                           ; C106 4C CF C1                 L..

; ----------------------------------------------------------------------------
LC109:
        and     #$0F                            ; C109 29 0F                    ).
        cmp     #$0E                            ; C10B C9 0E                    ..
        beq     LC11D                           ; C10D F0 0E                    ..
        cpx     #$05                            ; C10F E0 05                    ..
        bcc     LC11D                           ; C111 90 0A                    ..
        iny                                     ; C113 C8                       .
        lda     (EnemyDataLow),y                ; C114 B1 E9                    ..
        and     #$3F                            ; C116 29 3F                    )?
        cmp     #$2E                            ; C118 C9 2E                    ..
        beq     LC11D                           ; C11A F0 01                    ..
        rts                                     ; C11C 60                       `

; ----------------------------------------------------------------------------
LC11D:
        lda     ScreenRight_X_Pos               ; C11D AD 1D 07                 ...
        clc                                     ; C120 18                       .
        adc     #$30                            ; C121 69 30                    i0
        and     #$F0                            ; C123 29 F0                    ).
        sta     $07                             ; C125 85 07                    ..
        lda     ScreenRight_PageLoc             ; C127 AD 1B 07                 ...
        adc     #$00                            ; C12A 69 00                    i.
        sta     $06                             ; C12C 85 06                    ..
        ldy     EnemyDataOffset                 ; C12E AC 39 07                 .9.
        iny                                     ; C131 C8                       .
        lda     (EnemyDataLow),y                ; C132 B1 E9                    ..
        asl     a                               ; C134 0A                       .
        bcc     LC142                           ; C135 90 0B                    ..
        lda     EnemyObjectPageSel              ; C137 AD 3B 07                 .;.
        bne     LC142                           ; C13A D0 06                    ..
        inc     EnemyObjectPageSel              ; C13C EE 3B 07                 .;.
        inc     EnemyObjectPageLoc              ; C13F EE 3A 07                 .:.
LC142:
        dey                                     ; C142 88                       .
        lda     (EnemyDataLow),y                ; C143 B1 E9                    ..
        and     #$0F                            ; C145 29 0F                    ).
        cmp     #$0F                            ; C147 C9 0F                    ..
        bne     LC164                           ; C149 D0 19                    ..
        lda     EnemyObjectPageSel              ; C14B AD 3B 07                 .;.
        bne     LC164                           ; C14E D0 14                    ..
        iny                                     ; C150 C8                       .
        lda     (EnemyDataLow),y                ; C151 B1 E9                    ..
        and     #$3F                            ; C153 29 3F                    )?
        sta     EnemyObjectPageLoc              ; C155 8D 3A 07                 .:.
        inc     EnemyDataOffset                 ; C158 EE 39 07                 .9.
        inc     EnemyDataOffset                 ; C15B EE 39 07                 .9.
        inc     EnemyObjectPageSel              ; C15E EE 3B 07                 .;.
        jmp     LC085                           ; C161 4C 85 C0                 L..

; ----------------------------------------------------------------------------
LC164:
        lda     EnemyObjectPageLoc              ; C164 AD 3A 07                 .:.
        sta     Enemy_PageLoc,x                 ; C167 95 6E                    .n
        lda     (EnemyDataLow),y                ; C169 B1 E9                    ..
        and     #$F0                            ; C16B 29 F0                    ).
        sta     Enemy_X_Position,x              ; C16D 95 87                    ..
        cmp     ScreenRight_X_Pos               ; C16F CD 1D 07                 ...
        lda     Enemy_PageLoc,x                 ; C172 B5 6E                    .n
        sbc     ScreenRight_PageLoc             ; C174 ED 1B 07                 ...
        bcs     LC184                           ; C177 B0 0B                    ..
        lda     (EnemyDataLow),y                ; C179 B1 E9                    ..
        and     #$0F                            ; C17B 29 0F                    ).
        cmp     #$0E                            ; C17D C9 0E                    ..
        beq     LC1EA                           ; C17F F0 69                    .i
        jmp     LC209                           ; C181 4C 09 C2                 L..

; ----------------------------------------------------------------------------
LC184:
        lda     $07                             ; C184 A5 07                    ..
        cmp     Enemy_X_Position,x              ; C186 D5 87                    ..
        lda     $06                             ; C188 A5 06                    ..
        sbc     Enemy_PageLoc,x                 ; C18A F5 6E                    .n
        bcc     LC1CF                           ; C18C 90 41                    .A
        lda     #$01                            ; C18E A9 01                    ..
        sta     Enemy_Y_HighPos,x               ; C190 95 B6                    ..
        lda     (EnemyDataLow),y                ; C192 B1 E9                    ..
        asl     a                               ; C194 0A                       .
        asl     a                               ; C195 0A                       .
        asl     a                               ; C196 0A                       .
        asl     a                               ; C197 0A                       .
        sta     Enemy_Y_Position,x              ; C198 95 CF                    ..
        cmp     #$E0                            ; C19A C9 E0                    ..
        beq     LC1EA                           ; C19C F0 4C                    .L
        iny                                     ; C19E C8                       .
        lda     (EnemyDataLow),y                ; C19F B1 E9                    ..
        and     #$40                            ; C1A1 29 40                    )@
        beq     LC1AA                           ; C1A3 F0 05                    ..
        lda     SecondaryHardMode               ; C1A5 AD CC 06                 ...
        beq     LC217                           ; C1A8 F0 6D                    .m
LC1AA:
        lda     (EnemyDataLow),y                ; C1AA B1 E9                    ..
        and     #$3F                            ; C1AC 29 3F                    )?
        cmp     #$37                            ; C1AE C9 37                    .7
        bcc     LC1B6                           ; C1B0 90 04                    ..
        cmp     #$3F                            ; C1B2 C9 3F                    .?
        bcc     LC1E7                           ; C1B4 90 31                    .1
LC1B6:
        cmp     #$06                            ; C1B6 C9 06                    ..
        bne     LC1C1                           ; C1B8 D0 07                    ..
        ldy     PrimaryHardMode                 ; C1BA AC 6A 07                 .j.
        beq     LC1C1                           ; C1BD F0 02                    ..
        .byte   $A9,$02                         ; C1BF A9 02                    ..
; ----------------------------------------------------------------------------
LC1C1:
        sta     Enemy_ID,x                      ; C1C1 95 16                    ..
        lda     #$01                            ; C1C3 A9 01                    ..
        sta     Enemy_Flag,x                    ; C1C5 95 0F                    ..
        jsr     LC1DF                           ; C1C7 20 DF C1                  ..
        lda     Enemy_Flag,x                    ; C1CA B5 0F                    ..
        bne     LC217                           ; C1CC D0 49                    .I
        .byte   $60                             ; C1CE 60                       `
; ----------------------------------------------------------------------------
LC1CF:
        lda     EnemyFrenzyBuffer               ; C1CF AD CB 06                 ...
        bne     LC1DD                           ; C1D2 D0 09                    ..
        lda     VineFlagOffset                  ; C1D4 AD 98 03                 ...
        cmp     #$01                            ; C1D7 C9 01                    ..
        bne     LC1E6                           ; C1D9 D0 0B                    ..
        .byte   $A9,$2F                         ; C1DB A9 2F                    ./
; ----------------------------------------------------------------------------
LC1DD:
        sta     Enemy_ID,x                      ; C1DD 95 16                    ..
LC1DF:
        lda     #$00                            ; C1DF A9 00                    ..
        sta     Enemy_State,x                   ; C1E1 95 1E                    ..
        jsr     LC225                           ; C1E3 20 25 C2                  %.
LC1E6:
        rts                                     ; C1E6 60                       `

; ----------------------------------------------------------------------------
LC1E7:
        jmp     LC6DE                           ; C1E7 4C DE C6                 L..

; ----------------------------------------------------------------------------
LC1EA:
        iny                                     ; C1EA C8                       .
        iny                                     ; C1EB C8                       .
        lda     (EnemyDataLow),y                ; C1EC B1 E9                    ..
        lsr     a                               ; C1EE 4A                       J
        lsr     a                               ; C1EF 4A                       J
        lsr     a                               ; C1F0 4A                       J
        lsr     a                               ; C1F1 4A                       J
        lsr     a                               ; C1F2 4A                       J
        cmp     WorldNumber                     ; C1F3 CD 5F 07                 ._.
        bne     LC206                           ; C1F6 D0 0E                    ..
        dey                                     ; C1F8 88                       .
        lda     (EnemyDataLow),y                ; C1F9 B1 E9                    ..
        sta     AreaPointer                     ; C1FB 8D 50 07                 .P.
        iny                                     ; C1FE C8                       .
        lda     (EnemyDataLow),y                ; C1FF B1 E9                    ..
        and     #$1F                            ; C201 29 1F                    ).
        sta     EntrancePage                    ; C203 8D 51 07                 .Q.
LC206:
        jmp     LC214                           ; C206 4C 14 C2                 L..

; ----------------------------------------------------------------------------
LC209:
        ldy     EnemyDataOffset                 ; C209 AC 39 07                 .9.
        lda     (EnemyDataLow),y                ; C20C B1 E9                    ..
        and     #$0F                            ; C20E 29 0F                    ).
        cmp     #$0E                            ; C210 C9 0E                    ..
        bne     LC217                           ; C212 D0 03                    ..
LC214:
        inc     EnemyDataOffset                 ; C214 EE 39 07                 .9.
LC217:
        inc     EnemyDataOffset                 ; C217 EE 39 07                 .9.
        inc     EnemyDataOffset                 ; C21A EE 39 07                 .9.
        lda     #$00                            ; C21D A9 00                    ..
        sta     EnemyObjectPageSel              ; C21F 8D 3B 07                 .;.
        ldx     ObjectOffset                    ; C222 A6 08                    ..
        rts                                     ; C224 60                       `

; ----------------------------------------------------------------------------
LC225:
        lda     Enemy_ID,x                      ; C225 B5 16                    ..
        cmp     #$15                            ; C227 C9 15                    ..
        bcs     LC238                           ; C229 B0 0D                    ..
        tay                                     ; C22B A8                       .
        lda     Enemy_Y_Position,x              ; C22C B5 CF                    ..
        adc     #$08                            ; C22E 69 08                    i.
        sta     Enemy_Y_Position,x              ; C230 95 CF                    ..
        lda     #$01                            ; C232 A9 01                    ..
        sta     EnemyOffscrBitsMasked,x         ; C234 9D D8 03                 ...
        tya                                     ; C237 98                       .
LC238:
        jsr     L8F69                           ; C238 20 69 8F                  i.
        .byte   $C7,$C2,$C7,$C2,$C7,$C2,$D7,$C2 ; C23B C7 C2 C7 C2 C7 C2 D7 C2  ........
        .byte   $A9,$C2,$E1,$C2,$AA,$C2,$FB,$C2 ; C243 A9 C2 E1 C2 AA C2 FB C2  ........
        .byte   $24,$C3,$A9,$C2,$2E,$C3,$2E,$C3 ; C24B 24 C3 A9 C2 2E C3 2E C3  $.......
        .byte   $B0,$C2,$51,$C7,$A7,$C7,$03,$C3 ; C253 B0 C2 51 C7 A7 C7 03 C3  ..Q.....
        .byte   $F6,$C2,$3E,$C3,$76,$C7,$4A,$C7 ; C25B F6 C2 3E C3 76 C7 4A C7  ..>.v.J.
        .byte   $76,$C7,$76,$C7,$76,$C7,$76,$C7 ; C263 76 C7 76 C7 76 C7 76 C7  v.v.v.v.
        .byte   $8E,$C7,$A9,$C2,$A9,$C2,$1F,$C4 ; C26B 8E C7 A9 C2 A9 C2 1F C4  ........
        .byte   $1F,$C4,$1F,$C4,$1F,$C4,$1C,$C4 ; C273 1F C4 1F C4 1F C4 1C C4  ........
        .byte   $A9,$C2,$A9,$C2,$A9,$C2,$A9,$C2 ; C27B A9 C2 A9 C2 A9 C2 A9 C2  ........
        .byte   $B5,$C7,$E7,$C7,$06,$C8,$0C,$C8 ; C283 B5 C7 E7 C7 06 C8 0C C8  ........
        .byte   $E0,$C7,$D8,$C7,$E0,$C7,$12,$C8 ; C28B E0 C7 D8 C7 E0 C7 12 C8  ........
        .byte   $1E,$C8,$0C,$C5,$3C,$AD,$FA,$A9 ; C293 1E C8 0C C5 3C AD FA A9  ....<...
        .byte   $9F,$C3,$A9,$C2,$A9,$C2,$A9,$C2 ; C29B 9F C3 A9 C2 A9 C2 A9 C2  ........
        .byte   $A9,$C2,$C0,$C2,$48,$C8,$60     ; C2A3 A9 C2 C0 C2 48 C8 60     ....H.`
; ----------------------------------------------------------------------------
        jsr     LC2C7                           ; C2AA 20 C7 C2                  ..
        jmp     LC2FF                           ; C2AD 4C FF C2                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$02,$95,$B6,$95,$CF,$4A,$9D ; C2B0 A9 02 95 B6 95 CF 4A 9D  ......J.
        .byte   $96,$07,$4A,$95,$1E,$4C,$FF,$C2 ; C2B8 96 07 4A 95 1E 4C FF C2  ..J..L..
; ----------------------------------------------------------------------------
        lda     #$B8                            ; C2C0 A9 B8                    ..
        sta     Enemy_Y_Position,x              ; C2C2 95 CF                    ..
        rts                                     ; C2C4 60                       `

; ----------------------------------------------------------------------------
LC2C5:
        .byte   $F8,$F4                         ; C2C5 F8 F4                    ..
; ----------------------------------------------------------------------------
LC2C7:
        ldy     #$01                            ; C2C7 A0 01                    ..
        lda     PrimaryHardMode                 ; C2C9 AD 6A 07                 .j.
        bne     LC2CF                           ; C2CC D0 01                    ..
        dey                                     ; C2CE 88                       .
LC2CF:
        lda     LC2C5,y                         ; C2CF B9 C5 C2                 ...
        sta     Enemy_X_Speed,x                 ; C2D2 95 58                    .X
        jmp     LC313                           ; C2D4 4C 13 C3                 L..

; ----------------------------------------------------------------------------
        jsr     LC2C7                           ; C2D7 20 C7 C2                  ..
        lda     #$01                            ; C2DA A9 01                    ..
        sta     Enemy_State,x                   ; C2DC 95 1E                    ..
        rts                                     ; C2DE 60                       `

; ----------------------------------------------------------------------------
        .byte   $80,$50,$A9,$00,$9D,$A2,$03,$95 ; C2DF 80 50 A9 00 9D A2 03 95  .P......
        .byte   $58,$AC,$CC,$06,$B9,$DF,$C2,$9D ; C2E7 58 AC CC 06 B9 DF C2 9D  X.......
        .byte   $96,$07,$A9,$0B,$4C,$15,$C3,$A9 ; C2EF 96 07 A9 0B 4C 15 C3 A9  ....L...
        .byte   $00,$4C,$D2,$C2                 ; C2F7 00 4C D2 C2              .L..
; ----------------------------------------------------------------------------
        lda     #$00                            ; C2FB A9 00                    ..
        sta     Enemy_X_Speed,x                 ; C2FD 95 58                    .X
LC2FF:
        lda     #$09                            ; C2FF A9 09                    ..
        bne     LC315                           ; C301 D0 12                    ..
        ldy     #$30                            ; C303 A0 30                    .0
        lda     Enemy_Y_Position,x              ; C305 B5 CF                    ..
        sta     Enemy_X_MoveForce,x             ; C307 9D 01 04                 ...
        bpl     LC30E                           ; C30A 10 02                    ..
        .byte   $A0,$E0                         ; C30C A0 E0                    ..
; ----------------------------------------------------------------------------
LC30E:
        tya                                     ; C30E 98                       .
        adc     Enemy_Y_Position,x              ; C30F 75 CF                    u.
        sta     Enemy_X_Speed,x                 ; C311 95 58                    .X
LC313:
        lda     #$03                            ; C313 A9 03                    ..
LC315:
        sta     Enemy_BoundBoxCtrl,x            ; C315 9D 9A 04                 ...
        lda     #$02                            ; C318 A9 02                    ..
        sta     Enemy_MovingDir,x               ; C31A 95 46                    .F
LC31C:
        lda     #$00                            ; C31C A9 00                    ..
        sta     Enemy_Y_Speed,x                 ; C31E 95 A0                    ..
        sta     Enemy_Y_MoveForce,x             ; C320 9D 34 04                 .4.
        rts                                     ; C323 60                       `

; ----------------------------------------------------------------------------
        .byte   $A9,$02,$95,$46,$A9,$09,$9D,$9A ; C324 A9 02 95 46 A9 09 9D 9A  ...F....
        .byte   $04,$60                         ; C32C 04 60                    .`
; ----------------------------------------------------------------------------
        jsr     LC2FF                           ; C32E 20 FF C2                  ..
        lda     PseudoRandomBitReg,x            ; C331 BD A7 07                 ...
        and     #$10                            ; C334 29 10                    ).
        sta     Enemy_X_Speed,x                 ; C336 95 58                    .X
        lda     Enemy_Y_Position,x              ; C338 B5 CF                    ..
        sta     Enemy_Y_MoveForce,x             ; C33A 9D 34 04                 .4.
        rts                                     ; C33D 60                       `

; ----------------------------------------------------------------------------
        .byte   $AD,$CB,$06,$D0,$0B,$A9,$00,$8D ; C33E AD CB 06 D0 0B A9 00 8D  ........
        .byte   $D1,$06,$20,$F6,$C2,$4C,$AF,$C7 ; C346 D1 06 20 F6 C2 4C AF C7  .. ..L..
        .byte   $4C,$5F,$C9,$26,$2C,$32,$38,$20 ; C34E 4C 5F C9 26 2C 32 38 20  L_.&,28 
        .byte   $22,$24,$26,$13,$14,$15,$16,$AD ; C356 22 24 26 13 14 15 16 AD  "$&.....
        .byte   $8F,$07,$D0,$3C,$E0,$05,$B0,$38 ; C35E 8F 07 D0 3C E0 05 B0 38  ...<...8
        .byte   $A9,$80,$8D,$8F,$07,$A0,$04,$B9 ; C366 A9 80 8D 8F 07 A0 04 B9  ........
        .byte   $16,$00,$C9,$11,$F0,$35,$88,$10 ; C36E 16 00 C9 11 F0 35 88 10  .....5..
        .byte   $F6,$EE,$D1,$06,$AD,$D1,$06,$C9 ; C376 F6 EE D1 06 AD D1 06 C9  ........
        .byte   $07,$90,$1D,$A2,$04,$B5,$0F,$F0 ; C37E 07 90 1D A2 04 B5 0F F0  ........
        .byte   $05,$CA,$10,$F9,$30,$10,$A9,$00 ; C386 05 CA 10 F9 30 10 A9 00  ....0...
        .byte   $95,$1E,$A9,$11,$95,$16,$20,$43 ; C38E 95 1E A9 11 95 16 20 43  ...... C
        .byte   $C3,$A9,$20,$20,$9B,$C5,$A6,$08 ; C396 C3 A9 20 20 9B C5 A6 08  ..  ....
        .byte   $60,$A9,$12,$95,$16,$20,$C7,$C2 ; C39E 60 A9 12 95 16 20 C7 C2  `.... ..
        .byte   $4C,$FF,$C2,$A5,$CE,$C9,$2C,$90 ; C3A6 4C FF C2 A5 CE C9 2C 90  L.....,.
        .byte   $EF,$B9,$1E,$00,$D0,$EA,$B9,$6E ; C3AE EF B9 1E 00 D0 EA B9 6E  .......n
        .byte   $00,$95,$6E,$B9,$87,$00,$95,$87 ; C3B6 00 95 6E B9 87 00 95 87  ..n.....
        .byte   $A9,$01,$95,$B6,$B9,$CF,$00,$38 ; C3BE A9 01 95 B6 B9 CF 00 38  .......8
        .byte   $E9,$08,$95,$CF,$BD,$A7,$07,$29 ; C3C6 E9 08 95 CF BD A7 07 29  .......)
        .byte   $03,$A8,$A2,$02,$B9,$51,$C3,$95 ; C3CE 03 A8 A2 02 B9 51 C3 95  .....Q..
        .byte   $01,$C8,$C8,$C8,$C8,$CA,$10,$F4 ; C3D6 01 C8 C8 C8 C8 CA 10 F4  ........
        .byte   $A6,$08,$20,$33,$CF,$A4,$57,$C0 ; C3DE A6 08 20 33 CF A4 57 C0  .. 3..W.
        .byte   $08,$B0,$0E,$A8,$BD,$A8,$07,$29 ; C3E6 08 B0 0E A8 BD A8 07 29  .......)
        .byte   $03,$F0,$05,$98,$49,$FF,$A8,$C8 ; C3EE 03 F0 05 98 49 FF A8 C8  ....I...
        .byte   $98,$20,$FF,$C2,$A0,$02,$95,$58 ; C3F6 98 20 FF C2 A0 02 95 58  . .....X
        .byte   $C9,$00,$30,$01,$88,$94,$46,$A9 ; C3FE C9 00 30 01 88 94 46 A9  ..0...F.
        .byte   $FD,$95,$A0,$A9,$01,$95,$0F,$A9 ; C406 FD 95 A0 A9 01 95 0F A9  ........
        .byte   $05,$95,$1E,$60                 ; C40E 05 95 1E 60              ...`
LC412:
        .byte   $28,$38,$28,$38,$28             ; C412 28 38 28 38 28           (8(8(
LC417:
        .byte   $00,$00,$10,$10,$00,$20,$38,$C5 ; C417 00 00 10 10 00 20 38 C5  ..... 8.
; ----------------------------------------------------------------------------
        lda     #$00                            ; C41F A9 00                    ..
        sta     Enemy_X_Speed,x                 ; C421 95 58                    .X
        lda     Enemy_ID,x                      ; C423 B5 16                    ..
        sec                                     ; C425 38                       8
        sbc     #$1B                            ; C426 E9 1B                    ..
        tay                                     ; C428 A8                       .
        lda     LC412,y                         ; C429 B9 12 C4                 ...
        sta     FirebarSpinSpeed,x              ; C42C 9D 88 03                 ...
        lda     LC417,y                         ; C42F B9 17 C4                 ...
        sta     DestinationPageLoc,x            ; C432 95 34                    .4
        lda     Enemy_Y_Position,x              ; C434 B5 CF                    ..
        clc                                     ; C436 18                       .
        adc     #$04                            ; C437 69 04                    i.
        sta     Enemy_Y_Position,x              ; C439 95 CF                    ..
        lda     Enemy_X_Position,x              ; C43B B5 87                    ..
        clc                                     ; C43D 18                       .
        adc     #$04                            ; C43E 69 04                    i.
        sta     Enemy_X_Position,x              ; C440 95 87                    ..
        lda     Enemy_PageLoc,x                 ; C442 B5 6E                    .n
        adc     #$00                            ; C444 69 00                    i.
        sta     Enemy_PageLoc,x                 ; C446 95 6E                    .n
        jmp     LC7AF                           ; C448 4C AF C7                 L..

; ----------------------------------------------------------------------------
        .byte   $80,$30,$40,$80,$30,$50,$50,$70 ; C44B 80 30 40 80 30 50 50 70  .0@.0PPp
        .byte   $20,$40,$80,$A0,$70,$40,$90,$68 ; C453 20 40 80 A0 70 40 90 68   @..p@.h
        .byte   $0E,$05,$06,$0E,$1C,$20,$10,$0C ; C45B 0E 05 06 0E 1C 20 10 0C  ..... ..
        .byte   $1E,$22,$18,$14,$10,$60,$20,$48 ; C463 1E 22 18 14 10 60 20 48  ."...` H
        .byte   $AD,$8F,$07,$D0,$A1,$20,$FF,$C2 ; C46B AD 8F 07 D0 A1 20 FF C2  ..... ..
        .byte   $BD,$A8,$07,$29,$03,$A8,$B9,$67 ; C473 BD A8 07 29 03 A8 B9 67  ...)...g
        .byte   $C4,$8D,$8F,$07,$A0,$03,$AD,$CC ; C47B C4 8D 8F 07 A0 03 AD CC  ........
        .byte   $06,$F0,$01,$C8,$84,$00,$E4,$00 ; C483 06 F0 01 C8 84 00 E4 00  ........
        .byte   $B0,$84,$BD,$A7,$07,$29,$03,$85 ; C48B B0 84 BD A7 07 29 03 85  .....)..
        .byte   $00,$85,$01,$A9,$FB,$95,$A0,$A9 ; C493 00 85 01 A9 FB 95 A0 A9  ........
        .byte   $00,$A4,$57,$F0,$07,$A9,$04,$C0 ; C49B 00 A4 57 F0 07 A9 04 C0  ..W.....
        .byte   $19,$90,$01,$0A,$48,$18,$65,$00 ; C4A3 19 90 01 0A 48 18 65 00  ....H.e.
        .byte   $85,$00,$BD,$A8,$07,$29,$03,$F0 ; C4AB 85 00 BD A8 07 29 03 F0  .....)..
        .byte   $07,$BD,$A9,$07,$29,$0F,$85,$00 ; C4B3 07 BD A9 07 29 0F 85 00  ....)...
        .byte   $68,$18,$65,$01,$A8,$B9,$5B,$C4 ; C4BB 68 18 65 01 A8 B9 5B C4  h.e...[.
        .byte   $95,$58,$A9,$01,$95,$46,$A5,$57 ; C4C3 95 58 A9 01 95 46 A5 57  .X...F.W
        .byte   $D0,$12,$A4,$00,$98,$29,$02,$F0 ; C4CB D0 12 A4 00 98 29 02 F0  .....)..
        .byte   $0B,$B5,$58,$49,$FF,$18,$69,$01 ; C4D3 0B B5 58 49 FF 18 69 01  ..XI..i.
        .byte   $95,$58,$F6,$46,$98,$29,$02,$F0 ; C4DB 95 58 F6 46 98 29 02 F0  .X.F.)..
        .byte   $0F,$A5,$86,$18,$79,$4B,$C4,$95 ; C4E3 0F A5 86 18 79 4B C4 95  ....yK..
        .byte   $87,$A5,$6D,$69,$00,$4C,$FF,$C4 ; C4EB 87 A5 6D 69 00 4C FF C4  ..mi.L..
        .byte   $A5,$86,$38,$F9,$4B,$C4,$95,$87 ; C4F3 A5 86 38 F9 4B C4 95 87  ..8.K...
        .byte   $A5,$6D,$E9,$00,$95,$6E,$A9,$01 ; C4FB A5 6D E9 00 95 6E A9 01  .m...n..
        .byte   $95,$0F,$95,$B6,$A9,$F8,$95,$CF ; C503 95 0F 95 B6 A9 F8 95 CF  ........
        .byte   $60                             ; C50B 60                       `
; ----------------------------------------------------------------------------
        jsr     LC538                           ; C50C 20 38 C5                  8.
        stx     BowserFront_Offset              ; C50F 8E 68 03                 .h.
        lda     #$00                            ; C512 A9 00                    ..
        sta     BowserBodyControls              ; C514 8D 63 03                 .c.
        sta     BridgeCollapseOffset            ; C517 8D 69 03                 .i.
        lda     Enemy_X_Position,x              ; C51A B5 87                    ..
        sta     BowserOrigXPos                  ; C51C 8D 66 03                 .f.
        lda     #$DF                            ; C51F A9 DF                    ..
        sta     BowserFireBreathTimer           ; C521 8D 90 07                 ...
        sta     Enemy_MovingDir,x               ; C524 95 46                    .F
        lda     #$20                            ; C526 A9 20                    . 
        sta     BowserFeetCounter               ; C528 8D 64 03                 .d.
        sta     EnemyFrameTimer,x               ; C52B 9D 8A 07                 ...
        lda     #$05                            ; C52E A9 05                    ..
        sta     BowserHitPoints                 ; C530 8D 83 04                 ...
        lsr     a                               ; C533 4A                       J
        sta     BowserMovementSpeed             ; C534 8D 65 03                 .e.
        rts                                     ; C537 60                       `

; ----------------------------------------------------------------------------
LC538:
        ldy     #$FF                            ; C538 A0 FF                    ..
LC53A:
        iny                                     ; C53A C8                       .
        lda     Enemy_Flag,y                    ; C53B B9 0F 00                 ...
        bne     LC53A                           ; C53E D0 FA                    ..
        sty     DuplicateObj_Offset             ; C540 8C CF 06                 ...
        txa                                     ; C543 8A                       .
        ora     #$80                            ; C544 09 80                    ..
        sta     Enemy_Flag,y                    ; C546 99 0F 00                 ...
        lda     Enemy_PageLoc,x                 ; C549 B5 6E                    .n
        sta     Enemy_PageLoc,y                 ; C54B 99 6E 00                 .n.
        lda     Enemy_X_Position,x              ; C54E B5 87                    ..
        sta     Enemy_X_Position,y              ; C550 99 87 00                 ...
        lda     #$01                            ; C553 A9 01                    ..
        sta     Enemy_Flag,x                    ; C555 95 0F                    ..
        sta     Enemy_Y_HighPos,y               ; C557 99 B6 00                 ...
        lda     Enemy_Y_Position,x              ; C55A B5 CF                    ..
        sta     Enemy_Y_Position,y              ; C55C 99 CF 00                 ...
        rts                                     ; C55F 60                       `

; ----------------------------------------------------------------------------
        .byte   $90,$80,$70,$90,$FF,$01,$AD,$8F ; C560 90 80 70 90 FF 01 AD 8F  ..p.....
        .byte   $07,$D0,$F4,$9D,$34,$04,$A5,$FD ; C568 07 D0 F4 9D 34 04 A5 FD  ....4...
        .byte   $09,$02,$85,$FD,$AC,$68,$03,$B9 ; C570 09 02 85 FD AC 68 03 B9  .....h..
        .byte   $16,$00,$C9,$2D,$F0,$31,$20,$A0 ; C578 16 00 C9 2D F0 31 20 A0  ...-.1 .
        .byte   $D1,$18,$69,$20,$AC,$CC,$06,$F0 ; C580 D1 18 69 20 AC CC 06 F0  ..i ....
        .byte   $03,$38,$E9,$10,$8D,$8F,$07,$BD ; C588 03 38 E9 10 8D 8F 07 BD  .8......
        .byte   $A7,$07,$29,$03,$9D,$17,$04,$A8 ; C590 A7 07 29 03 9D 17 04 A8  ..).....
        .byte   $B9,$60,$C5,$95,$CF,$AD,$1D,$07 ; C598 B9 60 C5 95 CF AD 1D 07  .`......
        .byte   $18,$69,$20,$95,$87,$AD,$1B,$07 ; C5A0 18 69 20 95 87 AD 1B 07  .i .....
        .byte   $69,$00,$95,$6E,$4C,$E2,$C5,$B9 ; C5A8 69 00 95 6E 4C E2 C5 B9  i..nL...
        .byte   $87,$00,$38,$E9,$0E,$95,$87,$B9 ; C5B0 87 00 38 E9 0E 95 87 B9  ..8.....
        .byte   $6E,$00,$95,$6E,$B9,$CF,$00,$18 ; C5B8 6E 00 95 6E B9 CF 00 18  n..n....
        .byte   $69,$08,$95,$CF,$BD,$A7,$07,$29 ; C5C0 69 08 95 CF BD A7 07 29  i......)
        .byte   $03,$9D,$17,$04,$A8,$B9,$60,$C5 ; C5C8 03 9D 17 04 A8 B9 60 C5  ......`.
        .byte   $A0,$00,$D5,$CF,$90,$01,$C8,$B9 ; C5D0 A0 00 D5 CF 90 01 C8 B9  ........
        .byte   $64,$C5,$9D,$34,$04,$A9,$00,$8D ; C5D8 64 C5 9D 34 04 A9 00 8D  d..4....
        .byte   $CB,$06,$A9,$08,$9D,$9A,$04,$A9 ; C5E0 CB 06 A9 08 9D 9A 04 A9  ........
        .byte   $01,$95,$B6,$95,$0F,$4A,$9D,$01 ; C5E8 01 95 B6 95 0F 4A 9D 01  .....J..
        .byte   $04,$95,$1E,$60                 ; C5F0 04 95 1E 60              ...`
LC5F4:
        .byte   $00,$30,$60,$60,$00,$20         ; C5F4 00 30 60 60 00 20        .0``. 
LC5FA:
        .byte   $60,$40,$70,$40,$60,$30         ; C5FA 60 40 70 40 60 30        `@p@`0
; ----------------------------------------------------------------------------
        lda     FrenzyEnemyTimer                ; C600 AD 8F 07                 ...
        bne     LC64C                           ; C603 D0 47                    .G
        lda     #$20                            ; C605 A9 20                    . 
        sta     FrenzyEnemyTimer                ; C607 8D 8F 07                 ...
        dec     FireworksCounter                ; C60A CE D7 06                 ...
        ldy     #$06                            ; C60D A0 06                    ..
LC60F:
        dey                                     ; C60F 88                       .
        lda     Enemy_ID,y                      ; C610 B9 16 00                 ...
        cmp     #$31                            ; C613 C9 31                    .1
        bne     LC60F                           ; C615 D0 F8                    ..
        lda     Enemy_X_Position,y              ; C617 B9 87 00                 ...
        sec                                     ; C61A 38                       8
        sbc     #$30                            ; C61B E9 30                    .0
        pha                                     ; C61D 48                       H
        lda     Enemy_PageLoc,y                 ; C61E B9 6E 00                 .n.
        sbc     #$00                            ; C621 E9 00                    ..
        sta     $00                             ; C623 85 00                    ..
        lda     FireworksCounter                ; C625 AD D7 06                 ...
        clc                                     ; C628 18                       .
        adc     Enemy_State,y                   ; C629 79 1E 00                 y..
        tay                                     ; C62C A8                       .
        pla                                     ; C62D 68                       h
        clc                                     ; C62E 18                       .
        adc     LC5F4,y                         ; C62F 79 F4 C5                 y..
        sta     Enemy_X_Position,x              ; C632 95 87                    ..
        lda     $00                             ; C634 A5 00                    ..
        adc     #$00                            ; C636 69 00                    i.
        sta     Enemy_PageLoc,x                 ; C638 95 6E                    .n
        lda     LC5FA,y                         ; C63A B9 FA C5                 ...
        sta     Enemy_Y_Position,x              ; C63D 95 CF                    ..
        lda     #$01                            ; C63F A9 01                    ..
        sta     Enemy_Y_HighPos,x               ; C641 95 B6                    ..
        sta     Enemy_Flag,x                    ; C643 95 0F                    ..
        lsr     a                               ; C645 4A                       J
        sta     Enemy_X_Speed,x                 ; C646 95 58                    .X
        lda     #$08                            ; C648 A9 08                    ..
        sta     Enemy_Y_Speed,x                 ; C64A 95 A0                    ..
LC64C:
        rts                                     ; C64C 60                       `

; ----------------------------------------------------------------------------
LC64D:
        .byte   $01,$02,$04,$08,$10,$20,$40,$80 ; C64D 01 02 04 08 10 20 40 80  ..... @.
        .byte   $40,$30,$90,$50,$20,$60,$A0,$70 ; C655 40 30 90 50 20 60 A0 70  @0.P `.p
        .byte   $0A,$0B,$AD,$8F,$07,$D0,$6F,$AD ; C65D 0A 0B AD 8F 07 D0 6F AD  ......o.
        .byte   $4E,$07,$D0,$57,$E0,$03,$B0,$66 ; C665 4E 07 D0 57 E0 03 B0 66  N..W...f
        .byte   $A0,$00,$BD,$A7,$07,$C9,$AA,$90 ; C66D A0 00 BD A7 07 C9 AA 90  ........
        .byte   $01,$C8,$AD,$5F,$07,$C9,$01,$F0 ; C675 01 C8 AD 5F 07 C9 01 F0  ..._....
        .byte   $01,$C8,$98,$29,$01,$A8,$B9,$5D ; C67D 01 C8 98 29 01 A8 B9 5D  ...)...]
        .byte   $C6,$95,$16,$AD,$DD,$06,$C9,$FF ; C685 C6 95 16 AD DD 06 C9 FF  ........
        .byte   $D0,$05,$A9,$00,$8D,$DD,$06,$BD ; C68D D0 05 A9 00 8D DD 06 BD  ........
        .byte   $A7,$07,$29,$07,$A8,$B9,$4D,$C6 ; C695 A7 07 29 07 A8 B9 4D C6  ..)...M.
        .byte   $2C,$DD,$06,$F0,$07,$C8,$98,$29 ; C69D 2C DD 06 F0 07 C8 98 29  ,......)
        .byte   $07,$4C,$99,$C6,$0D,$DD,$06,$8D ; C6A5 07 4C 99 C6 0D DD 06 8D  .L......
        .byte   $DD,$06,$B9,$55,$C6,$20,$9B,$C5 ; C6AD DD 06 B9 55 C6 20 9B C5  ...U. ..
        .byte   $9D,$17,$04,$A9,$20,$8D,$8F,$07 ; C6B5 9D 17 04 A9 20 8D 8F 07  .... ...
        .byte   $4C,$25,$C2,$A0,$FF,$C8,$C0,$05 ; C6BD 4C 25 C2 A0 FF C8 C0 05  L%......
        .byte   $B0,$0D,$B9,$0F,$00,$F0,$F6,$B9 ; C6C5 B0 0D B9 0F 00 F0 F6 B9  ........
        .byte   $16,$00,$C9,$08,$D0,$EF,$60,$A5 ; C6CD 16 00 C9 08 D0 EF 60 A5  ......`.
        .byte   $FE,$09,$08,$85,$FE,$A9,$08,$D0 ; C6D5 FE 09 08 85 FE A9 08 D0  ........
        .byte   $A8                             ; C6DD A8                       .
; ----------------------------------------------------------------------------
LC6DE:
        ldy     #$00                            ; C6DE A0 00                    ..
        sec                                     ; C6E0 38                       8
        sbc     #$37                            ; C6E1 E9 37                    .7
        pha                                     ; C6E3 48                       H
        cmp     #$04                            ; C6E4 C9 04                    ..
        bcs     LC6F3                           ; C6E6 B0 0B                    ..
        pha                                     ; C6E8 48                       H
        ldy     #$06                            ; C6E9 A0 06                    ..
        lda     PrimaryHardMode                 ; C6EB AD 6A 07                 .j.
        beq     LC6F2                           ; C6EE F0 02                    ..
        .byte   $A0,$02                         ; C6F0 A0 02                    ..
; ----------------------------------------------------------------------------
LC6F2:
        pla                                     ; C6F2 68                       h
LC6F3:
        sty     $01                             ; C6F3 84 01                    ..
        ldy     #$B0                            ; C6F5 A0 B0                    ..
        and     #$02                            ; C6F7 29 02                    ).
        beq     LC6FD                           ; C6F9 F0 02                    ..
        ldy     #$70                            ; C6FB A0 70                    .p
LC6FD:
        sty     $00                             ; C6FD 84 00                    ..
        lda     ScreenRight_PageLoc             ; C6FF AD 1B 07                 ...
        sta     $02                             ; C702 85 02                    ..
        lda     ScreenRight_X_Pos               ; C704 AD 1D 07                 ...
        sta     $03                             ; C707 85 03                    ..
        ldy     #$02                            ; C709 A0 02                    ..
        pla                                     ; C70B 68                       h
        lsr     a                               ; C70C 4A                       J
        bcc     LC710                           ; C70D 90 01                    ..
        iny                                     ; C70F C8                       .
LC710:
        sty     NumberofGroupEnemies            ; C710 8C D3 06                 ...
LC713:
        ldx     #$FF                            ; C713 A2 FF                    ..
LC715:
        inx                                     ; C715 E8                       .
        cpx     #$05                            ; C716 E0 05                    ..
        bcs     LC747                           ; C718 B0 2D                    .-
        lda     Enemy_Flag,x                    ; C71A B5 0F                    ..
        bne     LC715                           ; C71C D0 F7                    ..
        lda     $01                             ; C71E A5 01                    ..
        sta     Enemy_ID,x                      ; C720 95 16                    ..
        lda     $02                             ; C722 A5 02                    ..
        sta     Enemy_PageLoc,x                 ; C724 95 6E                    .n
        lda     $03                             ; C726 A5 03                    ..
        sta     Enemy_X_Position,x              ; C728 95 87                    ..
        clc                                     ; C72A 18                       .
        adc     #$18                            ; C72B 69 18                    i.
        sta     $03                             ; C72D 85 03                    ..
        lda     $02                             ; C72F A5 02                    ..
        adc     #$00                            ; C731 69 00                    i.
        sta     $02                             ; C733 85 02                    ..
        lda     $00                             ; C735 A5 00                    ..
        sta     Enemy_Y_Position,x              ; C737 95 CF                    ..
        lda     #$01                            ; C739 A9 01                    ..
        sta     Enemy_Y_HighPos,x               ; C73B 95 B6                    ..
        sta     Enemy_Flag,x                    ; C73D 95 0F                    ..
        jsr     LC225                           ; C73F 20 25 C2                  %.
        dec     NumberofGroupEnemies            ; C742 CE D3 06                 ...
        bne     LC713                           ; C745 D0 CC                    ..
LC747:
        jmp     LC217                           ; C747 4C 17 C2                 L..

; ----------------------------------------------------------------------------
        .byte   $B5,$CF,$69,$16,$4C,$55,$C7     ; C74A B5 CF 69 16 4C 55 C7     ..i.LU.
; ----------------------------------------------------------------------------
        lda     Enemy_Y_Position,x              ; C751 B5 CF                    ..
        adc     #$08                            ; C753 69 08                    i.
        sta     Enemy_Y_Position,x              ; C755 95 CF                    ..
        sta     Enemy_Y_MoveForce,x             ; C757 9D 34 04                 .4.
        sec                                     ; C75A 38                       8
        sbc     #$18                            ; C75B E9 18                    ..
        sta     Enemy_YMF_Dummy,x               ; C75D 9D 17 04                 ...
        lda     Enemy_X_Position,x              ; C760 B5 87                    ..
        adc     #$08                            ; C762 69 08                    i.
        sta     Enemy_X_Position,x              ; C764 95 87                    ..
        lda     #$01                            ; C766 A9 01                    ..
        sta     Enemy_X_Speed,x                 ; C768 95 58                    .X
        sta     Enemy_Y_HighPos,x               ; C76A 95 B6                    ..
        lsr     a                               ; C76C 4A                       J
        sta     Enemy_State,x                   ; C76D 95 1E                    ..
        sta     Enemy_Y_Speed,x                 ; C76F 95 A0                    ..
        lda     #$09                            ; C771 A9 09                    ..
        jmp     LC7B1                           ; C773 4C B1 C7                 L..

; ----------------------------------------------------------------------------
        lda     Enemy_ID,x                      ; C776 B5 16                    ..
        sta     EnemyFrenzyBuffer               ; C778 8D CB 06                 ...
        sec                                     ; C77B 38                       8
        sbc     #$12                            ; C77C E9 12                    ..
        jsr     L8F69                           ; C77E 20 69 8F                  i.
        .byte   $5D,$C3,$8D,$C7,$6B,$C4,$66,$C5 ; C781 5D C3 8D C7 6B C4 66 C5  ]...k.f.
        .byte   $00,$C6,$5F,$C6,$60             ; C789 00 C6 5F C6 60           .._.`
; ----------------------------------------------------------------------------
        ldy     #$05                            ; C78E A0 05                    ..
LC790:
        lda     Enemy_ID,y                      ; C790 B9 16 00                 ...
        cmp     #$11                            ; C793 C9 11                    ..
        bne     LC79C                           ; C795 D0 05                    ..
        .byte   $A9,$01,$99,$1E,$00             ; C797 A9 01 99 1E 00           .....
; ----------------------------------------------------------------------------
LC79C:
        dey                                     ; C79C 88                       .
        bpl     LC790                           ; C79D 10 F1                    ..
        lda     #$00                            ; C79F A9 00                    ..
        sta     EnemyFrenzyBuffer               ; C7A1 8D CB 06                 ...
        sta     Enemy_Flag,x                    ; C7A4 95 0F                    ..
        rts                                     ; C7A6 60                       `

; ----------------------------------------------------------------------------
        .byte   $A9,$02,$95,$46,$A9,$F8,$95,$58 ; C7A7 A9 02 95 46 A9 F8 95 58  ...F...X
; ----------------------------------------------------------------------------
LC7AF:
        lda     #$03                            ; C7AF A9 03                    ..
LC7B1:
        sta     Enemy_BoundBoxCtrl,x            ; C7B1 9D 9A 04                 ...
        rts                                     ; C7B4 60                       `

; ----------------------------------------------------------------------------
        .byte   $D6,$CF,$D6,$CF,$A0,$00,$D0,$05 ; C7B5 D6 CF D6 CF A0 00 D0 05  ........
        .byte   $A0,$02,$20,$38,$C8,$A0,$FF,$AD ; C7BD A0 02 20 38 C8 A0 FF AD  .. 8....
        .byte   $A0,$03,$95,$1E,$10,$02,$8A,$A8 ; C7C5 A0 03 95 1E 10 02 8A A8  ........
        .byte   $8C,$A0,$03,$A9,$00,$95,$46,$A8 ; C7CD 8C A0 03 A9 00 95 46 A8  ......F.
        .byte   $20,$38,$C8                     ; C7D5 20 38 C8                  8.
; ----------------------------------------------------------------------------
        lda     #$FF                            ; C7D8 A9 FF                    ..
        sta     HammerThrowingTimer,x           ; C7DA 9D A2 03                 ...
        jmp     LC7FD                           ; C7DD 4C FD C7                 L..

; ----------------------------------------------------------------------------
        lda     #$00                            ; C7E0 A9 00                    ..
        sta     Enemy_X_Speed,x                 ; C7E2 95 58                    .X
        jmp     LC7FD                           ; C7E4 4C FD C7                 L..

; ----------------------------------------------------------------------------
        .byte   $A0,$40,$B5,$CF,$10,$07,$49,$FF ; C7E7 A0 40 B5 CF 10 07 49 FF  .@....I.
        .byte   $18,$69,$01,$A0,$C0,$9D,$01,$04 ; C7EF 18 69 01 A0 C0 9D 01 04  .i......
        .byte   $98,$18,$75,$CF,$95,$58         ; C7F7 98 18 75 CF 95 58        ..u..X
; ----------------------------------------------------------------------------
LC7FD:
        jsr     LC31C                           ; C7FD 20 1C C3                  ..
LC800:
        lda     #$06                            ; C800 A9 06                    ..
        sta     Enemy_BoundBoxCtrl,x            ; C802 9D 9A 04                 ...
        rts                                     ; C805 60                       `

; ----------------------------------------------------------------------------
        .byte   $20,$12,$C8,$4C,$0F,$C8         ; C806 20 12 C8 4C 0F C8         ..L..
; ----------------------------------------------------------------------------
        jsr     LC81E                           ; C80C 20 1E C8                  ..
        jmp     LC800                           ; C80F 4C 00 C8                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$10,$9D,$34,$04,$A9,$FF,$95 ; C812 A9 10 9D 34 04 A9 FF 95  ...4....
        .byte   $A0,$4C,$27,$C8                 ; C81A A0 4C 27 C8              .L'.
; ----------------------------------------------------------------------------
LC81E:
        lda     #$F0                            ; C81E A9 F0                    ..
        sta     Enemy_Y_MoveForce,x             ; C820 9D 34 04                 .4.
        lda     #$00                            ; C823 A9 00                    ..
        sta     Enemy_Y_Speed,x                 ; C825 95 A0                    ..
        ldy     #$01                            ; C827 A0 01                    ..
        jsr     LC838                           ; C829 20 38 C8                  8.
        lda     #$04                            ; C82C A9 04                    ..
        sta     Enemy_BoundBoxCtrl,x            ; C82E 9D 9A 04                 ...
        rts                                     ; C831 60                       `

; ----------------------------------------------------------------------------
LC832:
        .byte   $08,$0C,$F8                     ; C832 08 0C F8                 ...
LC835:
        .byte   $00,$00,$FF                     ; C835 00 00 FF                 ...
; ----------------------------------------------------------------------------
LC838:
        lda     Enemy_X_Position,x              ; C838 B5 87                    ..
        clc                                     ; C83A 18                       .
        adc     LC832,y                         ; C83B 79 32 C8                 y2.
        sta     Enemy_X_Position,x              ; C83E 95 87                    ..
        lda     Enemy_PageLoc,x                 ; C840 B5 6E                    .n
        adc     LC835,y                         ; C842 79 35 C8                 y5.
        sta     Enemy_PageLoc,x                 ; C845 95 6E                    .n
        rts                                     ; C847 60                       `

; ----------------------------------------------------------------------------
        .byte   $60                             ; C848 60                       `
; ----------------------------------------------------------------------------
LC849:
        ldx     ObjectOffset                    ; C849 A6 08                    ..
        lda     #$00                            ; C84B A9 00                    ..
        ldy     Enemy_ID,x                      ; C84D B4 16                    ..
        cpy     #$15                            ; C84F C0 15                    ..
        bcc     LC856                           ; C851 90 03                    ..
        tya                                     ; C853 98                       .
        sbc     #$14                            ; C854 E9 14                    ..
LC856:
        jsr     L8F69                           ; C856 20 69 8F                  i.
        .byte   $A7,$C8,$FC,$C8,$5C,$D2,$9D,$C8 ; C859 A7 C8 FC C8 5C D2 9D C8  ....\...
        .byte   $9D,$C8,$9D,$C8,$9D,$C8,$0E,$C9 ; C861 9D C8 9D C8 9D C8 0E C9  ........
        .byte   $0E,$C9,$0E,$C9,$0E,$C9,$0E,$C9 ; C869 0E C9 0E C9 0E C9 0E C9  ........
        .byte   $0E,$C9,$0E,$C9,$0E,$C9,$9D,$C8 ; C871 0E C9 0E C9 0E C9 9D C8  ........
        .byte   $2C,$C9,$2C,$C9,$2C,$C9,$2C,$C9 ; C879 2C C9 2C C9 2C C9 2C C9  ,.,.,.,.
        .byte   $2C,$C9,$2C,$C9,$2C,$C9,$14,$C9 ; C881 2C C9 2C C9 2C C9 14 C9  ,.,.,...
        .byte   $14,$C9,$2C,$D0,$61,$AD,$27,$AA ; C889 14 C9 2C D0 61 AD 27 AA  ..,.a.'.
        .byte   $9D,$C8,$A0,$D2,$96,$A9,$9D,$C8 ; C891 9D C8 A0 D2 96 A9 9D C8  ........
        .byte   $7B,$A8,$9E,$C8                 ; C899 7B A8 9E C8              {...
; ----------------------------------------------------------------------------
        rts                                     ; C89D 60                       `

; ----------------------------------------------------------------------------
LC89E:
        jsr     LF1F4                           ; C89E 20 F4 F1                  ..
        jsr     LF197                           ; C8A1 20 97 F1                  ..
        jmp     LE8B1                           ; C8A4 4C B1 E8                 L..

; ----------------------------------------------------------------------------
        lda     #$00                            ; C8A7 A9 00                    ..
        sta     Enemy_SprAttrib,x               ; C8A9 9D C5 03                 ...
        jsr     LF1F4                           ; C8AC 20 F4 F1                  ..
        jsr     LF197                           ; C8AF 20 97 F1                  ..
        jsr     LE8B1                           ; C8B2 20 B1 E8                  ..
        jsr     LE256                           ; C8B5 20 56 E2                  V.
        jsr     LDFCC                           ; C8B8 20 CC DF                  ..
        jsr     LDA19                           ; C8BB 20 19 DA                  ..
        jsr     LD832                           ; C8BE 20 32 D8                  2.
        ldy     TimerControl                    ; C8C1 AC 47 07                 .G.
        bne     LC8C9                           ; C8C4 D0 03                    ..
        jsr     LC8CC                           ; C8C6 20 CC C8                  ..
LC8C9:
        jmp     LD648                           ; C8C9 4C 48 D6                 LH.

; ----------------------------------------------------------------------------
LC8CC:
        lda     Enemy_ID,x                      ; C8CC B5 16                    ..
        jsr     L8F69                           ; C8CE 20 69 8F                  i.
        .byte   $3E,$CA,$3E,$CA,$3E,$CA,$3E,$CA ; C8D1 3E CA 3E CA 3E CA 3E CA  >.>.>.>.
        .byte   $3E,$CA,$9F,$C9,$3E,$CA,$50,$CB ; C8D9 3E CA 9F C9 3E CA 50 CB  >...>.P.
        .byte   $FD,$CB,$FB,$C8,$11,$CC,$11,$CC ; C8E1 FD CB FB C8 11 CC 11 CC  ........
        .byte   $77,$C9,$77,$D3,$C0,$CA,$C6,$CA ; C8E9 77 C9 77 D3 C0 CA C6 CA  w.w.....
        .byte   $EC,$CA,$EF,$CE,$3E,$CA,$77,$D3 ; C8F1 EC CA EF CE 3E CA 77 D3  ....>.w.
        .byte   $A6,$CE,$60,$20,$B2,$D1,$20,$F4 ; C8F9 A6 CE 60 20 B2 D1 20 F4  ..` .. .
        .byte   $F1,$20,$97,$F1,$20,$56,$E2,$20 ; C901 F1 20 97 F1 20 56 E2 20  . .. V. 
        .byte   $32,$D8,$4C,$48,$D6             ; C909 32 D8 4C 48 D6           2.LH.
; ----------------------------------------------------------------------------
        jsr     LCD03                           ; C90E 20 03 CD                  ..
        jmp     LD648                           ; C911 4C 48 D6                 LH.

; ----------------------------------------------------------------------------
        .byte   $20,$F4,$F1,$20,$97,$F1,$20,$5F ; C914 20 F4 F1 20 97 F1 20 5F   .. .. _
        .byte   $E2,$20,$61,$DB,$20,$97,$F1,$20 ; C91C E2 20 61 DB 20 97 F1 20  . a. .. 
        .byte   $AB,$ED,$20,$23,$D6,$4C,$48,$D6 ; C924 AB ED 20 23 D6 4C 48 D6  .. #.LH.
; ----------------------------------------------------------------------------
        jsr     LF1F4                           ; C92C 20 F4 F1                  ..
        jsr     LF197                           ; C92F 20 97 F1                  ..
        jsr     LE286                           ; C932 20 86 E2                  ..
        jsr     LDB2B                           ; C935 20 2B DB                  +.
        lda     TimerControl                    ; C938 AD 47 07                 .G.
        bne     LC940                           ; C93B D0 03                    ..
        jsr     LC949                           ; C93D 20 49 C9                  I.
LC940:
        jsr     LF197                           ; C940 20 97 F1                  ..
        jsr     LE5E1                           ; C943 20 E1 E5                  ..
        jmp     LD648                           ; C946 4C 48 D6                 LH.

; ----------------------------------------------------------------------------
LC949:
        lda     Enemy_ID,x                      ; C949 B5 16                    ..
        sec                                     ; C94B 38                       8
        sbc     #$24                            ; C94C E9 24                    .$
        jsr     L8F69                           ; C94E 20 69 8F                  i.
        .byte   $01,$D4,$A1,$D5,$1D,$D6,$1D,$D6 ; C951 01 D4 A1 D5 1D D6 1D D6  ........
        .byte   $D5,$D5,$FF,$D5,$0B,$D6         ; C959 D5 D5 FF D5 0B D6        ......
; ----------------------------------------------------------------------------
LC95F:
        lda     #$00                            ; C95F A9 00                    ..
        sta     Enemy_Flag,x                    ; C961 95 0F                    ..
        sta     Enemy_ID,x                      ; C963 95 16                    ..
        sta     Enemy_State,x                   ; C965 95 1E                    ..
        sta     FloateyNum_Control,x            ; C967 9D 10 01                 ...
        sta     EnemyIntervalTimer,x            ; C96A 9D 96 07                 ...
        sta     ShellChainCounter,x             ; C96D 9D 25 01                 .%.
        sta     Enemy_SprAttrib,x               ; C970 9D C5 03                 ...
        sta     EnemyFrameTimer,x               ; C973 9D 8A 07                 ...
        rts                                     ; C976 60                       `

; ----------------------------------------------------------------------------
        .byte   $BD,$96,$07,$D0,$16,$20,$B0,$C2 ; C977 BD 96 07 D0 16 20 B0 C2  ..... ..
        .byte   $BD,$A8,$07,$09,$80,$9D,$34,$04 ; C97F BD A8 07 09 80 9D 34 04  ......4.
        .byte   $29,$0F,$09,$06,$9D,$96,$07,$A9 ; C987 29 0F 09 06 9D 96 07 A9  ).......
        .byte   $F9,$95,$A0,$4C,$7F,$B0,$30,$1C ; C98F F9 95 A0 4C 7F B0 30 1C  ...L..0.
LC997:
        .byte   $00,$E8,$00,$18,$08,$F8,$0C,$F4 ; C997 00 E8 00 18 08 F8 0C F4  ........
        .byte   $B5,$1E,$29,$20,$F0,$03,$4C,$AC ; C99F B5 1E 29 20 F0 03 4C AC  ..) ..L.
        .byte   $CA,$B5,$3C,$F0,$2D,$D6,$3C,$AD ; C9A7 CA B5 3C F0 2D D6 3C AD  ..<.-.<.
        .byte   $D1,$03,$29,$0C,$D0,$6A,$BD,$A2 ; C9AF D1 03 29 0C D0 6A BD A2  ..)..j..
        .byte   $03,$D0,$17,$AC,$CC,$06,$B9,$95 ; C9B7 03 D0 17 AC CC 06 B9 95  ........
        .byte   $C9,$9D,$A2,$03,$20,$70,$AB,$90 ; C9BF C9 9D A2 03 20 70 AB 90  .... p..
        .byte   $09,$B5,$1E,$09,$08,$95,$1E,$4C ; C9C7 09 B5 1E 09 08 95 1E 4C  .......L
        .byte   $1F,$CA,$DE,$A2,$03,$4C,$1F,$CA ; C9CF 1F CA DE A2 03 4C 1F CA  .....L..
        .byte   $20,$37,$B5,$1E,$29,$07,$C9,$01 ; C9D7 20 37 B5 1E 29 07 C9 01   7..)...
        .byte   $F0,$3E,$A9,$00,$85,$00,$A0,$FA ; C9DF F0 3E A9 00 85 00 A0 FA  .>......
        .byte   $B5,$CF,$30,$13,$A0,$FD,$C9,$70 ; C9E7 B5 CF 30 13 A0 FD C9 70  ..0....p
        .byte   $E6,$00,$90,$0B,$C6,$00,$BD,$A8 ; C9EF E6 00 90 0B C6 00 BD A8  ........
        .byte   $07,$29,$01,$D0,$02,$A0,$FA,$94 ; C9F7 07 29 01 D0 02 A0 FA 94  .)......
        .byte   $A0,$B5,$1E,$09,$01,$95,$1E,$A5 ; C9FF A0 B5 1E 09 01 95 1E A5  ........
        .byte   $00,$3D,$A9,$07,$A8,$AD,$CC,$06 ; CA07 00 3D A9 07 A8 AD CC 06  .=......
        .byte   $D0,$01,$A8,$B9,$D7,$C9,$9D,$8A ; CA0F D0 01 A8 B9 D7 C9 9D 8A  ........
        .byte   $07,$BD,$A8,$07,$09,$C0,$95,$3C ; CA17 07 BD A8 07 09 C0 95 3C  .......<
        .byte   $A0,$FC,$A5,$09,$29,$40,$D0,$02 ; CA1F A0 FC A5 09 29 40 D0 02  ....)@..
        .byte   $A0,$04,$94,$58,$A0,$01,$20,$4E ; CA27 A0 04 94 58 A0 01 20 4E  ...X.. N
        .byte   $E1,$30,$0A,$C8,$BD,$96,$07,$D0 ; CA2F E1 30 0A C8 BD 96 07 D0  .0......
        .byte   $04,$A9,$F8,$95,$58,$94,$46     ; CA37 04 A9 F8 95 58 94 46     ....X.F
; ----------------------------------------------------------------------------
LCA3E:
        ldy     #$00                            ; CA3E A0 00                    ..
        lda     Enemy_State,x                   ; CA40 B5 1E                    ..
        and     #$40                            ; CA42 29 40                    )@
        bne     LCA5F                           ; CA44 D0 19                    ..
        lda     Enemy_State,x                   ; CA46 B5 1E                    ..
        asl     a                               ; CA48 0A                       .
        bcs     LCA7B                           ; CA49 B0 30                    .0
        lda     Enemy_State,x                   ; CA4B B5 1E                    ..
        and     #$20                            ; CA4D 29 20                    ) 
        bne     LCAAC                           ; CA4F D0 5B                    .[
        lda     Enemy_State,x                   ; CA51 B5 1E                    ..
        and     #$07                            ; CA53 29 07                    ).
        beq     LCA7B                           ; CA55 F0 24                    .$
        cmp     #$05                            ; CA57 C9 05                    ..
        beq     LCA5F                           ; CA59 F0 04                    ..
        cmp     #$03                            ; CA5B C9 03                    ..
        bcs     LCA8F                           ; CA5D B0 30                    .0
LCA5F:
        jsr     LB050                           ; CA5F 20 50 B0                  P.
        ldy     #$00                            ; CA62 A0 00                    ..
        lda     Enemy_State,x                   ; CA64 B5 1E                    ..
        cmp     #$02                            ; CA66 C9 02                    ..
        beq     LCA76                           ; CA68 F0 0C                    ..
        and     #$40                            ; CA6A 29 40                    )@
        beq     LCA7B                           ; CA6C F0 0D                    ..
        lda     Enemy_ID,x                      ; CA6E B5 16                    ..
        cmp     #$2E                            ; CA70 C9 2E                    ..
        beq     LCA7B                           ; CA72 F0 07                    ..
        bne     LCA79                           ; CA74 D0 03                    ..
LCA76:
        jmp     LAFEF                           ; CA76 4C EF AF                 L..

; ----------------------------------------------------------------------------
LCA79:
        ldy     #$01                            ; CA79 A0 01                    ..
LCA7B:
        lda     Enemy_X_Speed,x                 ; CA7B B5 58                    .X
        pha                                     ; CA7D 48                       H
        bpl     LCA82                           ; CA7E 10 02                    ..
        iny                                     ; CA80 C8                       .
        iny                                     ; CA81 C8                       .
LCA82:
        clc                                     ; CA82 18                       .
        adc     LC997,y                         ; CA83 79 97 C9                 y..
        sta     Enemy_X_Speed,x                 ; CA86 95 58                    .X
        jsr     LAFEF                           ; CA88 20 EF AF                  ..
        pla                                     ; CA8B 68                       h
        sta     Enemy_X_Speed,x                 ; CA8C 95 58                    .X
        rts                                     ; CA8E 60                       `

; ----------------------------------------------------------------------------
LCA8F:
        lda     EnemyIntervalTimer,x            ; CA8F BD 96 07                 ...
        bne     LCAB2                           ; CA92 D0 1E                    ..
        .byte   $95,$1E,$A5,$09,$29,$01,$A8,$C8 ; CA94 95 1E A5 09 29 01 A8 C8  ....)...
        .byte   $94,$46,$88,$AD,$6A,$07,$F0,$02 ; CA9C 94 46 88 AD 6A 07 F0 02  .F..j...
        .byte   $C8,$C8,$B9,$9B,$C9,$95,$58,$60 ; CAA4 C8 C8 B9 9B C9 95 58 60  ......X`
; ----------------------------------------------------------------------------
LCAAC:
        jsr     LB050                           ; CAAC 20 50 B0                  P.
        jmp     LAFEF                           ; CAAF 4C EF AF                 L..

; ----------------------------------------------------------------------------
LCAB2:
        cmp     #$0E                            ; CAB2 C9 0E                    ..
        bne     LCABF                           ; CAB4 D0 09                    ..
        lda     Enemy_ID,x                      ; CAB6 B5 16                    ..
        cmp     #$06                            ; CAB8 C9 06                    ..
        bne     LCABF                           ; CABA D0 03                    ..
        jsr     LC95F                           ; CABC 20 5F C9                  _.
LCABF:
        rts                                     ; CABF 60                       `

; ----------------------------------------------------------------------------
LCAC0:
        jsr     LB07F                           ; CAC0 20 7F B0                  ..
        jmp     LAFEF                           ; CAC3 4C EF AF                 L..

; ----------------------------------------------------------------------------
        lda     Enemy_Y_Speed,x                 ; CAC6 B5 A0                    ..
        ora     Enemy_Y_MoveForce,x             ; CAC8 1D 34 04                 .4.
        bne     LCAE0                           ; CACB D0 13                    ..
        sta     Enemy_YMF_Dummy,x               ; CACD 9D 17 04                 ...
        lda     Enemy_Y_Position,x              ; CAD0 B5 CF                    ..
        cmp     Enemy_X_MoveForce,x             ; CAD2 DD 01 04                 ...
        bcs     LCAE0                           ; CAD5 B0 09                    ..
        lda     FrameCounter                    ; CAD7 A5 09                    ..
        and     #$07                            ; CAD9 29 07                    ).
        bne     LCADF                           ; CADB D0 02                    ..
        inc     Enemy_Y_Position,x              ; CADD F6 CF                    ..
LCADF:
        rts                                     ; CADF 60                       `

; ----------------------------------------------------------------------------
LCAE0:
        lda     Enemy_Y_Position,x              ; CAE0 B5 CF                    ..
        cmp     Enemy_X_Speed,x                 ; CAE2 D5 58                    .X
        bcc     LCAE9                           ; CAE4 90 03                    ..
        jmp     LB062                           ; CAE6 4C 62 B0                 Lb.

; ----------------------------------------------------------------------------
LCAE9:
        jmp     LB05D                           ; CAE9 4C 5D B0                 L].

; ----------------------------------------------------------------------------
        .byte   $20,$0C,$CB,$20,$2D,$CB,$A0,$01 ; CAEC 20 0C CB 20 2D CB A0 01   .. -...
        .byte   $A5,$09,$29,$03,$D0,$11,$A5,$09 ; CAF4 A5 09 29 03 D0 11 A5 09  ..).....
        .byte   $29,$40,$D0,$02,$A0,$FF,$84,$00 ; CAFC 29 40 D0 02 A0 FF 84 00  )@......
        .byte   $B5,$CF,$18,$65,$00,$95,$CF,$60 ; CB04 B5 CF 18 65 00 95 CF 60  ...e...`
        .byte   $A9,$13                         ; CB0C A9 13                    ..
; ----------------------------------------------------------------------------
LCB0E:
        sta     $01                             ; CB0E 85 01                    ..
        lda     FrameCounter                    ; CB10 A5 09                    ..
        and     #$03                            ; CB12 29 03                    ).
        bne     LCB23                           ; CB14 D0 0D                    ..
        ldy     Enemy_X_Speed,x                 ; CB16 B4 58                    .X
        lda     Enemy_Y_Speed,x                 ; CB18 B5 A0                    ..
        lsr     a                               ; CB1A 4A                       J
        bcs     LCB27                           ; CB1B B0 0A                    ..
        cpy     $01                             ; CB1D C4 01                    ..
        beq     LCB24                           ; CB1F F0 03                    ..
        inc     Enemy_X_Speed,x                 ; CB21 F6 58                    .X
LCB23:
        rts                                     ; CB23 60                       `

; ----------------------------------------------------------------------------
LCB24:
        inc     Enemy_Y_Speed,x                 ; CB24 F6 A0                    ..
        rts                                     ; CB26 60                       `

; ----------------------------------------------------------------------------
LCB27:
        tya                                     ; CB27 98                       .
        beq     LCB24                           ; CB28 F0 FA                    ..
        dec     Enemy_X_Speed,x                 ; CB2A D6 58                    .X
        rts                                     ; CB2C 60                       `

; ----------------------------------------------------------------------------
LCB2D:
        lda     Enemy_X_Speed,x                 ; CB2D B5 58                    .X
        pha                                     ; CB2F 48                       H
        ldy     #$01                            ; CB30 A0 01                    ..
        lda     Enemy_Y_Speed,x                 ; CB32 B5 A0                    ..
        and     #$02                            ; CB34 29 02                    ).
        bne     LCB43                           ; CB36 D0 0B                    ..
        lda     Enemy_X_Speed,x                 ; CB38 B5 58                    .X
        eor     #$FF                            ; CB3A 49 FF                    I.
        clc                                     ; CB3C 18                       .
        adc     #$01                            ; CB3D 69 01                    i.
        sta     Enemy_X_Speed,x                 ; CB3F 95 58                    .X
        ldy     #$02                            ; CB41 A0 02                    ..
LCB43:
        sty     Enemy_MovingDir,x               ; CB43 94 46                    .F
        jsr     LAFEF                           ; CB45 20 EF AF                  ..
        sta     $00                             ; CB48 85 00                    ..
        pla                                     ; CB4A 68                       h
        sta     Enemy_X_Speed,x                 ; CB4B 95 58                    .X
        rts                                     ; CB4D 60                       `

; ----------------------------------------------------------------------------
LCB4E:
        .byte   $3F,$03                         ; CB4E 3F 03                    ?.
; ----------------------------------------------------------------------------
        lda     Enemy_State,x                   ; CB50 B5 1E                    ..
        and     #$20                            ; CB52 29 20                    ) 
        bne     LCBA3                           ; CB54 D0 4D                    .M
        ldy     SecondaryHardMode               ; CB56 AC CC 06                 ...
        lda     $07A8,x                         ; CB59 BD A8 07                 ...
        and     LCB4E,y                         ; CB5C 39 4E CB                 9N.
        bne     LCB73                           ; CB5F D0 12                    ..
        txa                                     ; CB61 8A                       .
        lsr     a                               ; CB62 4A                       J
        bcc     LCB69                           ; CB63 90 04                    ..
        ldy     Player_MovingDir                ; CB65 A4 45                    .E
        bcs     LCB71                           ; CB67 B0 08                    ..
LCB69:
        ldy     #$02                            ; CB69 A0 02                    ..
        jsr     LE14E                           ; CB6B 20 4E E1                  N.
        bpl     LCB71                           ; CB6E 10 01                    ..
        dey                                     ; CB70 88                       .
LCB71:
        sty     Enemy_MovingDir,x               ; CB71 94 46                    .F
LCB73:
        jsr     LCBA6                           ; CB73 20 A6 CB                  ..
        lda     Enemy_Y_Position,x              ; CB76 B5 CF                    ..
        sec                                     ; CB78 38                       8
        sbc     Enemy_Y_MoveForce,x             ; CB79 FD 34 04                 .4.
        cmp     #$30                            ; CB7C C9 30                    .0
        bcc     LCB82                           ; CB7E 90 02                    ..
        sta     Enemy_Y_Position,x              ; CB80 95 CF                    ..
LCB82:
        ldy     Enemy_MovingDir,x               ; CB82 B4 46                    .F
        dey                                     ; CB84 88                       .
        bne     LCB95                           ; CB85 D0 0E                    ..
        lda     Enemy_X_Position,x              ; CB87 B5 87                    ..
        clc                                     ; CB89 18                       .
        adc     Enemy_X_Speed,x                 ; CB8A 75 58                    uX
        sta     Enemy_X_Position,x              ; CB8C 95 87                    ..
        lda     Enemy_PageLoc,x                 ; CB8E B5 6E                    .n
        adc     #$00                            ; CB90 69 00                    i.
        sta     Enemy_PageLoc,x                 ; CB92 95 6E                    .n
        rts                                     ; CB94 60                       `

; ----------------------------------------------------------------------------
LCB95:
        lda     Enemy_X_Position,x              ; CB95 B5 87                    ..
        sec                                     ; CB97 38                       8
        sbc     Enemy_X_Speed,x                 ; CB98 F5 58                    .X
        sta     Enemy_X_Position,x              ; CB9A 95 87                    ..
        lda     Enemy_PageLoc,x                 ; CB9C B5 6E                    .n
        sbc     #$00                            ; CB9E E9 00                    ..
        sta     Enemy_PageLoc,x                 ; CBA0 95 6E                    .n
        rts                                     ; CBA2 60                       `

; ----------------------------------------------------------------------------
LCBA3:
        jmp     LB079                           ; CBA3 4C 79 B0                 Ly.

; ----------------------------------------------------------------------------
LCBA6:
        lda     Enemy_Y_Speed,x                 ; CBA6 B5 A0                    ..
        and     #$02                            ; CBA8 29 02                    ).
        bne     LCBE3                           ; CBAA D0 37                    .7
        lda     FrameCounter                    ; CBAC A5 09                    ..
        and     #$07                            ; CBAE 29 07                    ).
        pha                                     ; CBB0 48                       H
        lda     Enemy_Y_Speed,x                 ; CBB1 B5 A0                    ..
        lsr     a                               ; CBB3 4A                       J
        bcs     LCBCB                           ; CBB4 B0 15                    ..
        pla                                     ; CBB6 68                       h
        bne     LCBCA                           ; CBB7 D0 11                    ..
        lda     Enemy_Y_MoveForce,x             ; CBB9 BD 34 04                 .4.
        clc                                     ; CBBC 18                       .
        adc     #$01                            ; CBBD 69 01                    i.
        sta     Enemy_Y_MoveForce,x             ; CBBF 9D 34 04                 .4.
        sta     Enemy_X_Speed,x                 ; CBC2 95 58                    .X
        cmp     #$02                            ; CBC4 C9 02                    ..
        bne     LCBCA                           ; CBC6 D0 02                    ..
        inc     Enemy_Y_Speed,x                 ; CBC8 F6 A0                    ..
LCBCA:
        rts                                     ; CBCA 60                       `

; ----------------------------------------------------------------------------
LCBCB:
        pla                                     ; CBCB 68                       h
        bne     LCBE2                           ; CBCC D0 14                    ..
        lda     Enemy_Y_MoveForce,x             ; CBCE BD 34 04                 .4.
        sec                                     ; CBD1 38                       8
        sbc     #$01                            ; CBD2 E9 01                    ..
        sta     Enemy_Y_MoveForce,x             ; CBD4 9D 34 04                 .4.
        sta     Enemy_X_Speed,x                 ; CBD7 95 58                    .X
        bne     LCBE2                           ; CBD9 D0 07                    ..
        inc     Enemy_Y_Speed,x                 ; CBDB F6 A0                    ..
        lda     #$02                            ; CBDD A9 02                    ..
        sta     EnemyIntervalTimer,x            ; CBDF 9D 96 07                 ...
LCBE2:
        rts                                     ; CBE2 60                       `

; ----------------------------------------------------------------------------
LCBE3:
        lda     EnemyIntervalTimer,x            ; CBE3 BD 96 07                 ...
        beq     LCBF0                           ; CBE6 F0 08                    ..
LCBE8:
        lda     FrameCounter                    ; CBE8 A5 09                    ..
        lsr     a                               ; CBEA 4A                       J
        bcs     LCBEF                           ; CBEB B0 02                    ..
        inc     Enemy_Y_Position,x              ; CBED F6 CF                    ..
LCBEF:
        rts                                     ; CBEF 60                       `

; ----------------------------------------------------------------------------
LCBF0:
        lda     Enemy_Y_Position,x              ; CBF0 B5 CF                    ..
        adc     #$10                            ; CBF2 69 10                    i.
        cmp     SprObject_Y_Position            ; CBF4 C5 CE                    ..
        bcc     LCBE8                           ; CBF6 90 F0                    ..
        lda     #$00                            ; CBF8 A9 00                    ..
        sta     Enemy_Y_Speed,x                 ; CBFA 95 A0                    ..
        rts                                     ; CBFC 60                       `

; ----------------------------------------------------------------------------
        .byte   $B5,$1E,$29,$20,$F0,$03,$4C,$7F ; CBFD B5 1E 29 20 F0 03 4C 7F  ..) ..L.
        .byte   $B0,$A9,$E8,$95,$58,$4C,$EF,$AF ; CC05 B0 A9 E8 95 58 4C EF AF  ....XL..
LCC0D:
        .byte   $40,$80,$04,$04                 ; CC0D 40 80 04 04              @...
; ----------------------------------------------------------------------------
        lda     Enemy_State,x                   ; CC11 B5 1E                    ..
        and     #$20                            ; CC13 29 20                    ) 
        beq     LCC1A                           ; CC15 F0 03                    ..
        .byte   $4C,$79,$B0                     ; CC17 4C 79 B0                 Ly.
; ----------------------------------------------------------------------------
LCC1A:
        sta     $03                             ; CC1A 85 03                    ..
        lda     Enemy_ID,x                      ; CC1C B5 16                    ..
        sec                                     ; CC1E 38                       8
        sbc     #$0A                            ; CC1F E9 0A                    ..
        tay                                     ; CC21 A8                       .
        lda     LCC0D,y                         ; CC22 B9 0D CC                 ...
        sta     $02                             ; CC25 85 02                    ..
        lda     Enemy_X_MoveForce,x             ; CC27 BD 01 04                 ...
        sec                                     ; CC2A 38                       8
        sbc     $02                             ; CC2B E5 02                    ..
        sta     Enemy_X_MoveForce,x             ; CC2D 9D 01 04                 ...
        lda     Enemy_X_Position,x              ; CC30 B5 87                    ..
        sbc     #$00                            ; CC32 E9 00                    ..
        sta     Enemy_X_Position,x              ; CC34 95 87                    ..
        lda     Enemy_PageLoc,x                 ; CC36 B5 6E                    .n
        sbc     #$00                            ; CC38 E9 00                    ..
        sta     Enemy_PageLoc,x                 ; CC3A 95 6E                    .n
        lda     #$20                            ; CC3C A9 20                    . 
        sta     $02                             ; CC3E 85 02                    ..
        cpx     #$02                            ; CC40 E0 02                    ..
        bcc     LCC8D                           ; CC42 90 49                    .I
        lda     Enemy_X_Speed,x                 ; CC44 B5 58                    .X
        cmp     #$10                            ; CC46 C9 10                    ..
        bcc     LCC60                           ; CC48 90 16                    ..
        lda     Enemy_YMF_Dummy,x               ; CC4A BD 17 04                 ...
        clc                                     ; CC4D 18                       .
        adc     $02                             ; CC4E 65 02                    e.
        sta     Enemy_YMF_Dummy,x               ; CC50 9D 17 04                 ...
        lda     Enemy_Y_Position,x              ; CC53 B5 CF                    ..
        adc     $03                             ; CC55 65 03                    e.
        sta     Enemy_Y_Position,x              ; CC57 95 CF                    ..
        lda     Enemy_Y_HighPos,x               ; CC59 B5 B6                    ..
        adc     #$00                            ; CC5B 69 00                    i.
        jmp     LCC73                           ; CC5D 4C 73 CC                 Ls.

; ----------------------------------------------------------------------------
LCC60:
        lda     Enemy_YMF_Dummy,x               ; CC60 BD 17 04                 ...
        sec                                     ; CC63 38                       8
        sbc     $02                             ; CC64 E5 02                    ..
        sta     Enemy_YMF_Dummy,x               ; CC66 9D 17 04                 ...
        lda     Enemy_Y_Position,x              ; CC69 B5 CF                    ..
        sbc     $03                             ; CC6B E5 03                    ..
        sta     Enemy_Y_Position,x              ; CC6D 95 CF                    ..
        lda     Enemy_Y_HighPos,x               ; CC6F B5 B6                    ..
        sbc     #$00                            ; CC71 E9 00                    ..
LCC73:
        sta     Enemy_Y_HighPos,x               ; CC73 95 B6                    ..
        ldy     #$00                            ; CC75 A0 00                    ..
        lda     Enemy_Y_Position,x              ; CC77 B5 CF                    ..
        sec                                     ; CC79 38                       8
        sbc     Enemy_Y_MoveForce,x             ; CC7A FD 34 04                 .4.
        bpl     LCC86                           ; CC7D 10 07                    ..
        ldy     #$10                            ; CC7F A0 10                    ..
        eor     #$FF                            ; CC81 49 FF                    I.
        clc                                     ; CC83 18                       .
        adc     #$01                            ; CC84 69 01                    i.
LCC86:
        cmp     #$0F                            ; CC86 C9 0F                    ..
        bcc     LCC8D                           ; CC88 90 03                    ..
        tya                                     ; CC8A 98                       .
        sta     Enemy_X_Speed,x                 ; CC8B 95 58                    .X
LCC8D:
        rts                                     ; CC8D 60                       `

; ----------------------------------------------------------------------------
LCC8E:
        .byte   $00,$01,$03,$04,$05,$06,$07,$07 ; CC8E 00 01 03 04 05 06 07 07  ........
        .byte   $08,$00,$03,$06,$09,$0B,$0D,$0E ; CC96 08 00 03 06 09 0B 0D 0E  ........
        .byte   $0F,$10,$00,$04,$09,$0D,$10,$13 ; CC9E 0F 10 00 04 09 0D 10 13  ........
        .byte   $16,$17,$18,$00,$06,$0C,$12,$16 ; CCA6 16 17 18 00 06 0C 12 16  ........
        .byte   $1A,$1D,$1F,$20,$00,$07,$0F,$16 ; CCAE 1A 1D 1F 20 00 07 0F 16  ... ....
        .byte   $1C,$21,$25,$27,$28,$00,$09,$12 ; CCB6 1C 21 25 27 28 00 09 12  .!%'(...
        .byte   $1B,$21,$27,$2C,$2F,$30,$00,$0B ; CCBE 1B 21 27 2C 2F 30 00 0B  .!',/0..
        .byte   $15,$1F,$27,$2E,$33,$37,$38,$00 ; CCC6 15 1F 27 2E 33 37 38 00  ..'.378.
        .byte   $0C,$18,$24,$2D,$35,$3B,$3E,$40 ; CCCE 0C 18 24 2D 35 3B 3E 40  ..$-5;>@
        .byte   $00,$0E,$1B,$28,$32,$3B,$42,$46 ; CCD6 00 0E 1B 28 32 3B 42 46  ...(2;BF
        .byte   $48,$00,$0F,$1F,$2D,$38,$42,$4A ; CCDE 48 00 0F 1F 2D 38 42 4A  H...-8BJ
        .byte   $4E,$50,$00,$11,$22,$31,$3E,$49 ; CCE6 4E 50 00 11 22 31 3E 49  NP.."1>I
        .byte   $51,$56,$58                     ; CCEE 51 56 58                 QVX
LCCF1:
        .byte   $01,$03,$02,$00                 ; CCF1 01 03 02 00              ....
LCCF5:
        .byte   $00,$09,$12,$1B,$24,$2D,$36,$3F ; CCF5 00 09 12 1B 24 2D 36 3F  ....$-6?
        .byte   $48,$51,$5A,$63                 ; CCFD 48 51 5A 63              HQZc
LCD01:
        .byte   $0C,$18                         ; CD01 0C 18                    ..
; ----------------------------------------------------------------------------
LCD03:
        jsr     LF1F4                           ; CD03 20 F4 F1                  ..
        lda     Enemy_OffscreenBits             ; CD06 AD D1 03                 ...
        and     #$08                            ; CD09 29 08                    ).
        bne     LCD81                           ; CD0B D0 74                    .t
        lda     TimerControl                    ; CD0D AD 47 07                 .G.
        bne     LCD1C                           ; CD10 D0 0A                    ..
        lda     FirebarSpinSpeed,x              ; CD12 BD 88 03                 ...
        jsr     LD3DF                           ; CD15 20 DF D3                  ..
        and     #$1F                            ; CD18 29 1F                    ).
        sta     Enemy_Y_Speed,x                 ; CD1A 95 A0                    ..
LCD1C:
        lda     Enemy_Y_Speed,x                 ; CD1C B5 A0                    ..
        ldy     Enemy_ID,x                      ; CD1E B4 16                    ..
        cpy     #$1F                            ; CD20 C0 1F                    ..
        bcc     LCD31                           ; CD22 90 0D                    ..
        .byte   $C9,$08,$F0,$04,$C9,$18,$D0,$05 ; CD24 C9 08 F0 04 C9 18 D0 05  ........
        .byte   $18,$69,$01,$95,$A0             ; CD2C 18 69 01 95 A0           .i...
; ----------------------------------------------------------------------------
LCD31:
        sta     $EF                             ; CD31 85 EF                    ..
        jsr     LF197                           ; CD33 20 97 F1                  ..
        jsr     LCE55                           ; CD36 20 55 CE                  U.
        ldy     Enemy_SprDataOffset,x           ; CD39 BC E5 06                 ...
        lda     Enemy_Rel_YPos                  ; CD3C AD B9 03                 ...
        sta     Sprite_Y_Position,y             ; CD3F 99 00 02                 ...
        sta     $07                             ; CD42 85 07                    ..
        lda     Enemy_Rel_XPos                  ; CD44 AD AE 03                 ...
        sta     Sprite_X_Position,y             ; CD47 99 03 02                 ...
        sta     $06                             ; CD4A 85 06                    ..
        lda     #$01                            ; CD4C A9 01                    ..
        sta     $00                             ; CD4E 85 00                    ..
        jsr     LCDCF                           ; CD50 20 CF CD                  ..
        ldy     #$05                            ; CD53 A0 05                    ..
        lda     Enemy_ID,x                      ; CD55 B5 16                    ..
        cmp     #$1F                            ; CD57 C9 1F                    ..
        bcc     LCD5D                           ; CD59 90 02                    ..
        .byte   $A0,$0B                         ; CD5B A0 0B                    ..
; ----------------------------------------------------------------------------
LCD5D:
        sty     $ED                             ; CD5D 84 ED                    ..
        lda     #$00                            ; CD5F A9 00                    ..
        sta     $00                             ; CD61 85 00                    ..
LCD63:
        lda     $EF                             ; CD63 A5 EF                    ..
        jsr     LCE55                           ; CD65 20 55 CE                  U.
        jsr     LCD82                           ; CD68 20 82 CD                  ..
        lda     $00                             ; CD6B A5 00                    ..
        cmp     #$04                            ; CD6D C9 04                    ..
        bne     LCD79                           ; CD6F D0 08                    ..
        ldy     DuplicateObj_Offset             ; CD71 AC CF 06                 ...
        lda     Enemy_SprDataOffset,y           ; CD74 B9 E5 06                 ...
        sta     $06                             ; CD77 85 06                    ..
LCD79:
        inc     $00                             ; CD79 E6 00                    ..
        lda     $00                             ; CD7B A5 00                    ..
        cmp     $ED                             ; CD7D C5 ED                    ..
        bcc     LCD63                           ; CD7F 90 E2                    ..
LCD81:
        rts                                     ; CD81 60                       `

; ----------------------------------------------------------------------------
LCD82:
        lda     $03                             ; CD82 A5 03                    ..
        sta     $05                             ; CD84 85 05                    ..
        ldy     $06                             ; CD86 A4 06                    ..
        lda     $01                             ; CD88 A5 01                    ..
        lsr     $05                             ; CD8A 46 05                    F.
        bcs     LCD92                           ; CD8C B0 04                    ..
        eor     #$FF                            ; CD8E 49 FF                    I.
        adc     #$01                            ; CD90 69 01                    i.
LCD92:
        clc                                     ; CD92 18                       .
        adc     Enemy_Rel_XPos                  ; CD93 6D AE 03                 m..
        sta     Sprite_X_Position,y             ; CD96 99 03 02                 ...
        sta     $06                             ; CD99 85 06                    ..
        cmp     Enemy_Rel_XPos                  ; CD9B CD AE 03                 ...
        bcs     LCDA9                           ; CD9E B0 09                    ..
        lda     Enemy_Rel_XPos                  ; CDA0 AD AE 03                 ...
        sec                                     ; CDA3 38                       8
        sbc     $06                             ; CDA4 E5 06                    ..
        jmp     LCDAD                           ; CDA6 4C AD CD                 L..

; ----------------------------------------------------------------------------
LCDA9:
        sec                                     ; CDA9 38                       8
        sbc     Enemy_Rel_XPos                  ; CDAA ED AE 03                 ...
LCDAD:
        cmp     #$59                            ; CDAD C9 59                    .Y
        bcc     LCDB5                           ; CDAF 90 04                    ..
        lda     #$F8                            ; CDB1 A9 F8                    ..
        bne     LCDCA                           ; CDB3 D0 15                    ..
LCDB5:
        lda     Enemy_Rel_YPos                  ; CDB5 AD B9 03                 ...
        cmp     #$F8                            ; CDB8 C9 F8                    ..
        beq     LCDCA                           ; CDBA F0 0E                    ..
        lda     $02                             ; CDBC A5 02                    ..
        lsr     $05                             ; CDBE 46 05                    F.
        bcs     LCDC6                           ; CDC0 B0 04                    ..
        eor     #$FF                            ; CDC2 49 FF                    I.
        adc     #$01                            ; CDC4 69 01                    i.
LCDC6:
        clc                                     ; CDC6 18                       .
        adc     Enemy_Rel_YPos                  ; CDC7 6D B9 03                 m..
LCDCA:
        sta     Sprite_Y_Position,y             ; CDCA 99 00 02                 ...
        sta     $07                             ; CDCD 85 07                    ..
LCDCF:
        jsr     LED32                           ; CDCF 20 32 ED                  2.
        tya                                     ; CDD2 98                       .
        pha                                     ; CDD3 48                       H
        lda     StarInvincibleTimer             ; CDD4 AD 9F 07                 ...
        ora     TimerControl                    ; CDD7 0D 47 07                 .G.
        bne     LCE4C                           ; CDDA D0 70                    .p
        sta     $05                             ; CDDC 85 05                    ..
        ldy     SprObject_Y_HighPos             ; CDDE A4 B5                    ..
        dey                                     ; CDE0 88                       .
        bne     LCE4C                           ; CDE1 D0 69                    .i
        ldy     SprObject_Y_Position            ; CDE3 A4 CE                    ..
        lda     PlayerSize                      ; CDE5 AD 54 07                 .T.
        bne     LCDEF                           ; CDE8 D0 05                    ..
        lda     CrouchingFlag                   ; CDEA AD 14 07                 ...
        beq     LCDF8                           ; CDED F0 09                    ..
LCDEF:
        inc     $05                             ; CDEF E6 05                    ..
        inc     $05                             ; CDF1 E6 05                    ..
        tya                                     ; CDF3 98                       .
        clc                                     ; CDF4 18                       .
        adc     #$18                            ; CDF5 69 18                    i.
        tay                                     ; CDF7 A8                       .
LCDF8:
        tya                                     ; CDF8 98                       .
LCDF9:
        sec                                     ; CDF9 38                       8
        sbc     $07                             ; CDFA E5 07                    ..
        bpl     LCE03                           ; CDFC 10 05                    ..
        eor     #$FF                            ; CDFE 49 FF                    I.
        clc                                     ; CE00 18                       .
        adc     #$01                            ; CE01 69 01                    i.
LCE03:
        cmp     #$08                            ; CE03 C9 08                    ..
        bcs     LCE23                           ; CE05 B0 1C                    ..
        lda     $06                             ; CE07 A5 06                    ..
        cmp     #$F0                            ; CE09 C9 F0                    ..
        bcs     LCE23                           ; CE0B B0 16                    ..
        lda     $0207                           ; CE0D AD 07 02                 ...
        clc                                     ; CE10 18                       .
        adc     #$04                            ; CE11 69 04                    i.
        sta     $04                             ; CE13 85 04                    ..
        sec                                     ; CE15 38                       8
        sbc     $06                             ; CE16 E5 06                    ..
        bpl     LCE1F                           ; CE18 10 05                    ..
        eor     #$FF                            ; CE1A 49 FF                    I.
        clc                                     ; CE1C 18                       .
        adc     #$01                            ; CE1D 69 01                    i.
LCE1F:
        cmp     #$08                            ; CE1F C9 08                    ..
        bcc     LCE36                           ; CE21 90 13                    ..
LCE23:
        lda     $05                             ; CE23 A5 05                    ..
        cmp     #$02                            ; CE25 C9 02                    ..
        beq     LCE4C                           ; CE27 F0 23                    .#
        ldy     $05                             ; CE29 A4 05                    ..
        lda     SprObject_Y_Position            ; CE2B A5 CE                    ..
        clc                                     ; CE2D 18                       .
        adc     LCD01,y                         ; CE2E 79 01 CD                 y..
        inc     $05                             ; CE31 E6 05                    ..
        jmp     LCDF9                           ; CE33 4C F9 CD                 L..

; ----------------------------------------------------------------------------
LCE36:
        ldx     #$01                            ; CE36 A2 01                    ..
        lda     $04                             ; CE38 A5 04                    ..
        cmp     $06                             ; CE3A C5 06                    ..
        bcs     LCE3F                           ; CE3C B0 01                    ..
        inx                                     ; CE3E E8                       .
LCE3F:
        stx     Enemy_MovingDir                 ; CE3F 86 46                    .F
        ldx     #$00                            ; CE41 A2 00                    ..
        lda     $00                             ; CE43 A5 00                    ..
        pha                                     ; CE45 48                       H
        jsr     LD8DC                           ; CE46 20 DC D8                  ..
        pla                                     ; CE49 68                       h
        sta     $00                             ; CE4A 85 00                    ..
LCE4C:
        pla                                     ; CE4C 68                       h
        clc                                     ; CE4D 18                       .
        adc     #$04                            ; CE4E 69 04                    i.
        sta     $06                             ; CE50 85 06                    ..
        ldx     ObjectOffset                    ; CE52 A6 08                    ..
        rts                                     ; CE54 60                       `

; ----------------------------------------------------------------------------
LCE55:
        pha                                     ; CE55 48                       H
        and     #$0F                            ; CE56 29 0F                    ).
        cmp     #$09                            ; CE58 C9 09                    ..
        bcc     LCE61                           ; CE5A 90 05                    ..
        eor     #$0F                            ; CE5C 49 0F                    I.
        clc                                     ; CE5E 18                       .
        adc     #$01                            ; CE5F 69 01                    i.
LCE61:
        sta     $01                             ; CE61 85 01                    ..
        ldy     $00                             ; CE63 A4 00                    ..
        lda     LCCF5,y                         ; CE65 B9 F5 CC                 ...
        clc                                     ; CE68 18                       .
        adc     $01                             ; CE69 65 01                    e.
        tay                                     ; CE6B A8                       .
        lda     LCC8E,y                         ; CE6C B9 8E CC                 ...
        sta     $01                             ; CE6F 85 01                    ..
        pla                                     ; CE71 68                       h
        pha                                     ; CE72 48                       H
        clc                                     ; CE73 18                       .
        adc     #$08                            ; CE74 69 08                    i.
        and     #$0F                            ; CE76 29 0F                    ).
        cmp     #$09                            ; CE78 C9 09                    ..
        bcc     LCE81                           ; CE7A 90 05                    ..
        eor     #$0F                            ; CE7C 49 0F                    I.
        clc                                     ; CE7E 18                       .
        adc     #$01                            ; CE7F 69 01                    i.
LCE81:
        sta     $02                             ; CE81 85 02                    ..
        ldy     $00                             ; CE83 A4 00                    ..
        lda     LCCF5,y                         ; CE85 B9 F5 CC                 ...
        clc                                     ; CE88 18                       .
        adc     $02                             ; CE89 65 02                    e.
        tay                                     ; CE8B A8                       .
        lda     LCC8E,y                         ; CE8C B9 8E CC                 ...
        sta     $02                             ; CE8F 85 02                    ..
        pla                                     ; CE91 68                       h
        lsr     a                               ; CE92 4A                       J
        lsr     a                               ; CE93 4A                       J
        lsr     a                               ; CE94 4A                       J
        tay                                     ; CE95 A8                       .
        lda     LCCF1,y                         ; CE96 B9 F1 CC                 ...
        sta     $03                             ; CE99 85 03                    ..
        rts                                     ; CE9B 60                       `

; ----------------------------------------------------------------------------
        .byte   $F8,$A0,$70,$BD,$00,$20,$20,$20 ; CE9C F8 A0 70 BD 00 20 20 20  ..p..   
        .byte   $00,$00,$B5,$1E,$29,$20,$F0,$08 ; CEA4 00 00 B5 1E 29 20 F0 08  ....) ..
        .byte   $A9,$00,$9D,$C5,$03,$4C,$7F,$B0 ; CEAC A9 00 9D C5 03 4C 7F B0  .....L..
        .byte   $20,$EF,$AF,$A0,$0D,$A9,$05,$20 ; CEB4 20 EF AF A0 0D A9 05 20   ...... 
        .byte   $83,$B0,$BD,$34,$04,$4A,$4A,$4A ; CEBC 83 B0 BD 34 04 4A 4A 4A  ...4.JJJ
        .byte   $4A,$A8,$B5,$CF,$38,$F9,$9C,$CE ; CEC4 4A A8 B5 CF 38 F9 9C CE  J...8...
        .byte   $10,$05,$49,$FF,$18,$69,$01,$C9 ; CECC 10 05 49 FF 18 69 01 C9  ..I..i..
        .byte   $08,$B0,$0E,$BD,$34,$04,$18,$69 ; CED4 08 B0 0E BD 34 04 18 69  ....4..i
        .byte   $10,$9D,$34,$04,$4A,$4A,$4A,$4A ; CEDC 10 9D 34 04 4A 4A 4A 4A  ..4.JJJJ
        .byte   $A8,$B9,$A1,$CE,$9D,$C5,$03,$60 ; CEE4 A8 B9 A1 CE 9D C5 03 60  .......`
        .byte   $15,$30,$40,$B5,$1E,$29,$20,$F0 ; CEEC 15 30 40 B5 1E 29 20 F0  .0@..) .
        .byte   $03,$4C,$50,$B0,$B5,$1E,$F0,$0B ; CEF4 03 4C 50 B0 B5 1E F0 0B  .LP.....
        .byte   $A9,$00,$95,$A0,$8D,$CB,$06,$A9 ; CEFC A9 00 95 A0 8D CB 06 A9  ........
        .byte   $10,$D0,$13,$A9,$12,$8D,$CB,$06 ; CF04 10 D0 13 A9 12 8D CB 06  ........
        .byte   $A0,$02,$B9,$EC,$CE,$99,$01,$00 ; CF0C A0 02 B9 EC CE 99 01 00  ........
        .byte   $88,$10,$F7,$20,$33,$CF,$95,$58 ; CF14 88 10 F7 20 33 CF 95 58  ... 3..X
        .byte   $A0,$01,$B5,$A0,$29,$01,$D0,$0A ; CF1C A0 01 B5 A0 29 01 D0 0A  ....)...
        .byte   $B5,$58,$49,$FF,$18,$69,$01,$95 ; CF24 B5 58 49 FF 18 69 01 95  .XI..i..
        .byte   $58,$C8,$94,$46,$4C,$EF,$AF,$A0 ; CF2C 58 C8 94 46 4C EF AF A0  X..FL...
        .byte   $00,$20,$4E,$E1,$10,$0A,$C8,$A5 ; CF34 00 20 4E E1 10 0A C8 A5  . N.....
        .byte   $00,$49,$FF,$18,$69,$01,$85,$00 ; CF3C 00 49 FF 18 69 01 85 00  .I..i...
        .byte   $A5,$00,$C9,$3C,$90,$1C,$A9,$3C ; CF44 A5 00 C9 3C 90 1C A9 3C  ...<...<
        .byte   $85,$00,$B5,$16,$C9,$11,$D0,$12 ; CF4C 85 00 B5 16 C9 11 D0 12  ........
        .byte   $98,$D5,$A0,$F0,$0D,$B5,$A0,$F0 ; CF54 98 D5 A0 F0 0D B5 A0 F0  ........
        .byte   $06,$D6,$58,$B5,$58,$D0,$40,$98 ; CF5C 06 D6 58 B5 58 D0 40 98  ..X.X.@.
        .byte   $95,$A0,$A5,$00,$29,$3C,$4A,$4A ; CF64 95 A0 A5 00 29 3C 4A 4A  ....)<JJ
        .byte   $85,$00,$A0,$00,$A5,$57,$F0,$24 ; CF6C 85 00 A0 00 A5 57 F0 24  .....W.$
        .byte   $AD,$75,$07,$F0,$1F,$C8,$A5,$57 ; CF74 AD 75 07 F0 1F C8 A5 57  .u.....W
        .byte   $C9,$19,$90,$08,$AD,$75,$07,$C9 ; CF7C C9 19 90 08 AD 75 07 C9  .....u..
        .byte   $02,$90,$01,$C8,$B5,$16,$C9,$12 ; CF84 02 90 01 C8 B5 16 C9 12  ........
        .byte   $D0,$04,$A5,$57,$D0,$06,$B5,$A0 ; CF8C D0 04 A5 57 D0 06 B5 A0  ...W....
        .byte   $D0,$02,$A0,$00,$B9,$01,$00,$A4 ; CF94 D0 02 A0 00 B9 01 00 A4  ........
        .byte   $00,$38,$E9,$01,$88,$10,$FA,$60 ; CF9C 00 38 E9 01 88 10 FA 60  .8.....`
LCFA4:
        .byte   $1A,$58,$98,$96,$94,$92,$90,$8E ; CFA4 1A 58 98 96 94 92 90 8E  .X......
        .byte   $8C,$8A,$88,$86,$84,$82,$80     ; CFAC 8C 8A 88 86 84 82 80     .......
; ----------------------------------------------------------------------------
        ldx     BowserFront_Offset              ; CFB3 AE 68 03                 .h.
        lda     Enemy_ID,x                      ; CFB6 B5 16                    ..
        cmp     #$2D                            ; CFB8 C9 2D                    .-
        bne     LCFCC                           ; CFBA D0 10                    ..
        stx     ObjectOffset                    ; CFBC 86 08                    ..
        lda     Enemy_State,x                   ; CFBE B5 1E                    ..
        beq     LCFDC                           ; CFC0 F0 1A                    ..
        and     #$40                            ; CFC2 29 40                    )@
        beq     LCFCC                           ; CFC4 F0 06                    ..
        lda     Enemy_Y_Position,x              ; CFC6 B5 CF                    ..
        cmp     #$E0                            ; CFC8 C9 E0                    ..
        bcc     LCFD6                           ; CFCA 90 0A                    ..
LCFCC:
        lda     #$80                            ; CFCC A9 80                    ..
        sta     EventMusicQueue                 ; CFCE 85 FC                    ..
        inc     OperMode_Task                   ; CFD0 EE 72 07                 .r.
        jmp     LD038                           ; CFD3 4C 38 D0                 L8.

; ----------------------------------------------------------------------------
LCFD6:
        jsr     LB079                           ; CFD6 20 79 B0                  y.
        jmp     LD142                           ; CFD9 4C 42 D1                 LB.

; ----------------------------------------------------------------------------
LCFDC:
        dec     BowserFeetCounter               ; CFDC CE 64 03                 .d.
        bne     LD025                           ; CFDF D0 44                    .D
        lda     #$04                            ; CFE1 A9 04                    ..
        sta     BowserFeetCounter               ; CFE3 8D 64 03                 .d.
        lda     BowserBodyControls              ; CFE6 AD 63 03                 .c.
        eor     #$01                            ; CFE9 49 01                    I.
        sta     BowserBodyControls              ; CFEB 8D 63 03                 .c.
        lda     #$22                            ; CFEE A9 22                    ."
        sta     $05                             ; CFF0 85 05                    ..
        ldy     BridgeCollapseOffset            ; CFF2 AC 69 03                 .i.
        lda     LCFA4,y                         ; CFF5 B9 A4 CF                 ...
        sta     $04                             ; CFF8 85 04                    ..
        ldy     VRAM_Buffer1_Offset             ; CFFA AC 00 03                 ...
        iny                                     ; CFFD C8                       .
        ldx     #$0C                            ; CFFE A2 0C                    ..
        jsr     L8C04                           ; D000 20 04 8C                  ..
        ldx     ObjectOffset                    ; D003 A6 08                    ..
        jsr     L8BC6                           ; D005 20 C6 8B                  ..
        lda     #$08                            ; D008 A9 08                    ..
        sta     Square2SoundQueue               ; D00A 85 FE                    ..
        lda     #$01                            ; D00C A9 01                    ..
        sta     NoiseSoundQueue                 ; D00E 85 FD                    ..
        inc     BridgeCollapseOffset            ; D010 EE 69 03                 .i.
        lda     BridgeCollapseOffset            ; D013 AD 69 03                 .i.
        cmp     #$0F                            ; D016 C9 0F                    ..
        bne     LD025                           ; D018 D0 0B                    ..
        jsr     LC31C                           ; D01A 20 1C C3                  ..
        lda     #$40                            ; D01D A9 40                    .@
        sta     Enemy_State,x                   ; D01F 95 1E                    ..
        lda     #$80                            ; D021 A9 80                    ..
        sta     Square2SoundQueue               ; D023 85 FE                    ..
LD025:
        jmp     LD142                           ; D025 4C 42 D1                 LB.

; ----------------------------------------------------------------------------
LD028:
        .byte   $21,$41,$11,$31                 ; D028 21 41 11 31              !A.1
; ----------------------------------------------------------------------------
        lda     Enemy_State,x                   ; D02C B5 1E                    ..
        and     #$20                            ; D02E 29 20                    ) 
        beq     LD046                           ; D030 F0 14                    ..
        .byte   $B5,$CF,$C9,$E0,$90,$9E         ; D032 B5 CF C9 E0 90 9E        ......
; ----------------------------------------------------------------------------
LD038:
        ldx     #$04                            ; D038 A2 04                    ..
LD03A:
        jsr     LC95F                           ; D03A 20 5F C9                  _.
        dex                                     ; D03D CA                       .
        bpl     LD03A                           ; D03E 10 FA                    ..
        sta     EnemyFrenzyBuffer               ; D040 8D CB 06                 ...
        ldx     ObjectOffset                    ; D043 A6 08                    ..
        rts                                     ; D045 60                       `

; ----------------------------------------------------------------------------
LD046:
        lda     #$00                            ; D046 A9 00                    ..
        sta     EnemyFrenzyBuffer               ; D048 8D CB 06                 ...
        lda     TimerControl                    ; D04B AD 47 07                 .G.
        beq     LD053                           ; D04E F0 03                    ..
        jmp     LD100                           ; D050 4C 00 D1                 L..

; ----------------------------------------------------------------------------
LD053:
        lda     BowserBodyControls              ; D053 AD 63 03                 .c.
        bpl     LD05B                           ; D056 10 03                    ..
        .byte   $4C,$D6,$D0                     ; D058 4C D6 D0                 L..
; ----------------------------------------------------------------------------
LD05B:
        dec     BowserFeetCounter               ; D05B CE 64 03                 .d.
        bne     LD06D                           ; D05E D0 0D                    ..
        lda     #$20                            ; D060 A9 20                    . 
        sta     BowserFeetCounter               ; D062 8D 64 03                 .d.
        lda     BowserBodyControls              ; D065 AD 63 03                 .c.
        eor     #$01                            ; D068 49 01                    I.
        sta     BowserBodyControls              ; D06A 8D 63 03                 .c.
LD06D:
        lda     FrameCounter                    ; D06D A5 09                    ..
        and     #$0F                            ; D06F 29 0F                    ).
        bne     LD077                           ; D071 D0 04                    ..
        lda     #$02                            ; D073 A9 02                    ..
        sta     Enemy_MovingDir,x               ; D075 95 46                    .F
LD077:
        lda     EnemyFrameTimer,x               ; D077 BD 8A 07                 ...
        beq     LD098                           ; D07A F0 1C                    ..
        jsr     LE14E                           ; D07C 20 4E E1                  N.
        bpl     LD098                           ; D07F 10 17                    ..
        lda     #$01                            ; D081 A9 01                    ..
        sta     Enemy_MovingDir,x               ; D083 95 46                    .F
        lda     #$02                            ; D085 A9 02                    ..
        sta     BowserMovementSpeed             ; D087 8D 65 03                 .e.
        lda     #$20                            ; D08A A9 20                    . 
        sta     EnemyFrameTimer,x               ; D08C 9D 8A 07                 ...
        sta     BowserFireBreathTimer           ; D08F 8D 90 07                 ...
        lda     Enemy_X_Position,x              ; D092 B5 87                    ..
        cmp     #$C8                            ; D094 C9 C8                    ..
        bcs     LD0D6                           ; D096 B0 3E                    .>
LD098:
        lda     FrameCounter                    ; D098 A5 09                    ..
        and     #$03                            ; D09A 29 03                    ).
        bne     LD0D6                           ; D09C D0 38                    .8
        lda     Enemy_X_Position,x              ; D09E B5 87                    ..
        cmp     BowserOrigXPos                  ; D0A0 CD 66 03                 .f.
        bne     LD0B1                           ; D0A3 D0 0C                    ..
        lda     PseudoRandomBitReg,x            ; D0A5 BD A7 07                 ...
        and     #$03                            ; D0A8 29 03                    ).
        tay                                     ; D0AA A8                       .
        lda     LD028,y                         ; D0AB B9 28 D0                 .(.
        sta     MaxRangeFromOrigin              ; D0AE 8D DC 06                 ...
LD0B1:
        lda     Enemy_X_Position,x              ; D0B1 B5 87                    ..
        clc                                     ; D0B3 18                       .
        adc     BowserMovementSpeed             ; D0B4 6D 65 03                 me.
        sta     Enemy_X_Position,x              ; D0B7 95 87                    ..
        ldy     Enemy_MovingDir,x               ; D0B9 B4 46                    .F
        cpy     #$01                            ; D0BB C0 01                    ..
        beq     LD0D6                           ; D0BD F0 17                    ..
        ldy     #$FF                            ; D0BF A0 FF                    ..
        sec                                     ; D0C1 38                       8
        sbc     BowserOrigXPos                  ; D0C2 ED 66 03                 .f.
        bpl     LD0CE                           ; D0C5 10 07                    ..
        .byte   $49,$FF,$18,$69,$01,$A0,$01     ; D0C7 49 FF 18 69 01 A0 01     I..i...
; ----------------------------------------------------------------------------
LD0CE:
        cmp     MaxRangeFromOrigin              ; D0CE CD DC 06                 ...
        bcc     LD0D6                           ; D0D1 90 03                    ..
        sty     BowserMovementSpeed             ; D0D3 8C 65 03                 .e.
LD0D6:
        lda     EnemyFrameTimer,x               ; D0D6 BD 8A 07                 ...
        bne     LD103                           ; D0D9 D0 28                    .(
        jsr     LB079                           ; D0DB 20 79 B0                  y.
        lda     WorldNumber                     ; D0DE AD 5F 07                 ._.
        cmp     #$05                            ; D0E1 C9 05                    ..
        bcc     LD0EE                           ; D0E3 90 09                    ..
        .byte   $A5,$09,$29,$03,$D0,$03,$20,$70 ; D0E5 A5 09 29 03 D0 03 20 70  ..)... p
        .byte   $AB                             ; D0ED AB                       .
; ----------------------------------------------------------------------------
LD0EE:
        lda     Enemy_Y_Position,x              ; D0EE B5 CF                    ..
        cmp     #$80                            ; D0F0 C9 80                    ..
        bcc     LD110                           ; D0F2 90 1C                    ..
        lda     PseudoRandomBitReg,x            ; D0F4 BD A7 07                 ...
        and     #$03                            ; D0F7 29 03                    ).
        tay                                     ; D0F9 A8                       .
        lda     LD028,y                         ; D0FA B9 28 D0                 .(.
        sta     EnemyFrameTimer,x               ; D0FD 9D 8A 07                 ...
LD100:
        jmp     LD110                           ; D100 4C 10 D1                 L..

; ----------------------------------------------------------------------------
LD103:
        cmp     #$01                            ; D103 C9 01                    ..
        bne     LD110                           ; D105 D0 09                    ..
        dec     Enemy_Y_Position,x              ; D107 D6 CF                    ..
        jsr     LC31C                           ; D109 20 1C C3                  ..
        lda     #$FE                            ; D10C A9 FE                    ..
        sta     Enemy_Y_Speed,x                 ; D10E 95 A0                    ..
LD110:
        lda     WorldNumber                     ; D110 AD 5F 07                 ._.
        cmp     #$07                            ; D113 C9 07                    ..
        beq     LD11B                           ; D115 F0 04                    ..
        cmp     #$05                            ; D117 C9 05                    ..
        bcs     LD142                           ; D119 B0 27                    .'
LD11B:
        lda     BowserFireBreathTimer           ; D11B AD 90 07                 ...
        bne     LD142                           ; D11E D0 22                    ."
        .byte   $A9,$20,$8D,$90,$07,$AD,$63,$03 ; D120 A9 20 8D 90 07 AD 63 03  . ....c.
        .byte   $49,$80,$8D,$63,$03,$30,$E1,$20 ; D128 49 80 8D 63 03 30 E1 20  I..c.0. 
        .byte   $A0,$D1,$AC,$CC,$06,$F0,$03,$38 ; D130 A0 D1 AC CC 06 F0 03 38  .......8
        .byte   $E9,$10,$8D,$90,$07,$A9,$15,$8D ; D138 E9 10 8D 90 07 A9 15 8D  ........
        .byte   $CB,$06                         ; D140 CB 06                    ..
; ----------------------------------------------------------------------------
LD142:
        jsr     LD183                           ; D142 20 83 D1                  ..
        ldy     #$10                            ; D145 A0 10                    ..
        lda     Enemy_MovingDir,x               ; D147 B5 46                    .F
        lsr     a                               ; D149 4A                       J
        bcc     LD14E                           ; D14A 90 02                    ..
        ldy     #$F0                            ; D14C A0 F0                    ..
LD14E:
        tya                                     ; D14E 98                       .
        clc                                     ; D14F 18                       .
        adc     Enemy_X_Position,x              ; D150 75 87                    u.
        ldy     DuplicateObj_Offset             ; D152 AC CF 06                 ...
        sta     Enemy_X_Position,y              ; D155 99 87 00                 ...
        lda     Enemy_Y_Position,x              ; D158 B5 CF                    ..
        clc                                     ; D15A 18                       .
        adc     #$08                            ; D15B 69 08                    i.
        sta     Enemy_Y_Position,y              ; D15D 99 CF 00                 ...
        lda     Enemy_State,x                   ; D160 B5 1E                    ..
        sta     Enemy_State,y                   ; D162 99 1E 00                 ...
        lda     Enemy_MovingDir,x               ; D165 B5 46                    .F
        sta     Enemy_MovingDir,y               ; D167 99 46 00                 .F.
        lda     ObjectOffset                    ; D16A A5 08                    ..
        pha                                     ; D16C 48                       H
        ldx     DuplicateObj_Offset             ; D16D AE CF 06                 ...
        stx     ObjectOffset                    ; D170 86 08                    ..
        lda     #$2D                            ; D172 A9 2D                    .-
        sta     Enemy_ID,x                      ; D174 95 16                    ..
        jsr     LD183                           ; D176 20 83 D1                  ..
        pla                                     ; D179 68                       h
        sta     ObjectOffset                    ; D17A 85 08                    ..
        tax                                     ; D17C AA                       .
        lda     #$00                            ; D17D A9 00                    ..
        sta     BowserGfxFlag                   ; D17F 8D 6A 03                 .j.
LD182:
        rts                                     ; D182 60                       `

; ----------------------------------------------------------------------------
LD183:
        inc     BowserGfxFlag                   ; D183 EE 6A 03                 .j.
        jsr     LC89E                           ; D186 20 9E C8                  ..
        lda     Enemy_State,x                   ; D189 B5 1E                    ..
        bne     LD182                           ; D18B D0 F5                    ..
        lda     #$0A                            ; D18D A9 0A                    ..
        sta     Enemy_BoundBoxCtrl,x            ; D18F 9D 9A 04                 ...
        jsr     LE256                           ; D192 20 56 E2                  V.
        jmp     LD832                           ; D195 4C 32 D8                 L2.

; ----------------------------------------------------------------------------
        .byte   $BF,$40,$BF,$BF,$BF,$40,$40,$BF ; D198 BF 40 BF BF BF 40 40 BF  .@...@@.
        .byte   $AC,$67,$03,$EE,$67,$03,$AD,$67 ; D1A0 AC 67 03 EE 67 03 AD 67  .g..g..g
        .byte   $03,$29,$07,$8D,$67,$03,$B9,$98 ; D1A8 03 29 07 8D 67 03 B9 98  .)..g...
        .byte   $D1,$60,$AD,$47,$07,$D0,$30,$A9 ; D1B0 D1 60 AD 47 07 D0 30 A9  .`.G..0.
        .byte   $40,$AC,$CC,$06,$F0,$02,$A9,$60 ; D1B8 40 AC CC 06 F0 02 A9 60  @......`
        .byte   $85,$00,$BD,$01,$04,$38,$E5,$00 ; D1C0 85 00 BD 01 04 38 E5 00  .....8..
        .byte   $9D,$01,$04,$B5,$87,$E9,$01,$95 ; D1C8 9D 01 04 B5 87 E9 01 95  ........
        .byte   $87,$B5,$6E,$E9,$00,$95,$6E,$BC ; D1D0 87 B5 6E E9 00 95 6E BC  ..n...n.
        .byte   $17,$04,$B5,$CF,$D9,$60,$C5,$F0 ; D1D8 17 04 B5 CF D9 60 C5 F0  .....`..
        .byte   $06,$18,$7D,$34,$04,$95,$CF,$20 ; D1E0 06 18 7D 34 04 95 CF 20  ..}4... 
        .byte   $97,$F1,$B5,$1E,$D0,$C3,$A9,$51 ; D1E8 97 F1 B5 1E D0 C3 A9 51  .......Q
        .byte   $85,$00,$A0,$02,$A5,$09,$29,$02 ; D1F0 85 00 A0 02 A5 09 29 02  ......).
        .byte   $F0,$02,$A0,$82,$84,$01,$BC,$E5 ; D1F8 F0 02 A0 82 84 01 BC E5  ........
        .byte   $06,$A2,$00,$AD,$B9,$03,$99,$00 ; D200 06 A2 00 AD B9 03 99 00  ........
        .byte   $02,$A5,$00,$99,$01,$02,$E6,$00 ; D208 02 A5 00 99 01 02 E6 00  ........
        .byte   $A5,$01,$99,$02,$02,$AD,$AE,$03 ; D210 A5 01 99 02 02 AD AE 03  ........
        .byte   $99,$03,$02,$18,$69,$08,$8D,$AE ; D218 99 03 02 18 69 08 8D AE  ....i...
        .byte   $03,$C8,$C8,$C8,$C8,$E8,$E0,$03 ; D220 03 C8 C8 C8 C8 E8 E0 03  ........
        .byte   $90,$D9,$A6,$08,$20,$F4,$F1,$BC ; D228 90 D9 A6 08 20 F4 F1 BC  .... ...
        .byte   $E5,$06,$AD,$D1,$03,$4A,$48,$90 ; D230 E5 06 AD D1 03 4A 48 90  .....JH.
        .byte   $05,$A9,$F8,$99,$0C,$02,$68,$4A ; D238 05 A9 F8 99 0C 02 68 4A  ......hJ
        .byte   $48,$90,$05,$A9,$F8,$99,$08,$02 ; D240 48 90 05 A9 F8 99 08 02  H.......
        .byte   $68,$4A,$48,$90,$05,$A9,$F8,$99 ; D248 68 4A 48 90 05 A9 F8 99  hJH.....
        .byte   $04,$02,$68,$4A,$90,$05,$A9,$F8 ; D250 04 02 68 4A 90 05 A9 F8  ..hJ....
        .byte   $99,$00,$02,$60                 ; D258 99 00 02 60              ...`
; ----------------------------------------------------------------------------
        dec     Enemy_Y_Speed,x                 ; D25C D6 A0                    ..
        bne     LD26C                           ; D25E D0 0C                    ..
        lda     #$08                            ; D260 A9 08                    ..
        sta     Enemy_Y_Speed,x                 ; D262 95 A0                    ..
        inc     Enemy_X_Speed,x                 ; D264 F6 58                    .X
        lda     Enemy_X_Speed,x                 ; D266 B5 58                    .X
        cmp     #$03                            ; D268 C9 03                    ..
        bcs     LD284                           ; D26A B0 18                    ..
LD26C:
        jsr     LF197                           ; D26C 20 97 F1                  ..
        lda     Enemy_Rel_YPos                  ; D26F AD B9 03                 ...
        sta     Fireball_Rel_YPos               ; D272 8D BA 03                 ...
        lda     Enemy_Rel_XPos                  ; D275 AD AE 03                 ...
        sta     Fireball_Rel_XPos               ; D278 8D AF 03                 ...
        ldy     Enemy_SprDataOffset,x           ; D27B BC E5 06                 ...
        lda     Enemy_X_Speed,x                 ; D27E B5 58                    .X
        jsr     LED5C                           ; D280 20 5C ED                  \.
        rts                                     ; D283 60                       `

; ----------------------------------------------------------------------------
LD284:
        lda     #$00                            ; D284 A9 00                    ..
        sta     Enemy_Flag,x                    ; D286 95 0F                    ..
        lda     #$08                            ; D288 A9 08                    ..
        sta     Square2SoundQueue               ; D28A 85 FE                    ..
        lda     #$05                            ; D28C A9 05                    ..
        sta     $0138                           ; D28E 8D 38 01                 .8.
        jmp     LD2FD                           ; D291 4C FD D2                 L..

; ----------------------------------------------------------------------------
LD294:
        .byte   $00,$00,$08,$08                 ; D294 00 00 08 08              ....
LD298:
        .byte   $00,$08,$00,$08                 ; D298 00 08 00 08              ....
LD29C:
        .byte   $54,$55,$56,$57                 ; D29C 54 55 56 57              TUVW
; ----------------------------------------------------------------------------
        lda     #$00                            ; D2A0 A9 00                    ..
        sta     EnemyFrenzyBuffer               ; D2A2 8D CB 06                 ...
        lda     StarFlagTaskControl             ; D2A5 AD 46 07                 .F.
        cmp     #$05                            ; D2A8 C9 05                    ..
        bcs     LD2D8                           ; D2AA B0 2C                    .,
        jsr     L8F69                           ; D2AC 20 69 8F                  i.
        .byte   $D8,$D2,$B9,$D2,$D9,$D2,$15,$D3 ; D2AF D8 D2 B9 D2 D9 D2 15 D3  ........
        .byte   $69,$D3                         ; D2B7 69 D3                    i.
; ----------------------------------------------------------------------------
        ldy     #$05                            ; D2B9 A0 05                    ..
        lda     $07FA                           ; D2BB AD FA 07                 ...
        cmp     #$01                            ; D2BE C9 01                    ..
        beq     LD2D0                           ; D2C0 F0 0E                    ..
        ldy     #$03                            ; D2C2 A0 03                    ..
        cmp     #$03                            ; D2C4 C9 03                    ..
        beq     LD2D0                           ; D2C6 F0 08                    ..
        ldy     #$00                            ; D2C8 A0 00                    ..
        cmp     #$06                            ; D2CA C9 06                    ..
        beq     LD2D0                           ; D2CC F0 02                    ..
        lda     #$FF                            ; D2CE A9 FF                    ..
LD2D0:
        sta     FireworksCounter                ; D2D0 8D D7 06                 ...
        sty     Enemy_State,x                   ; D2D3 94 1E                    ..
LD2D5:
        inc     StarFlagTaskControl             ; D2D5 EE 46 07                 .F.
LD2D8:
        rts                                     ; D2D8 60                       `

; ----------------------------------------------------------------------------
        lda     GameTimerDisplay                ; D2D9 AD F8 07                 ...
        ora     $07F9                           ; D2DC 0D F9 07                 ...
        ora     $07FA                           ; D2DF 0D FA 07                 ...
        beq     LD2D5                           ; D2E2 F0 F1                    ..
        lda     FrameCounter                    ; D2E4 A5 09                    ..
        and     #$04                            ; D2E6 29 04                    ).
        beq     LD2EE                           ; D2E8 F0 04                    ..
        lda     #$10                            ; D2EA A9 10                    ..
        sta     Square2SoundQueue               ; D2EC 85 FE                    ..
LD2EE:
        ldy     #$23                            ; D2EE A0 23                    .#
        lda     #$FF                            ; D2F0 A9 FF                    ..
        sta     $0139                           ; D2F2 8D 39 01                 .9.
        jsr     L90C4                           ; D2F5 20 C4 90                  ..
        lda     #$05                            ; D2F8 A9 05                    ..
        sta     $0139                           ; D2FA 8D 39 01                 .9.
LD2FD:
        ldy     #$0B                            ; D2FD A0 0B                    ..
        lda     CurrentPlayer                   ; D2FF AD 53 07                 .S.
        beq     LD306                           ; D302 F0 02                    ..
        .byte   $A0,$11                         ; D304 A0 11                    ..
; ----------------------------------------------------------------------------
LD306:
        jsr     L90C4                           ; D306 20 C4 90                  ..
        lda     CurrentPlayer                   ; D309 AD 53 07                 .S.
        asl     a                               ; D30C 0A                       .
        asl     a                               ; D30D 0A                       .
        asl     a                               ; D30E 0A                       .
        asl     a                               ; D30F 0A                       .
        ora     #$04                            ; D310 09 04                    ..
        jmp     LAD12                           ; D312 4C 12 AD                 L..

; ----------------------------------------------------------------------------
        lda     Enemy_Y_Position,x              ; D315 B5 CF                    ..
        cmp     #$72                            ; D317 C9 72                    .r
        bcc     LD320                           ; D319 90 05                    ..
        dec     Enemy_Y_Position,x              ; D31B D6 CF                    ..
        jmp     LD32C                           ; D31D 4C 2C D3                 L,.

; ----------------------------------------------------------------------------
LD320:
        lda     FireworksCounter                ; D320 AD D7 06                 ...
        beq     LD35D                           ; D323 F0 38                    .8
        bmi     LD35D                           ; D325 30 36                    06
        lda     #$16                            ; D327 A9 16                    ..
        sta     EnemyFrenzyBuffer               ; D329 8D CB 06                 ...
LD32C:
        jsr     LF197                           ; D32C 20 97 F1                  ..
        ldy     Enemy_SprDataOffset,x           ; D32F BC E5 06                 ...
        ldx     #$03                            ; D332 A2 03                    ..
LD334:
        lda     Enemy_Rel_YPos                  ; D334 AD B9 03                 ...
        clc                                     ; D337 18                       .
        adc     LD294,x                         ; D338 7D 94 D2                 }..
        sta     Sprite_Y_Position,y             ; D33B 99 00 02                 ...
        lda     LD29C,x                         ; D33E BD 9C D2                 ...
        sta     Sprite_Tilenumber,y             ; D341 99 01 02                 ...
        lda     #$22                            ; D344 A9 22                    ."
        sta     Sprite_Attributes,y             ; D346 99 02 02                 ...
        lda     Enemy_Rel_XPos                  ; D349 AD AE 03                 ...
        clc                                     ; D34C 18                       .
        adc     LD298,x                         ; D34D 7D 98 D2                 }..
        sta     Sprite_X_Position,y             ; D350 99 03 02                 ...
        iny                                     ; D353 C8                       .
        iny                                     ; D354 C8                       .
        iny                                     ; D355 C8                       .
        iny                                     ; D356 C8                       .
        dex                                     ; D357 CA                       .
        bpl     LD334                           ; D358 10 DA                    ..
        ldx     ObjectOffset                    ; D35A A6 08                    ..
        rts                                     ; D35C 60                       `

; ----------------------------------------------------------------------------
LD35D:
        jsr     LD32C                           ; D35D 20 2C D3                  ,.
        lda     #$06                            ; D360 A9 06                    ..
        sta     EnemyIntervalTimer,x            ; D362 9D 96 07                 ...
LD365:
        inc     StarFlagTaskControl             ; D365 EE 46 07                 .F.
        rts                                     ; D368 60                       `

; ----------------------------------------------------------------------------
        jsr     LD32C                           ; D369 20 2C D3                  ,.
        lda     EnemyIntervalTimer,x            ; D36C BD 96 07                 ...
        bne     LD376                           ; D36F D0 05                    ..
        lda     EventMusicBuffer                ; D371 AD B1 07                 ...
        beq     LD365                           ; D374 F0 EF                    ..
LD376:
        rts                                     ; D376 60                       `

; ----------------------------------------------------------------------------
        lda     Enemy_State,x                   ; D377 B5 1E                    ..
        bne     LD3DE                           ; D379 D0 63                    .c
        lda     EnemyFrameTimer,x               ; D37B BD 8A 07                 ...
        bne     LD3DE                           ; D37E D0 5E                    .^
        lda     Enemy_Y_Speed,x                 ; D380 B5 A0                    ..
        bne     LD3B4                           ; D382 D0 30                    .0
        lda     Enemy_ID,x                      ; D384 B5 16                    ..
        cmp     #$13                            ; D386 C9 13                    ..
        bne     LD391                           ; D388 D0 07                    ..
        .byte   $B5,$58,$10,$1B,$4C,$95,$D3     ; D38A B5 58 10 1B 4C 95 D3     .X..L..
; ----------------------------------------------------------------------------
LD391:
        lda     Enemy_X_Speed,x                 ; D391 B5 58                    .X
        bmi     LD3A9                           ; D393 30 14                    0.
        jsr     LE14E                           ; D395 20 4E E1                  N.
        bpl     LD3A3                           ; D398 10 09                    ..
        lda     $00                             ; D39A A5 00                    ..
        eor     #$FF                            ; D39C 49 FF                    I.
        clc                                     ; D39E 18                       .
        adc     #$01                            ; D39F 69 01                    i.
        sta     $00                             ; D3A1 85 00                    ..
LD3A3:
        lda     $00                             ; D3A3 A5 00                    ..
        cmp     #$21                            ; D3A5 C9 21                    .!
        bcc     LD3DE                           ; D3A7 90 35                    .5
LD3A9:
        lda     Enemy_X_Speed,x                 ; D3A9 B5 58                    .X
        eor     #$FF                            ; D3AB 49 FF                    I.
        clc                                     ; D3AD 18                       .
        adc     #$01                            ; D3AE 69 01                    i.
        sta     Enemy_X_Speed,x                 ; D3B0 95 58                    .X
        inc     Enemy_Y_Speed,x                 ; D3B2 F6 A0                    ..
LD3B4:
        lda     Enemy_Y_MoveForce,x             ; D3B4 BD 34 04                 .4.
        ldy     Enemy_X_Speed,x                 ; D3B7 B4 58                    .X
        bpl     LD3BE                           ; D3B9 10 03                    ..
        lda     Enemy_YMF_Dummy,x               ; D3BB BD 17 04                 ...
LD3BE:
        sta     $00                             ; D3BE 85 00                    ..
        lda     FrameCounter                    ; D3C0 A5 09                    ..
        lsr     a                               ; D3C2 4A                       J
        bcc     LD3DE                           ; D3C3 90 19                    ..
        lda     TimerControl                    ; D3C5 AD 47 07                 .G.
        bne     LD3DE                           ; D3C8 D0 14                    ..
        lda     Enemy_Y_Position,x              ; D3CA B5 CF                    ..
        clc                                     ; D3CC 18                       .
        adc     Enemy_X_Speed,x                 ; D3CD 75 58                    uX
        sta     Enemy_Y_Position,x              ; D3CF 95 CF                    ..
        cmp     $00                             ; D3D1 C5 00                    ..
        bne     LD3DE                           ; D3D3 D0 09                    ..
        lda     #$00                            ; D3D5 A9 00                    ..
        sta     Enemy_Y_Speed,x                 ; D3D7 95 A0                    ..
        lda     #$40                            ; D3D9 A9 40                    .@
        sta     EnemyFrameTimer,x               ; D3DB 9D 8A 07                 ...
LD3DE:
        rts                                     ; D3DE 60                       `

; ----------------------------------------------------------------------------
LD3DF:
        sta     $07                             ; D3DF 85 07                    ..
        lda     DestinationPageLoc,x            ; D3E1 B5 34                    .4
        bne     LD3F3                           ; D3E3 D0 0E                    ..
        ldy     #$18                            ; D3E5 A0 18                    ..
        lda     Enemy_X_Speed,x                 ; D3E7 B5 58                    .X
        clc                                     ; D3E9 18                       .
        adc     $07                             ; D3EA 65 07                    e.
        sta     Enemy_X_Speed,x                 ; D3EC 95 58                    .X
        lda     Enemy_Y_Speed,x                 ; D3EE B5 A0                    ..
        adc     #$00                            ; D3F0 69 00                    i.
        rts                                     ; D3F2 60                       `

; ----------------------------------------------------------------------------
LD3F3:
        .byte   $A0,$08,$B5,$58,$38,$E5,$07,$95 ; D3F3 A0 08 B5 58 38 E5 07 95  ...X8...
        .byte   $58,$B5,$A0,$E9,$00,$60,$B5,$B6 ; D3FB 58 B5 A0 E9 00 60 B5 B6  X....`..
        .byte   $C9,$03,$D0,$03,$4C,$5F,$C9,$B5 ; D403 C9 03 D0 03 4C 5F C9 B5  ....L_..
        .byte   $1E,$10,$01,$60,$A8,$BD,$A2,$03 ; D40B 1E 10 01 60 A8 BD A2 03  ...`....
        .byte   $85,$00,$B5,$46,$F0,$03,$4C,$89 ; D413 85 00 B5 46 F0 03 4C 89  ...F..L.
        .byte   $D5,$A9,$4D,$D5,$CF,$90,$0F,$C4 ; D41B D5 A9 4D D5 CF 90 0F C4  ..M.....
        .byte   $00,$F0,$08,$18,$69,$02,$95,$CF ; D423 00 F0 08 18 69 02 95 CF  ....i...
        .byte   $4C,$7F,$D5,$4C,$66,$D5,$D9,$CF ; D42B 4C 7F D5 4C 66 D5 D9 CF  L..Lf...
        .byte   $00,$90,$0D,$E4,$00,$F0,$F4,$18 ; D433 00 90 0D E4 00 F0 F4 18  ........
        .byte   $69,$02,$99,$CF,$00,$4C,$7F,$D5 ; D43B 69 02 99 CF 00 4C 7F D5  i....L..
        .byte   $B5,$CF,$48,$BD,$A2,$03,$10,$18 ; D443 B5 CF 48 BD A2 03 10 18  ..H.....
        .byte   $BD,$34,$04,$18,$69,$05,$85,$00 ; D44B BD 34 04 18 69 05 85 00  .4..i...
        .byte   $B5,$A0,$69,$00,$30,$1A,$D0,$0C ; D453 B5 A0 69 00 30 1A D0 0C  ..i.0...
        .byte   $A5,$00,$C9,$0B,$90,$0C,$B0,$04 ; D45B A5 00 C9 0B 90 0C B0 04  ........
        .byte   $C5,$08,$F0,$0C,$20,$A4,$B0,$4C ; D463 C5 08 F0 0C 20 A4 B0 4C  .... ..L
        .byte   $76,$D4,$20,$7F,$D5,$4C,$76,$D4 ; D46B 76 D4 20 7F D5 4C 76 D4  v. ..Lv.
        .byte   $20,$A1,$B0,$B4,$1E,$68,$38,$F5 ; D473 20 A1 B0 B4 1E 68 38 F5   ....h8.
        .byte   $CF,$18,$79,$CF,$00,$99,$CF,$00 ; D47B CF 18 79 CF 00 99 CF 00  ..y.....
        .byte   $BD,$A2,$03,$30,$04,$AA,$20,$07 ; D483 BD A2 03 30 04 AA 20 07  ...0.. .
        .byte   $DC,$A4,$08,$B9,$A0,$00,$19,$34 ; D48B DC A4 08 B9 A0 00 19 34  .......4
        .byte   $04,$F0,$77,$AE,$00,$03,$E0,$20 ; D493 04 F0 77 AE 00 03 E0 20  ..w.... 
        .byte   $B0,$70,$B9,$A0,$00,$48,$48,$20 ; D49B B0 70 B9 A0 00 48 48 20  .p...HH 
        .byte   $10,$D5,$A5,$01,$9D,$01,$03,$A5 ; D4A3 10 D5 A5 01 9D 01 03 A5  ........
        .byte   $00,$9D,$02,$03,$A9,$02,$9D,$03 ; D4AB 00 9D 02 03 A9 02 9D 03  ........
        .byte   $03,$B9,$A0,$00,$30,$0D,$A9,$A2 ; D4B3 03 B9 A0 00 30 0D A9 A2  ....0...
        .byte   $9D,$04,$03,$A9,$A3,$9D,$05,$03 ; D4BB 9D 04 03 A9 A3 9D 05 03  ........
        .byte   $4C,$CE,$D4,$A9,$24,$9D,$04,$03 ; D4C3 4C CE D4 A9 24 9D 04 03  L...$...
        .byte   $9D,$05,$03,$B9,$1E,$00,$A8,$68 ; D4CB 9D 05 03 B9 1E 00 A8 68  .......h
        .byte   $49,$FF,$20,$10,$D5,$A5,$01,$9D ; D4D3 49 FF 20 10 D5 A5 01 9D  I. .....
        .byte   $06,$03,$A5,$00,$9D,$07,$03,$A9 ; D4DB 06 03 A5 00 9D 07 03 A9  ........
        .byte   $02,$9D,$08,$03,$68,$10,$0D,$A9 ; D4E3 02 9D 08 03 68 10 0D A9  ....h...
        .byte   $A2,$9D,$09,$03,$A9,$A3,$9D,$0A ; D4EB A2 9D 09 03 A9 A3 9D 0A  ........
        .byte   $03,$4C,$FF,$D4,$A9,$24,$9D,$09 ; D4F3 03 4C FF D4 A9 24 9D 09  .L...$..
        .byte   $03,$9D,$0A,$03,$A9,$00,$9D,$0B ; D4FB 03 9D 0A 03 A9 00 9D 0B  ........
        .byte   $03,$AD,$00,$03,$18,$69,$0A,$8D ; D503 03 AD 00 03 18 69 0A 8D  .....i..
        .byte   $00,$03,$A6,$08,$60,$48,$B9,$87 ; D50B 00 03 A6 08 60 48 B9 87  ....`H..
        .byte   $00,$18,$69,$08,$A2,$00,$D0,$03 ; D513 00 18 69 08 A2 00 D0 03  ..i.....
        .byte   $18,$69,$10,$48,$B9,$6E,$00,$69 ; D51B 18 69 10 48 B9 6E 00 69  .i.H.n.i
        .byte   $00,$85,$02,$68,$29,$F0,$4A,$4A ; D523 00 85 02 68 29 F0 4A 4A  ...h).JJ
        .byte   $4A,$85,$00,$B6,$CF,$68,$10,$05 ; D52B 4A 85 00 B6 CF 68 10 05  J....h..
        .byte   $8A,$18,$69,$08,$AA,$8A,$AE,$00 ; D533 8A 18 69 08 AA 8A AE 00  ..i.....
        .byte   $03,$0A,$2A,$48,$2A,$29,$03,$09 ; D53B 03 0A 2A 48 2A 29 03 09  ..*H*)..
        .byte   $20,$85,$01,$A5,$02,$29,$01,$0A ; D543 20 85 01 A5 02 29 01 0A   ....)..
        .byte   $0A,$05,$01,$85,$01,$68,$29,$E0 ; D54B 0A 05 01 85 01 68 29 E0  .....h).
        .byte   $18,$65,$00,$85,$00,$B9,$CF,$00 ; D553 18 65 00 85 00 B9 CF 00  .e......
        .byte   $C9,$E8,$90,$06,$A5,$00,$29,$BF ; D55B C9 E8 90 06 A5 00 29 BF  ......).
        .byte   $85,$00,$60,$98,$AA,$20,$F4,$F1 ; D563 85 00 60 98 AA 20 F4 F1  ..`.. ..
        .byte   $A9,$06,$20,$F7,$D9,$AD,$AD,$03 ; D56B A9 06 20 F7 D9 AD AD 03  .. .....
        .byte   $9D,$17,$01,$A5,$CE,$9D,$1E,$01 ; D573 9D 17 01 A5 CE 9D 1E 01  ........
        .byte   $A9,$01,$95,$46,$20,$1C,$C3,$99 ; D57B A9 01 95 46 20 1C C3 99  ...F ...
        .byte   $A0,$00,$99,$34,$04,$60,$98,$48 ; D583 A0 00 99 34 04 60 98 48  ...4.`.H
        .byte   $20,$58,$B0,$68,$AA,$20,$58,$B0 ; D58B 20 58 B0 68 AA 20 58 B0   X.h. X.
        .byte   $A6,$08,$BD,$A2,$03,$30,$04,$AA ; D593 A6 08 BD A2 03 30 04 AA  .....0..
        .byte   $20,$07,$DC,$A6,$08,$60,$B5,$A0 ; D59B 20 07 DC A6 08 60 B5 A0   ....`..
        .byte   $1D,$34,$04,$D0,$15,$9D,$17,$04 ; D5A3 1D 34 04 D0 15 9D 17 04  .4......
        .byte   $B5,$CF,$DD,$01,$04,$B0,$0B,$A5 ; D5AB B5 CF DD 01 04 B0 0B A5  ........
        .byte   $09,$29,$07,$D0,$02,$F6,$CF,$4C ; D5B3 09 29 07 D0 02 F6 CF 4C  .).....L
        .byte   $CC,$D5,$B5,$CF,$D5,$58,$90,$06 ; D5BB CC D5 B5 CF D5 58 90 06  .....X..
        .byte   $20,$A4,$B0,$4C,$CC,$D5,$20,$A1 ; D5C3 20 A4 B0 4C CC D5 20 A1   ..L.. .
        .byte   $B0                             ; D5CB B0                       .
; ----------------------------------------------------------------------------
LD5CC:
        lda     HammerThrowingTimer,x           ; D5CC BD A2 03                 ...
        bmi     LD5D4                           ; D5CF 30 03                    0.
        jsr     LDC07                           ; D5D1 20 07 DC                  ..
LD5D4:
        rts                                     ; D5D4 60                       `

; ----------------------------------------------------------------------------
        lda     #$0E                            ; D5D5 A9 0E                    ..
        jsr     LCB0E                           ; D5D7 20 0E CB                  ..
        jsr     LCB2D                           ; D5DA 20 2D CB                  -.
        lda     HammerThrowingTimer,x           ; D5DD BD A2 03                 ...
        bmi     LD5FE                           ; D5E0 30 1C                    0.
        lda     SprObject_X_Position            ; D5E2 A5 86                    ..
        clc                                     ; D5E4 18                       .
        adc     $00                             ; D5E5 65 00                    e.
        sta     SprObject_X_Position            ; D5E7 85 86                    ..
        lda     SprObject_PageLoc               ; D5E9 A5 6D                    .m
        ldy     $00                             ; D5EB A4 00                    ..
        bmi     LD5F4                           ; D5ED 30 05                    0.
        adc     #$00                            ; D5EF 69 00                    i.
        jmp     LD5F6                           ; D5F1 4C F6 D5                 L..

; ----------------------------------------------------------------------------
LD5F4:
        sbc     #$00                            ; D5F4 E9 00                    ..
LD5F6:
        sta     SprObject_PageLoc               ; D5F6 85 6D                    .m
        sty     Platform_X_Scroll               ; D5F8 8C A1 03                 ...
        jsr     LDC07                           ; D5FB 20 07 DC                  ..
LD5FE:
        rts                                     ; D5FE 60                       `

; ----------------------------------------------------------------------------
        lda     HammerThrowingTimer,x           ; D5FF BD A2 03                 ...
        bmi     LD60A                           ; D602 30 06                    0.
        jsr     LB075                           ; D604 20 75 B0                  u.
        jsr     LDC07                           ; D607 20 07 DC                  ..
LD60A:
        rts                                     ; D60A 60                       `

; ----------------------------------------------------------------------------
        .byte   $20,$EF,$AF,$85,$00,$BD,$A2,$03 ; D60B 20 EF AF 85 00 BD A2 03   .......
        .byte   $30,$07,$A9,$10,$95,$58,$20,$E2 ; D613 30 07 A9 10 95 58 20 E2  0....X .
        .byte   $D5,$60                         ; D61B D5 60                    .`
; ----------------------------------------------------------------------------
        jsr     LD629                           ; D61D 20 29 D6                  ).
        jmp     LD5CC                           ; D620 4C CC D5                 L..

; ----------------------------------------------------------------------------
        .byte   $20,$29,$D6,$4C,$3F,$D6         ; D623 20 29 D6 4C 3F D6         ).L?.
; ----------------------------------------------------------------------------
LD629:
        lda     TimerControl                    ; D629 AD 47 07                 .G.
        bne     LD647                           ; D62C D0 19                    ..
        lda     Enemy_YMF_Dummy,x               ; D62E BD 17 04                 ...
        clc                                     ; D631 18                       .
        adc     Enemy_Y_MoveForce,x             ; D632 7D 34 04                 }4.
        sta     Enemy_YMF_Dummy,x               ; D635 9D 17 04                 ...
        lda     Enemy_Y_Position,x              ; D638 B5 CF                    ..
        adc     Enemy_Y_Speed,x                 ; D63A 75 A0                    u.
        sta     Enemy_Y_Position,x              ; D63C 95 CF                    ..
        rts                                     ; D63E 60                       `

; ----------------------------------------------------------------------------
        .byte   $BD,$A2,$03,$F0,$03,$20,$FF,$DB ; D63F BD A2 03 F0 03 20 FF DB  ..... ..
LD647:
        .byte   $60                             ; D647 60                       `
; ----------------------------------------------------------------------------
LD648:
        lda     Enemy_ID,x                      ; D648 B5 16                    ..
        cmp     #$14                            ; D64A C9 14                    ..
        beq     LD6A3                           ; D64C F0 55                    .U
        lda     ScreenEdge_X_Pos                ; D64E AD 1C 07                 ...
        ldy     Enemy_ID,x                      ; D651 B4 16                    ..
        cpy     #$05                            ; D653 C0 05                    ..
        beq     LD65B                           ; D655 F0 04                    ..
        cpy     #$0D                            ; D657 C0 0D                    ..
        bne     LD65D                           ; D659 D0 02                    ..
LD65B:
        adc     #$38                            ; D65B 69 38                    i8
LD65D:
        sbc     #$48                            ; D65D E9 48                    .H
        sta     $01                             ; D65F 85 01                    ..
        lda     ScreenEdge_PageLoc              ; D661 AD 1A 07                 ...
        sbc     #$00                            ; D664 E9 00                    ..
        sta     $00                             ; D666 85 00                    ..
        lda     ScreenRight_X_Pos               ; D668 AD 1D 07                 ...
        adc     #$48                            ; D66B 69 48                    iH
        sta     $03                             ; D66D 85 03                    ..
        lda     ScreenRight_PageLoc             ; D66F AD 1B 07                 ...
        adc     #$00                            ; D672 69 00                    i.
        sta     $02                             ; D674 85 02                    ..
        lda     Enemy_X_Position,x              ; D676 B5 87                    ..
        cmp     $01                             ; D678 C5 01                    ..
        lda     Enemy_PageLoc,x                 ; D67A B5 6E                    .n
        sbc     $00                             ; D67C E5 00                    ..
        bmi     LD6A0                           ; D67E 30 20                    0 
        lda     Enemy_X_Position,x              ; D680 B5 87                    ..
        cmp     $03                             ; D682 C5 03                    ..
        lda     Enemy_PageLoc,x                 ; D684 B5 6E                    .n
        sbc     $02                             ; D686 E5 02                    ..
        bmi     LD6A3                           ; D688 30 19                    0.
        lda     Enemy_State,x                   ; D68A B5 1E                    ..
        cmp     #$05                            ; D68C C9 05                    ..
        beq     LD6A3                           ; D68E F0 13                    ..
        cpy     #$0D                            ; D690 C0 0D                    ..
        beq     LD6A3                           ; D692 F0 0F                    ..
        cpy     #$30                            ; D694 C0 30                    .0
        beq     LD6A3                           ; D696 F0 0B                    ..
        cpy     #$31                            ; D698 C0 31                    .1
        beq     LD6A3                           ; D69A F0 07                    ..
        cpy     #$32                            ; D69C C0 32                    .2
        beq     LD6A3                           ; D69E F0 03                    ..
LD6A0:
        jsr     LC95F                           ; D6A0 20 5F C9                  _.
LD6A3:
        rts                                     ; D6A3 60                       `

; ----------------------------------------------------------------------------
        .byte   $FF,$FF,$FF                     ; D6A4 FF FF FF                 ...
; ----------------------------------------------------------------------------
LD6A7:
        lda     Fireball_State,x                ; D6A7 B5 24                    .$
        beq     LD701                           ; D6A9 F0 56                    .V
        asl     a                               ; D6AB 0A                       .
        bcs     LD701                           ; D6AC B0 53                    .S
        lda     FrameCounter                    ; D6AE A5 09                    ..
        lsr     a                               ; D6B0 4A                       J
        bcs     LD701                           ; D6B1 B0 4E                    .N
        txa                                     ; D6B3 8A                       .
        asl     a                               ; D6B4 0A                       .
        asl     a                               ; D6B5 0A                       .
        clc                                     ; D6B6 18                       .
        adc     #$1C                            ; D6B7 69 1C                    i.
        tay                                     ; D6B9 A8                       .
        ldx     #$04                            ; D6BA A2 04                    ..
LD6BC:
        stx     $01                             ; D6BC 86 01                    ..
        tya                                     ; D6BE 98                       .
        pha                                     ; D6BF 48                       H
        lda     Enemy_State,x                   ; D6C0 B5 1E                    ..
        and     #$20                            ; D6C2 29 20                    ) 
        bne     LD6FA                           ; D6C4 D0 34                    .4
        lda     Enemy_Flag,x                    ; D6C6 B5 0F                    ..
        beq     LD6FA                           ; D6C8 F0 30                    .0
        lda     Enemy_ID,x                      ; D6CA B5 16                    ..
        cmp     #$24                            ; D6CC C9 24                    .$
        bcc     LD6D4                           ; D6CE 90 04                    ..
        cmp     #$2B                            ; D6D0 C9 2B                    .+
        bcc     LD6FA                           ; D6D2 90 26                    .&
LD6D4:
        cmp     #$06                            ; D6D4 C9 06                    ..
        bne     LD6DE                           ; D6D6 D0 06                    ..
        lda     Enemy_State,x                   ; D6D8 B5 1E                    ..
        cmp     #$02                            ; D6DA C9 02                    ..
        bcs     LD6FA                           ; D6DC B0 1C                    ..
LD6DE:
        lda     EnemyOffscrBitsMasked,x         ; D6DE BD D8 03                 ...
        bne     LD6FA                           ; D6E1 D0 17                    ..
        txa                                     ; D6E3 8A                       .
        asl     a                               ; D6E4 0A                       .
        asl     a                               ; D6E5 0A                       .
        clc                                     ; D6E6 18                       .
        adc     #$04                            ; D6E7 69 04                    i.
        tax                                     ; D6E9 AA                       .
        jsr     LE33A                           ; D6EA 20 3A E3                  :.
        ldx     ObjectOffset                    ; D6ED A6 08                    ..
        bcc     LD6FA                           ; D6EF 90 09                    ..
        lda     #$80                            ; D6F1 A9 80                    ..
        sta     Fireball_State,x                ; D6F3 95 24                    .$
        ldx     $01                             ; D6F5 A6 01                    ..
        jsr     LD70C                           ; D6F7 20 0C D7                  ..
LD6FA:
        pla                                     ; D6FA 68                       h
        tay                                     ; D6FB A8                       .
        ldx     $01                             ; D6FC A6 01                    ..
        dex                                     ; D6FE CA                       .
        bpl     LD6BC                           ; D6FF 10 BB                    ..
LD701:
        ldx     ObjectOffset                    ; D701 A6 08                    ..
        rts                                     ; D703 60                       `

; ----------------------------------------------------------------------------
LD704:
        .byte   $06,$00,$02,$12,$11,$07,$05,$2D ; D704 06 00 02 12 11 07 05 2D  .......-
; ----------------------------------------------------------------------------
LD70C:
        jsr     LF197                           ; D70C 20 97 F1                  ..
        ldx     $01                             ; D70F A6 01                    ..
        lda     Enemy_Flag,x                    ; D711 B5 0F                    ..
        bpl     LD720                           ; D713 10 0B                    ..
        .byte   $29,$0F,$AA,$B5,$16,$C9,$2D,$F0 ; D715 29 0F AA B5 16 C9 2D F0  ).....-.
        .byte   $0C,$A6,$01                     ; D71D 0C A6 01                 ...
; ----------------------------------------------------------------------------
LD720:
        lda     Enemy_ID,x                      ; D720 B5 16                    ..
        cmp     #$02                            ; D722 C9 02                    ..
        beq     LD79E                           ; D724 F0 78                    .x
        cmp     #$2D                            ; D726 C9 2D                    .-
        bne     LD757                           ; D728 D0 2D                    .-
        dec     BowserHitPoints                 ; D72A CE 83 04                 ...
        bne     LD79E                           ; D72D D0 6F                    .o
        jsr     LC31C                           ; D72F 20 1C C3                  ..
        sta     Enemy_X_Speed,x                 ; D732 95 58                    .X
        sta     EnemyFrenzyBuffer               ; D734 8D CB 06                 ...
        lda     #$FE                            ; D737 A9 FE                    ..
        sta     Enemy_Y_Speed,x                 ; D739 95 A0                    ..
        ldy     WorldNumber                     ; D73B AC 5F 07                 ._.
        lda     LD704,y                         ; D73E B9 04 D7                 ...
        sta     Enemy_ID,x                      ; D741 95 16                    ..
        lda     #$20                            ; D743 A9 20                    . 
        cpy     #$03                            ; D745 C0 03                    ..
        bcs     LD74B                           ; D747 B0 02                    ..
        ora     #$03                            ; D749 09 03                    ..
LD74B:
        sta     Enemy_State,x                   ; D74B 95 1E                    ..
        lda     #$80                            ; D74D A9 80                    ..
        sta     Square2SoundQueue               ; D74F 85 FE                    ..
        ldx     $01                             ; D751 A6 01                    ..
        lda     #$09                            ; D753 A9 09                    ..
        bne     LD797                           ; D755 D0 40                    .@
LD757:
        cmp     #$08                            ; D757 C9 08                    ..
        beq     LD79E                           ; D759 F0 43                    .C
        cmp     #$0C                            ; D75B C9 0C                    ..
        beq     LD79E                           ; D75D F0 3F                    .?
        cmp     #$15                            ; D75F C9 15                    ..
        bcs     LD79E                           ; D761 B0 3B                    .;
LD763:
        lda     Enemy_ID,x                      ; D763 B5 16                    ..
        cmp     #$0D                            ; D765 C9 0D                    ..
        beq     LD776                           ; D767 F0 0D                    ..
        cmp     #$13                            ; D769 C9 13                    ..
        bne     LD77C                           ; D76B D0 0F                    ..
        .byte   $B5,$CF,$E9,$18,$95,$CF,$4C,$7C ; D76D B5 CF E9 18 95 CF 4C 7C  ......L|
        .byte   $D7                             ; D775 D7                       .
; ----------------------------------------------------------------------------
LD776:
        lda     Enemy_Y_Position,x              ; D776 B5 CF                    ..
        adc     #$18                            ; D778 69 18                    i.
        sta     Enemy_Y_Position,x              ; D77A 95 CF                    ..
LD77C:
        jsr     LE026                           ; D77C 20 26 E0                  &.
        lda     Enemy_State,x                   ; D77F B5 1E                    ..
        and     #$1F                            ; D781 29 1F                    ).
        ora     #$20                            ; D783 09 20                    . 
        sta     Enemy_State,x                   ; D785 95 1E                    ..
        lda     #$02                            ; D787 A9 02                    ..
        ldy     Enemy_ID,x                      ; D789 B4 16                    ..
        cpy     #$05                            ; D78B C0 05                    ..
        bne     LD791                           ; D78D D0 02                    ..
        .byte   $A9,$06                         ; D78F A9 06                    ..
; ----------------------------------------------------------------------------
LD791:
        cpy     #$06                            ; D791 C0 06                    ..
        bne     LD797                           ; D793 D0 02                    ..
        lda     #$01                            ; D795 A9 01                    ..
LD797:
        jsr     LD9F7                           ; D797 20 F7 D9                  ..
        lda     #$08                            ; D79A A9 08                    ..
        sta     Square1SoundQueue               ; D79C 85 FF                    ..
LD79E:
        rts                                     ; D79E 60                       `

; ----------------------------------------------------------------------------
        .byte   $A5,$09,$4A,$90,$36,$AD,$47,$07 ; D79F A5 09 4A 90 36 AD 47 07  ..J.6.G.
        .byte   $0D,$D6,$03,$D0,$2E,$8A,$0A,$0A ; D7A7 0D D6 03 D0 2E 8A 0A 0A  ........
        .byte   $18,$69,$24,$A8,$20,$38,$E3,$A6 ; D7AF 18 69 24 A8 20 38 E3 A6  .i$. 8..
        .byte   $08,$90,$1B,$BD,$BE,$06,$D0,$1B ; D7B7 08 90 1B BD BE 06 D0 1B  ........
        .byte   $A9,$01,$9D,$BE,$06,$B5,$64,$49 ; D7BF A9 01 9D BE 06 B5 64 49  ......dI
        .byte   $FF,$18,$69,$01,$95,$64,$AD,$9F ; D7C7 FF 18 69 01 95 64 AD 9F  ..i..d..
        .byte   $07,$D0,$08,$4C,$DC,$D8,$A9,$00 ; D7CF 07 D0 08 4C DC D8 A9 00  ...L....
        .byte   $9D,$BE,$06,$60                 ; D7D7 9D BE 06 60              ...`
; ----------------------------------------------------------------------------
LD7DB:
        jsr     LC95F                           ; D7DB 20 5F C9                  _.
        lda     #$06                            ; D7DE A9 06                    ..
        jsr     LD9F7                           ; D7E0 20 F7 D9                  ..
        lda     #$20                            ; D7E3 A9 20                    . 
        sta     Square2SoundQueue               ; D7E5 85 FE                    ..
        lda     PowerUpType                     ; D7E7 A5 39                    .9
        cmp     #$02                            ; D7E9 C9 02                    ..
        bcc     LD7FF                           ; D7EB 90 12                    ..
        cmp     #$03                            ; D7ED C9 03                    ..
        beq     LD819                           ; D7EF F0 28                    .(
        cmp     #$04                            ; D7F1 C9 04                    ..
        bcs     LD819                           ; D7F3 B0 24                    .$
        lda     #$23                            ; D7F5 A9 23                    .#
        sta     StarInvincibleTimer             ; D7F7 8D 9F 07                 ...
        lda     #$40                            ; D7FA A9 40                    .@
        sta     AreaMusicQueue                  ; D7FC 85 FB                    ..
        rts                                     ; D7FE 60                       `

; ----------------------------------------------------------------------------
LD7FF:
        jsr     LF3E0                           ; D7FF 20 E0 F3                  ..
        rts                                     ; D802 60                       `

; ----------------------------------------------------------------------------
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D803 FF FF FF FF FF FF FF FF  ........
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D80B FF FF FF FF FF FF FF FF  ........
        .byte   $FF,$FF,$FF,$FF,$FF,$FF         ; D813 FF FF FF FF FF FF        ......
LD819:
        .byte   $A9,$0B,$9D,$10,$01,$60,$FF,$FF ; D819 A9 0B 9D 10 01 60 FF FF  .....`..
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; D821 FF FF FF FF FF FF FF FF  ........
        .byte   $FF,$FF                         ; D829 FF FF                    ..
; ----------------------------------------------------------------------------
LD82B:
        rts                                     ; D82B 60                       `

; ----------------------------------------------------------------------------
        .byte   $18,$E8                         ; D82C 18 E8                    ..
LD82E:
        .byte   $30,$D0,$08,$F8                 ; D82E 30 D0 08 F8              0...
; ----------------------------------------------------------------------------
LD832:
        lda     FrameCounter                    ; D832 A5 09                    ..
        lsr     a                               ; D834 4A                       J
        bcs     LD82B                           ; D835 B0 F4                    ..
        jsr     LDC27                           ; D837 20 27 DC                  '.
        bcs     LD85F                           ; D83A B0 23                    .#
        lda     EnemyOffscrBitsMasked,x         ; D83C BD D8 03                 ...
        bne     LD85F                           ; D83F D0 1E                    ..
        lda     GameEngineSubroutine            ; D841 A5 0E                    ..
        cmp     #$08                            ; D843 C9 08                    ..
        bne     LD85F                           ; D845 D0 18                    ..
        lda     Enemy_State,x                   ; D847 B5 1E                    ..
        and     #$20                            ; D849 29 20                    ) 
        bne     LD85F                           ; D84B D0 12                    ..
        jsr     LDC38                           ; D84D 20 38 DC                  8.
        jsr     LE338                           ; D850 20 38 E3                  8.
        ldx     ObjectOffset                    ; D853 A6 08                    ..
        bcs     LD860                           ; D855 B0 09                    ..
        lda     Enemy_CollisionBits,x           ; D857 BD 91 04                 ...
        and     #$FE                            ; D85A 29 FE                    ).
        sta     Enemy_CollisionBits,x           ; D85C 9D 91 04                 ...
LD85F:
        rts                                     ; D85F 60                       `

; ----------------------------------------------------------------------------
LD860:
        ldy     Enemy_ID,x                      ; D860 B4 16                    ..
        cpy     #$2E                            ; D862 C0 2E                    ..
        bne     LD869                           ; D864 D0 03                    ..
        jmp     LD7DB                           ; D866 4C DB D7                 L..

; ----------------------------------------------------------------------------
LD869:
        lda     StarInvincibleTimer             ; D869 AD 9F 07                 ...
        beq     LD874                           ; D86C F0 06                    ..
        jmp     LD763                           ; D86E 4C 63 D7                 Lc.

; ----------------------------------------------------------------------------
        .byte   $0A,$06,$04                     ; D871 0A 06 04                 ...
; ----------------------------------------------------------------------------
LD874:
        lda     Enemy_CollisionBits,x           ; D874 BD 91 04                 ...
        and     #$01                            ; D877 29 01                    ).
        ora     EnemyOffscrBitsMasked,x         ; D879 1D D8 03                 ...
        bne     LD8DB                           ; D87C D0 5D                    .]
        lda     #$01                            ; D87E A9 01                    ..
        ora     Enemy_CollisionBits,x           ; D880 1D 91 04                 ...
        sta     Enemy_CollisionBits,x           ; D883 9D 91 04                 ...
        cpy     #$12                            ; D886 C0 12                    ..
        beq     LD8E4                           ; D888 F0 5A                    .Z
        cpy     #$0D                            ; D88A C0 0D                    ..
        beq     LD8DC                           ; D88C F0 4E                    .N
        cpy     #$13                            ; D88E C0 13                    ..
        beq     LD8DC                           ; D890 F0 4A                    .J
        cpy     #$0C                            ; D892 C0 0C                    ..
        beq     LD8DC                           ; D894 F0 46                    .F
        cpy     #$33                            ; D896 C0 33                    .3
        beq     LD8E4                           ; D898 F0 4A                    .J
        cpy     #$15                            ; D89A C0 15                    ..
        bcs     LD8DC                           ; D89C B0 3E                    .>
        lda     AreaType                        ; D89E AD 4E 07                 .N.
        beq     LD8DC                           ; D8A1 F0 39                    .9
        lda     Enemy_State,x                   ; D8A3 B5 1E                    ..
        asl     a                               ; D8A5 0A                       .
        bcs     LD8E4                           ; D8A6 B0 3C                    .<
        lda     Enemy_State,x                   ; D8A8 B5 1E                    ..
        and     #$07                            ; D8AA 29 07                    ).
        cmp     #$02                            ; D8AC C9 02                    ..
        bcc     LD8E4                           ; D8AE 90 34                    .4
        lda     Enemy_ID,x                      ; D8B0 B5 16                    ..
        cmp     #$06                            ; D8B2 C9 06                    ..
        beq     LD8DB                           ; D8B4 F0 25                    .%
        lda     #$08                            ; D8B6 A9 08                    ..
        sta     Square1SoundQueue               ; D8B8 85 FF                    ..
        lda     Enemy_State,x                   ; D8BA B5 1E                    ..
        ora     #$80                            ; D8BC 09 80                    ..
        sta     Enemy_State,x                   ; D8BE 95 1E                    ..
        jsr     LD9EB                           ; D8C0 20 EB D9                  ..
        lda     LD82E,y                         ; D8C3 B9 2E D8                 ...
        sta     Enemy_X_Speed,x                 ; D8C6 95 58                    .X
        lda     #$03                            ; D8C8 A9 03                    ..
        clc                                     ; D8CA 18                       .
        adc     StompChainCounter               ; D8CB 6D 84 04                 m..
        ldy     EnemyIntervalTimer,x            ; D8CE BC 96 07                 ...
        cpy     #$03                            ; D8D1 C0 03                    ..
        bcs     LD8D8                           ; D8D3 B0 03                    ..
        .byte   $B9,$71,$D8                     ; D8D5 B9 71 D8                 .q.
; ----------------------------------------------------------------------------
LD8D8:
        jsr     LD9F7                           ; D8D8 20 F7 D9                  ..
LD8DB:
        rts                                     ; D8DB 60                       `

; ----------------------------------------------------------------------------
LD8DC:
        lda     InjuryTimer                     ; D8DC AD 9E 07                 ...
        bne     LD93B                           ; D8DF D0 5A                    .Z
        jmp     LD917                           ; D8E1 4C 17 D9                 L..

; ----------------------------------------------------------------------------
LD8E4:
        lda     SprObject_Y_Speed               ; D8E4 A5 9F                    ..
        bmi     LD8EA                           ; D8E6 30 02                    0.
        bne     LD94F                           ; D8E8 D0 65                    .e
LD8EA:
        lda     Enemy_ID,x                      ; D8EA B5 16                    ..
        cmp     #$07                            ; D8EC C9 07                    ..
        bcc     LD8F9                           ; D8EE 90 09                    ..
        .byte   $A5,$CE,$18,$69,$0C,$D5,$CF,$90 ; D8F0 A5 CE 18 69 0C D5 CF 90  ...i....
        .byte   $56                             ; D8F8 56                       V
; ----------------------------------------------------------------------------
LD8F9:
        lda     StompTimer                      ; D8F9 AD 91 07                 ...
        bne     LD94F                           ; D8FC D0 51                    .Q
        lda     InjuryTimer                     ; D8FE AD 9E 07                 ...
        bne     LD93B                           ; D901 D0 38                    .8
        lda     SprObject_Rel_XPos              ; D903 AD AD 03                 ...
        cmp     Enemy_Rel_XPos                  ; D906 CD AE 03                 ...
        bcc     LD90E                           ; D909 90 03                    ..
        .byte   $4C,$DC,$D9                     ; D90B 4C DC D9                 L..
; ----------------------------------------------------------------------------
LD90E:
        lda     Enemy_MovingDir,x               ; D90E B5 46                    .F
        cmp     #$01                            ; D910 C9 01                    ..
        bne     LD8DC                           ; D912 D0 C8                    ..
        .byte   $4C,$E5,$D9                     ; D914 4C E5 D9                 L..
; ----------------------------------------------------------------------------
LD917:
        ldx     PlayerStatus                    ; D917 AE 56 07                 .V.
        beq     LD93E                           ; D91A F0 22                    ."
        sta     PlayerStatus                    ; D91C 8D 56 07                 .V.
        lda     #$08                            ; D91F A9 08                    ..
        sta     InjuryTimer                     ; D921 8D 9E 07                 ...
        asl     a                               ; D924 0A                       .
        sta     Square1SoundQueue               ; D925 85 FF                    ..
        jsr     L85F2                           ; D927 20 F2 85                  ..
        lda     #$0A                            ; D92A A9 0A                    ..
LD92C:
        ldy     #$01                            ; D92C A0 01                    ..
LD92E:
        sta     GameEngineSubroutine            ; D92E 85 0E                    ..
        sty     Player_State                    ; D930 84 1D                    ..
        ldy     #$FF                            ; D932 A0 FF                    ..
        sty     TimerControl                    ; D934 8C 47 07                 .G.
        iny                                     ; D937 C8                       .
        sty     ScrollAmount                    ; D938 8C 75 07                 .u.
LD93B:
        ldx     ObjectOffset                    ; D93B A6 08                    ..
        rts                                     ; D93D 60                       `

; ----------------------------------------------------------------------------
LD93E:
        stx     SprObject_X_Speed               ; D93E 86 57                    .W
        inx                                     ; D940 E8                       .
        stx     EventMusicQueue                 ; D941 86 FC                    ..
        lda     #$FC                            ; D943 A9 FC                    ..
        sta     SprObject_Y_Speed               ; D945 85 9F                    ..
        lda     #$0B                            ; D947 A9 0B                    ..
        bne     LD92C                           ; D949 D0 E1                    ..
        .byte   $02,$06,$05,$06                 ; D94B 02 06 05 06              ....
; ----------------------------------------------------------------------------
LD94F:
        lda     Enemy_ID,x                      ; D94F B5 16                    ..
        cmp     #$12                            ; D951 C9 12                    ..
        beq     LD8DC                           ; D953 F0 87                    ..
        lda     #$04                            ; D955 A9 04                    ..
        sta     Square1SoundQueue               ; D957 85 FF                    ..
        lda     Enemy_ID,x                      ; D959 B5 16                    ..
        ldy     #$00                            ; D95B A0 00                    ..
        cmp     #$14                            ; D95D C9 14                    ..
        beq     LD97C                           ; D95F F0 1B                    ..
        cmp     #$08                            ; D961 C9 08                    ..
        beq     LD97C                           ; D963 F0 17                    ..
        cmp     #$33                            ; D965 C9 33                    .3
        beq     LD97C                           ; D967 F0 13                    ..
        cmp     #$0C                            ; D969 C9 0C                    ..
        beq     LD97C                           ; D96B F0 0F                    ..
        iny                                     ; D96D C8                       .
        cmp     #$05                            ; D96E C9 05                    ..
        beq     LD97C                           ; D970 F0 0A                    ..
        iny                                     ; D972 C8                       .
        cmp     #$11                            ; D973 C9 11                    ..
        beq     LD97C                           ; D975 F0 05                    ..
        iny                                     ; D977 C8                       .
        cmp     #$07                            ; D978 C9 07                    ..
        bne     LD999                           ; D97A D0 1D                    ..
LD97C:
        .byte   $B9,$4B,$D9,$20,$F7,$D9,$B5,$46 ; D97C B9 4B D9 20 F7 D9 B5 46  .K. ...F
        .byte   $48,$20,$3A,$E0,$68,$95,$46,$A9 ; D984 48 20 3A E0 68 95 46 A9  H :.h.F.
        .byte   $20,$95,$1E,$20,$1C,$C3,$95,$58 ; D98C 20 95 1E 20 1C C3 95 58   .. ...X
        .byte   $A9,$FD,$85,$9F,$60             ; D994 A9 FD 85 9F 60           ....`
; ----------------------------------------------------------------------------
LD999:
        cmp     #$09                            ; D999 C9 09                    ..
        bcc     LD9BA                           ; D99B 90 1D                    ..
        .byte   $29,$01,$95,$16,$A0,$00,$94,$1E ; D99D 29 01 95 16 A0 00 94 1E  ).......
        .byte   $A9,$03,$20,$F7,$D9,$20,$1C,$C3 ; D9A5 A9 03 20 F7 D9 20 1C C3  .. .. ..
        .byte   $20,$EB,$D9,$B9,$30,$D8,$95,$58 ; D9AD 20 EB D9 B9 30 D8 95 58   ...0..X
        .byte   $4C,$D7,$D9                     ; D9B5 4C D7 D9                 L..
LD9B8:
        .byte   $10,$0B                         ; D9B8 10 0B                    ..
; ----------------------------------------------------------------------------
LD9BA:
        lda     #$04                            ; D9BA A9 04                    ..
        sta     Enemy_State,x                   ; D9BC 95 1E                    ..
        inc     StompChainCounter               ; D9BE EE 84 04                 ...
        lda     StompChainCounter               ; D9C1 AD 84 04                 ...
        clc                                     ; D9C4 18                       .
        adc     StompTimer                      ; D9C5 6D 91 07                 m..
        jsr     LD9F7                           ; D9C8 20 F7 D9                  ..
        inc     StompTimer                      ; D9CB EE 91 07                 ...
        ldy     PrimaryHardMode                 ; D9CE AC 6A 07                 .j.
        lda     LD9B8,y                         ; D9D1 B9 B8 D9                 ...
        sta     EnemyIntervalTimer,x            ; D9D4 9D 96 07                 ...
        lda     #$FC                            ; D9D7 A9 FC                    ..
        sta     SprObject_Y_Speed               ; D9D9 85 9F                    ..
        rts                                     ; D9DB 60                       `

; ----------------------------------------------------------------------------
        .byte   $B5,$46,$C9,$01,$D0,$03,$4C,$DC ; D9DC B5 46 C9 01 D0 03 4C DC  .F....L.
        .byte   $D8,$20,$02,$DB,$4C,$DC,$D8     ; D9E4 D8 20 02 DB 4C DC D8     . ..L..
; ----------------------------------------------------------------------------
LD9EB:
        ldy     #$01                            ; D9EB A0 01                    ..
        jsr     LE14E                           ; D9ED 20 4E E1                  N.
        bpl     LD9F3                           ; D9F0 10 01                    ..
        .byte   $C8                             ; D9F2 C8                       .
; ----------------------------------------------------------------------------
LD9F3:
        sty     Enemy_MovingDir,x               ; D9F3 94 46                    .F
        dey                                     ; D9F5 88                       .
        rts                                     ; D9F6 60                       `

; ----------------------------------------------------------------------------
LD9F7:
        sta     FloateyNum_Control,x            ; D9F7 9D 10 01                 ...
        lda     #$30                            ; D9FA A9 30                    .0
        sta     FloateyNum_Timer,x              ; D9FC 9D 2C 01                 .,.
        lda     Enemy_Y_Position,x              ; D9FF B5 CF                    ..
        sta     FloateyNum_Y_Pos,x              ; DA01 9D 1E 01                 ...
        lda     Enemy_Rel_XPos                  ; DA04 AD AE 03                 ...
        sta     FloateyNum_X_Pos,x              ; DA07 9D 17 01                 ...
LDA0A:
        rts                                     ; DA0A 60                       `

; ----------------------------------------------------------------------------
LDA0B:
        .byte   $80,$40,$20,$10,$08,$04,$02     ; DA0B 80 40 20 10 08 04 02     .@ ....
LDA12:
        .byte   $7F,$BF,$DF,$EF,$F7,$FB,$FD     ; DA12 7F BF DF EF F7 FB FD     .......
; ----------------------------------------------------------------------------
LDA19:
        lda     FrameCounter                    ; DA19 A5 09                    ..
        lsr     a                               ; DA1B 4A                       J
        bcc     LDA0A                           ; DA1C 90 EC                    ..
        lda     AreaType                        ; DA1E AD 4E 07                 .N.
        beq     LDA0A                           ; DA21 F0 E7                    ..
        lda     Enemy_ID,x                      ; DA23 B5 16                    ..
        cmp     #$15                            ; DA25 C9 15                    ..
        bcs     LDA97                           ; DA27 B0 6E                    .n
        cmp     #$11                            ; DA29 C9 11                    ..
        beq     LDA97                           ; DA2B F0 6A                    .j
        cmp     #$0D                            ; DA2D C9 0D                    ..
        beq     LDA97                           ; DA2F F0 66                    .f
        lda     EnemyOffscrBitsMasked,x         ; DA31 BD D8 03                 ...
        bne     LDA97                           ; DA34 D0 61                    .a
        jsr     LDC38                           ; DA36 20 38 DC                  8.
        dex                                     ; DA39 CA                       .
        bmi     LDA97                           ; DA3A 30 5B                    0[
LDA3C:
        stx     $01                             ; DA3C 86 01                    ..
        tya                                     ; DA3E 98                       .
        pha                                     ; DA3F 48                       H
        lda     Enemy_Flag,x                    ; DA40 B5 0F                    ..
        beq     LDA90                           ; DA42 F0 4C                    .L
        lda     Enemy_ID,x                      ; DA44 B5 16                    ..
        cmp     #$15                            ; DA46 C9 15                    ..
        bcs     LDA90                           ; DA48 B0 46                    .F
        cmp     #$11                            ; DA4A C9 11                    ..
        beq     LDA90                           ; DA4C F0 42                    .B
        cmp     #$0D                            ; DA4E C9 0D                    ..
        beq     LDA90                           ; DA50 F0 3E                    .>
        lda     EnemyOffscrBitsMasked,x         ; DA52 BD D8 03                 ...
        bne     LDA90                           ; DA55 D0 39                    .9
        txa                                     ; DA57 8A                       .
        asl     a                               ; DA58 0A                       .
        asl     a                               ; DA59 0A                       .
        clc                                     ; DA5A 18                       .
        adc     #$04                            ; DA5B 69 04                    i.
        tax                                     ; DA5D AA                       .
        jsr     LE33A                           ; DA5E 20 3A E3                  :.
        ldx     ObjectOffset                    ; DA61 A6 08                    ..
        ldy     $01                             ; DA63 A4 01                    ..
        bcc     LDA87                           ; DA65 90 20                    . 
        lda     Enemy_State,x                   ; DA67 B5 1E                    ..
        ora     Enemy_State,y                   ; DA69 19 1E 00                 ...
        and     #$80                            ; DA6C 29 80                    ).
        bne     LDA81                           ; DA6E D0 11                    ..
        lda     Enemy_CollisionBits,y           ; DA70 B9 91 04                 ...
        and     LDA0B,x                         ; DA73 3D 0B DA                 =..
        bne     LDA90                           ; DA76 D0 18                    ..
        lda     Enemy_CollisionBits,y           ; DA78 B9 91 04                 ...
        ora     LDA0B,x                         ; DA7B 1D 0B DA                 ...
        sta     Enemy_CollisionBits,y           ; DA7E 99 91 04                 ...
LDA81:
        jsr     LDA9A                           ; DA81 20 9A DA                  ..
        jmp     LDA90                           ; DA84 4C 90 DA                 L..

; ----------------------------------------------------------------------------
LDA87:
        lda     Enemy_CollisionBits,y           ; DA87 B9 91 04                 ...
        and     LDA12,x                         ; DA8A 3D 12 DA                 =..
        sta     Enemy_CollisionBits,y           ; DA8D 99 91 04                 ...
LDA90:
        pla                                     ; DA90 68                       h
        tay                                     ; DA91 A8                       .
        ldx     $01                             ; DA92 A6 01                    ..
        dex                                     ; DA94 CA                       .
        bpl     LDA3C                           ; DA95 10 A5                    ..
LDA97:
        ldx     ObjectOffset                    ; DA97 A6 08                    ..
        rts                                     ; DA99 60                       `

; ----------------------------------------------------------------------------
LDA9A:
        lda     Enemy_State,y                   ; DA9A B9 1E 00                 ...
        ora     Enemy_State,x                   ; DA9D 15 1E                    ..
        and     #$20                            ; DA9F 29 20                    ) 
        bne     LDAD6                           ; DAA1 D0 33                    .3
        .byte   $B5,$1E,$C9,$06,$90,$2E,$B5,$16 ; DAA3 B5 1E C9 06 90 2E B5 16  ........
        .byte   $C9,$05,$F0,$27,$B9,$1E,$00,$0A ; DAAB C9 05 F0 27 B9 1E 00 0A  ...'....
        .byte   $90,$0A,$A9,$06,$20,$F7,$D9,$20 ; DAB3 90 0A A9 06 20 F7 D9 20  .... .. 
        .byte   $63,$D7,$A4,$01,$98,$AA,$20,$63 ; DABB 63 D7 A4 01 98 AA 20 63  c..... c
        .byte   $D7,$A6,$08,$BD,$25,$01,$18,$69 ; DAC3 D7 A6 08 BD 25 01 18 69  ....%..i
        .byte   $04,$A6,$01,$20,$F7,$D9,$A6,$08 ; DACB 04 A6 01 20 F7 D9 A6 08  ... ....
        .byte   $FE,$25,$01                     ; DAD3 FE 25 01                 .%.
; ----------------------------------------------------------------------------
LDAD6:
        rts                                     ; DAD6 60                       `

; ----------------------------------------------------------------------------
        .byte   $B9,$1E,$00,$C9,$06,$90,$1D,$B9 ; DAD7 B9 1E 00 C9 06 90 1D B9  ........
        .byte   $16,$00,$C9,$05,$F0,$F1,$20,$63 ; DADF 16 00 C9 05 F0 F1 20 63  ...... c
        .byte   $D7,$A4,$01,$B9,$25,$01,$18,$69 ; DAE7 D7 A4 01 B9 25 01 18 69  ....%..i
        .byte   $04,$A6,$08,$20,$F7,$D9,$A6,$01 ; DAEF 04 A6 08 20 F7 D9 A6 01  ... ....
        .byte   $FE,$25,$01,$60,$98,$AA,$20,$02 ; DAF7 FE 25 01 60 98 AA 20 02  .%.`.. .
        .byte   $DB,$A6,$08,$B5,$16,$C9,$0D,$F0 ; DAFF DB A6 08 B5 16 C9 0D F0  ........
        .byte   $22,$C9,$11,$F0,$1E,$C9,$05,$F0 ; DB07 22 C9 11 F0 1E C9 05 F0  ".......
        .byte   $1A,$C9,$12,$F0,$08,$C9,$0E,$F0 ; DB0F 1A C9 12 F0 08 C9 0E F0  ........
        .byte   $04,$C9,$07,$B0,$0E             ; DB17 04 C9 07 B0 0E           .....
; ----------------------------------------------------------------------------
LDB1C:
        lda     Enemy_X_Speed,x                 ; DB1C B5 58                    .X
        eor     #$FF                            ; DB1E 49 FF                    I.
        tay                                     ; DB20 A8                       .
        iny                                     ; DB21 C8                       .
        sty     Enemy_X_Speed,x                 ; DB22 94 58                    .X
        lda     Enemy_MovingDir,x               ; DB24 B5 46                    .F
        eor     #$03                            ; DB26 49 03                    I.
        sta     Enemy_MovingDir,x               ; DB28 95 46                    .F
        rts                                     ; DB2A 60                       `

; ----------------------------------------------------------------------------
LDB2B:
        lda     #$FF                            ; DB2B A9 FF                    ..
        sta     HammerThrowingTimer,x           ; DB2D 9D A2 03                 ...
        lda     TimerControl                    ; DB30 AD 47 07                 .G.
        bne     LDB5E                           ; DB33 D0 29                    .)
        lda     Enemy_State,x                   ; DB35 B5 1E                    ..
        bmi     LDB5E                           ; DB37 30 25                    0%
        lda     Enemy_ID,x                      ; DB39 B5 16                    ..
        cmp     #$24                            ; DB3B C9 24                    .$
        bne     LDB45                           ; DB3D D0 06                    ..
        .byte   $B5,$1E,$AA,$20,$45,$DB         ; DB3F B5 1E AA 20 45 DB        ... E.
; ----------------------------------------------------------------------------
LDB45:
        jsr     LDC27                           ; DB45 20 27 DC                  '.
        bcs     LDB5E                           ; DB48 B0 14                    ..
        txa                                     ; DB4A 8A                       .
        jsr     LDC3A                           ; DB4B 20 3A DC                  :.
        lda     Enemy_Y_Position,x              ; DB4E B5 CF                    ..
        sta     $00                             ; DB50 85 00                    ..
        txa                                     ; DB52 8A                       .
        pha                                     ; DB53 48                       H
        jsr     LE338                           ; DB54 20 38 E3                  8.
        pla                                     ; DB57 68                       h
        tax                                     ; DB58 AA                       .
        bcc     LDB5E                           ; DB59 90 03                    ..
        jsr     LDBA2                           ; DB5B 20 A2 DB                  ..
LDB5E:
        ldx     ObjectOffset                    ; DB5E A6 08                    ..
        rts                                     ; DB60 60                       `

; ----------------------------------------------------------------------------
        .byte   $AD,$47,$07,$D0,$37,$9D,$A2,$03 ; DB61 AD 47 07 D0 37 9D A2 03  .G..7...
        .byte   $20,$27,$DC,$B0,$2F,$A9,$02,$85 ; DB69 20 27 DC B0 2F A9 02 85   '../...
        .byte   $00,$A6,$08,$20,$38,$DC,$29,$02 ; DB71 00 A6 08 20 38 DC 29 02  ... 8.).
        .byte   $D0,$22,$B9,$AD,$04,$C9,$20,$90 ; DB79 D0 22 B9 AD 04 C9 20 90  .".... .
        .byte   $05,$20,$38,$E3,$B0,$19,$B9,$AD ; DB81 05 20 38 E3 B0 19 B9 AD  . 8.....
        .byte   $04,$18,$69,$80,$99,$AD,$04,$B9 ; DB89 04 18 69 80 99 AD 04 B9  ..i.....
        .byte   $AF,$04,$18,$69,$80,$99,$AF,$04 ; DB91 AF 04 18 69 80 99 AF 04  ...i....
        .byte   $C6,$00,$D0,$D5,$A6,$08,$60,$A6 ; DB99 C6 00 D0 D5 A6 08 60 A6  ......`.
        .byte   $08                             ; DBA1 08                       .
; ----------------------------------------------------------------------------
LDBA2:
        lda     BoundingBox_DR_YPos,y           ; DBA2 B9 AF 04                 ...
        sec                                     ; DBA5 38                       8
        sbc     BoundingBox_UL_YPos             ; DBA6 ED AD 04                 ...
        cmp     #$04                            ; DBA9 C9 04                    ..
        bcs     LDBB5                           ; DBAB B0 08                    ..
        .byte   $A5,$9F,$10,$04,$A9,$01,$85,$9F ; DBAD A5 9F 10 04 A9 01 85 9F  ........
; ----------------------------------------------------------------------------
LDBB5:
        lda     BoundingBox_DR_YPos             ; DBB5 AD AF 04                 ...
        sec                                     ; DBB8 38                       8
        sbc     BoundingBox_UL_YPos,y           ; DBB9 F9 AD 04                 ...
        cmp     #$06                            ; DBBC C9 06                    ..
        bcs     LDBDB                           ; DBBE B0 1B                    ..
        lda     SprObject_Y_Speed               ; DBC0 A5 9F                    ..
        bmi     LDBDB                           ; DBC2 30 17                    0.
        lda     $00                             ; DBC4 A5 00                    ..
        ldy     Enemy_ID,x                      ; DBC6 B4 16                    ..
        cpy     #$2B                            ; DBC8 C0 2B                    .+
        beq     LDBD1                           ; DBCA F0 05                    ..
        cpy     #$2C                            ; DBCC C0 2C                    .,
        beq     LDBD1                           ; DBCE F0 01                    ..
        txa                                     ; DBD0 8A                       .
LDBD1:
        ldx     ObjectOffset                    ; DBD1 A6 08                    ..
        sta     HammerThrowingTimer,x           ; DBD3 9D A2 03                 ...
        lda     #$00                            ; DBD6 A9 00                    ..
        sta     Player_State                    ; DBD8 85 1D                    ..
        rts                                     ; DBDA 60                       `

; ----------------------------------------------------------------------------
LDBDB:
        .byte   $A9,$01,$85,$00,$AD,$AE,$04,$38 ; DBDB A9 01 85 00 AD AE 04 38  .......8
        .byte   $F9,$AC,$04,$C9,$08,$90,$0D,$E6 ; DBE3 F9 AC 04 C9 08 90 0D E6  ........
        .byte   $00,$B9,$AE,$04,$18,$ED,$AC,$04 ; DBEB 00 B9 AE 04 18 ED AC 04  ........
        .byte   $C9,$09,$B0,$03,$20,$39,$DF,$A6 ; DBF3 C9 09 B0 03 20 39 DF A6  .... 9..
        .byte   $08,$60,$80,$00,$A8,$B5,$CF,$18 ; DBFB 08 60 80 00 A8 B5 CF 18  .`......
        .byte   $79,$FC,$DB,$2C                 ; DC03 79 FC DB 2C              y..,
; ----------------------------------------------------------------------------
LDC07:
        lda     Enemy_Y_Position,x              ; DC07 B5 CF                    ..
        ldy     GameEngineSubroutine            ; DC09 A4 0E                    ..
        cpy     #$0B                            ; DC0B C0 0B                    ..
        beq     LDC26                           ; DC0D F0 17                    ..
        ldy     Enemy_Y_HighPos,x               ; DC0F B4 B6                    ..
        cpy     #$01                            ; DC11 C0 01                    ..
        bne     LDC26                           ; DC13 D0 11                    ..
        sec                                     ; DC15 38                       8
        sbc     #$20                            ; DC16 E9 20                    . 
        sta     SprObject_Y_Position            ; DC18 85 CE                    ..
        tya                                     ; DC1A 98                       .
        sbc     #$00                            ; DC1B E9 00                    ..
        sta     SprObject_Y_HighPos             ; DC1D 85 B5                    ..
        lda     #$00                            ; DC1F A9 00                    ..
        sta     SprObject_Y_Speed               ; DC21 85 9F                    ..
        sta     SprObject_Y_MoveForce           ; DC23 8D 33 04                 .3.
LDC26:
        rts                                     ; DC26 60                       `

; ----------------------------------------------------------------------------
LDC27:
        lda     SprObject_OffscrBits            ; DC27 AD D0 03                 ...
        cmp     #$F0                            ; DC2A C9 F0                    ..
        bcs     LDC37                           ; DC2C B0 09                    ..
        ldy     SprObject_Y_HighPos             ; DC2E A4 B5                    ..
        dey                                     ; DC30 88                       .
        bne     LDC37                           ; DC31 D0 04                    ..
        lda     SprObject_Y_Position            ; DC33 A5 CE                    ..
        cmp     #$D0                            ; DC35 C9 D0                    ..
LDC37:
        rts                                     ; DC37 60                       `

; ----------------------------------------------------------------------------
LDC38:
        lda     ObjectOffset                    ; DC38 A5 08                    ..
LDC3A:
        asl     a                               ; DC3A 0A                       .
        asl     a                               ; DC3B 0A                       .
        clc                                     ; DC3C 18                       .
        adc     #$04                            ; DC3D 69 04                    i.
        tay                                     ; DC3F A8                       .
        lda     Enemy_OffscreenBits             ; DC40 AD D1 03                 ...
        and     #$0F                            ; DC43 29 0F                    ).
        cmp     #$0F                            ; DC45 C9 0F                    ..
        rts                                     ; DC47 60                       `

; ----------------------------------------------------------------------------
LDC48:
        .byte   $20,$10                         ; DC48 20 10                     .
; ----------------------------------------------------------------------------
LDC4A:
        lda     DisableCollisionDet             ; DC4A AD 16 07                 ...
        bne     LDC7D                           ; DC4D D0 2E                    ..
        lda     GameEngineSubroutine            ; DC4F A5 0E                    ..
        cmp     #$0B                            ; DC51 C9 0B                    ..
        beq     LDC7D                           ; DC53 F0 28                    .(
        cmp     #$04                            ; DC55 C9 04                    ..
        bcc     LDC7D                           ; DC57 90 24                    .$
        lda     #$01                            ; DC59 A9 01                    ..
        ldy     SwimmingFlag                    ; DC5B AC 04 07                 ...
        bne     LDC6A                           ; DC5E D0 0A                    ..
        lda     Player_State                    ; DC60 A5 1D                    ..
        beq     LDC68                           ; DC62 F0 04                    ..
        cmp     #$03                            ; DC64 C9 03                    ..
        bne     LDC6C                           ; DC66 D0 04                    ..
LDC68:
        lda     #$02                            ; DC68 A9 02                    ..
LDC6A:
        sta     Player_State                    ; DC6A 85 1D                    ..
LDC6C:
        lda     SprObject_Y_HighPos             ; DC6C A5 B5                    ..
        cmp     #$01                            ; DC6E C9 01                    ..
        bne     LDC7D                           ; DC70 D0 0B                    ..
        lda     #$FF                            ; DC72 A9 FF                    ..
        sta     Player_CollisionBits            ; DC74 8D 90 04                 ...
        lda     SprObject_Y_Position            ; DC77 A5 CE                    ..
        cmp     #$CF                            ; DC79 C9 CF                    ..
        bcc     LDC7E                           ; DC7B 90 01                    ..
LDC7D:
        rts                                     ; DC7D 60                       `

; ----------------------------------------------------------------------------
LDC7E:
        ldy     #$02                            ; DC7E A0 02                    ..
        lda     CrouchingFlag                   ; DC80 AD 14 07                 ...
        bne     LDC91                           ; DC83 D0 0C                    ..
        lda     PlayerSize                      ; DC85 AD 54 07                 .T.
        bne     LDC91                           ; DC88 D0 07                    ..
        dey                                     ; DC8A 88                       .
        lda     SwimmingFlag                    ; DC8B AD 04 07                 ...
        bne     LDC91                           ; DC8E D0 01                    ..
        dey                                     ; DC90 88                       .
LDC91:
        lda     LE3C0,y                         ; DC91 B9 C0 E3                 ...
        sta     $EB                             ; DC94 85 EB                    ..
        tay                                     ; DC96 A8                       .
        ldx     PlayerSize                      ; DC97 AE 54 07                 .T.
        lda     CrouchingFlag                   ; DC9A AD 14 07                 ...
        beq     LDCA0                           ; DC9D F0 01                    ..
        inx                                     ; DC9F E8                       .
LDCA0:
        lda     SprObject_Y_Position            ; DCA0 A5 CE                    ..
        cmp     LDC48,x                         ; DCA2 DD 48 DC                 .H.
        bcc     LDCDC                           ; DCA5 90 35                    .5
        jsr     LE3FC                           ; DCA7 20 FC E3                  ..
        beq     LDCDC                           ; DCAA F0 30                    .0
        jsr     LDFAC                           ; DCAC 20 AC DF                  ..
        bcs     LDD00                           ; DCAF B0 4F                    .O
        ldy     SprObject_Y_Speed               ; DCB1 A4 9F                    ..
        bpl     LDCDC                           ; DCB3 10 27                    .'
        ldy     $04                             ; DCB5 A4 04                    ..
        cpy     #$04                            ; DCB7 C0 04                    ..
        bcc     LDCDC                           ; DCB9 90 21                    .!
        jsr     LDF94                           ; DCBB 20 94 DF                  ..
        bcs     LDCD0                           ; DCBE B0 10                    ..
        ldy     AreaType                        ; DCC0 AC 4E 07                 .N.
        beq     LDCD8                           ; DCC3 F0 13                    ..
        ldy     BlockBounceTimer                ; DCC5 AC 84 07                 ...
        bne     LDCD8                           ; DCC8 D0 0E                    ..
        jsr     LADC9                           ; DCCA 20 C9 AD                  ..
        jmp     LDCDC                           ; DCCD 4C DC DC                 L..

; ----------------------------------------------------------------------------
LDCD0:
        cmp     #$26                            ; DCD0 C9 26                    .&
        beq     LDCD8                           ; DCD2 F0 04                    ..
        lda     #$02                            ; DCD4 A9 02                    ..
        sta     Square1SoundQueue               ; DCD6 85 FF                    ..
LDCD8:
        lda     #$01                            ; DCD8 A9 01                    ..
        sta     SprObject_Y_Speed               ; DCDA 85 9F                    ..
LDCDC:
        ldy     $EB                             ; DCDC A4 EB                    ..
        lda     SprObject_Y_Position            ; DCDE A5 CE                    ..
        cmp     #$CF                            ; DCE0 C9 CF                    ..
        bcs     LDD44                           ; DCE2 B0 60                    .`
        jsr     LE3FB                           ; DCE4 20 FB E3                  ..
        jsr     LDFAC                           ; DCE7 20 AC DF                  ..
        bcs     LDD00                           ; DCEA B0 14                    ..
        pha                                     ; DCEC 48                       H
        jsr     LE3FB                           ; DCED 20 FB E3                  ..
        sta     $00                             ; DCF0 85 00                    ..
        pla                                     ; DCF2 68                       h
        sta     $01                             ; DCF3 85 01                    ..
        bne     LDD03                           ; DCF5 D0 0C                    ..
        lda     $00                             ; DCF7 A5 00                    ..
        beq     LDD44                           ; DCF9 F0 49                    .I
        jsr     LDFAC                           ; DCFB 20 AC DF                  ..
        bcc     LDD03                           ; DCFE 90 03                    ..
LDD00:
        jmp     LDDEB                           ; DD00 4C EB DD                 L..

; ----------------------------------------------------------------------------
LDD03:
        jsr     LDFA2                           ; DD03 20 A2 DF                  ..
        bcs     LDD44                           ; DD06 B0 3C                    .<
        ldy     SprObject_Y_Speed               ; DD08 A4 9F                    ..
        bmi     LDD44                           ; DD0A 30 38                    08
        cmp     #$C8                            ; DD0C C9 C8                    ..
        bne     LDD13                           ; DD0E D0 03                    ..
        jmp     LDDF4                           ; DD10 4C F4 DD                 L..

; ----------------------------------------------------------------------------
LDD13:
        jsr     LDEA3                           ; DD13 20 A3 DE                  ..
        beq     LDD44                           ; DD16 F0 2C                    .,
        ldy     JumpspringAnimCtrl              ; DD18 AC 0E 07                 ...
        bne     LDD40                           ; DD1B D0 23                    .#
        ldy     $04                             ; DD1D A4 04                    ..
        cpy     #$05                            ; DD1F C0 05                    ..
        bcc     LDD2A                           ; DD21 90 07                    ..
        lda     Player_MovingDir                ; DD23 A5 45                    .E
        sta     $00                             ; DD25 85 00                    ..
        jmp     LDF39                           ; DD27 4C 39 DF                 L9.

; ----------------------------------------------------------------------------
LDD2A:
        jsr     LDEB2                           ; DD2A 20 B2 DE                  ..
        lda     #$F0                            ; DD2D A9 F0                    ..
        and     SprObject_Y_Position            ; DD2F 25 CE                    %.
        sta     SprObject_Y_Position            ; DD31 85 CE                    ..
        jsr     LDED6                           ; DD33 20 D6 DE                  ..
        lda     #$00                            ; DD36 A9 00                    ..
        sta     SprObject_Y_Speed               ; DD38 85 9F                    ..
        sta     SprObject_Y_MoveForce           ; DD3A 8D 33 04                 .3.
        sta     StompChainCounter               ; DD3D 8D 84 04                 ...
LDD40:
        lda     #$00                            ; DD40 A9 00                    ..
        sta     Player_State                    ; DD42 85 1D                    ..
LDD44:
        ldy     $EB                             ; DD44 A4 EB                    ..
        iny                                     ; DD46 C8                       .
        iny                                     ; DD47 C8                       .
        lda     #$02                            ; DD48 A9 02                    ..
        sta     $00                             ; DD4A 85 00                    ..
LDD4C:
        iny                                     ; DD4C C8                       .
        sty     $EB                             ; DD4D 84 EB                    ..
        lda     SprObject_Y_Position            ; DD4F A5 CE                    ..
        cmp     #$20                            ; DD51 C9 20                    . 
        bcc     LDD6B                           ; DD53 90 16                    ..
        cmp     #$E4                            ; DD55 C9 E4                    ..
        bcs     LDD81                           ; DD57 B0 28                    .(
        jsr     LE3FF                           ; DD59 20 FF E3                  ..
        beq     LDD6B                           ; DD5C F0 0D                    ..
        cmp     #$1C                            ; DD5E C9 1C                    ..
        beq     LDD6B                           ; DD60 F0 09                    ..
        cmp     #$6B                            ; DD62 C9 6B                    .k
        beq     LDD6B                           ; DD64 F0 05                    ..
        jsr     LDFA2                           ; DD66 20 A2 DF                  ..
        bcc     LDD82                           ; DD69 90 17                    ..
LDD6B:
        ldy     $EB                             ; DD6B A4 EB                    ..
        iny                                     ; DD6D C8                       .
        lda     SprObject_Y_Position            ; DD6E A5 CE                    ..
        cmp     #$08                            ; DD70 C9 08                    ..
        bcc     LDD81                           ; DD72 90 0D                    ..
        cmp     #$D0                            ; DD74 C9 D0                    ..
        bcs     LDD81                           ; DD76 B0 09                    ..
        jsr     LE3FF                           ; DD78 20 FF E3                  ..
        bne     LDD82                           ; DD7B D0 05                    ..
        dec     $00                             ; DD7D C6 00                    ..
        bne     LDD4C                           ; DD7F D0 CB                    ..
LDD81:
        rts                                     ; DD81 60                       `

; ----------------------------------------------------------------------------
LDD82:
        jsr     LDEA3                           ; DD82 20 A3 DE                  ..
        beq     LDDE8                           ; DD85 F0 61                    .a
        jsr     LDFA2                           ; DD87 20 A2 DF                  ..
        bcc     LDD8F                           ; DD8A 90 03                    ..
        jmp     LDE14                           ; DD8C 4C 14 DE                 L..

; ----------------------------------------------------------------------------
LDD8F:
        jsr     LDFAC                           ; DD8F 20 AC DF                  ..
        bcs     LDDEB                           ; DD92 B0 57                    .W
        jsr     LDECB                           ; DD94 20 CB DE                  ..
        bcc     LDDA1                           ; DD97 90 08                    ..
        lda     JumpspringAnimCtrl              ; DD99 AD 0E 07                 ...
        bne     LDDE8                           ; DD9C D0 4A                    .J
        .byte   $4C,$E5,$DD                     ; DD9E 4C E5 DD                 L..
; ----------------------------------------------------------------------------
LDDA1:
        ldy     Player_State                    ; DDA1 A4 1D                    ..
        cpy     #$00                            ; DDA3 C0 00                    ..
        bne     LDDE5                           ; DDA5 D0 3E                    .>
        ldy     PlayerFacingDir                 ; DDA7 A4 33                    .3
        dey                                     ; DDA9 88                       .
        bne     LDDE5                           ; DDAA D0 39                    .9
        cmp     #$6C                            ; DDAC C9 6C                    .l
        beq     LDDB4                           ; DDAE F0 04                    ..
        cmp     #$1F                            ; DDB0 C9 1F                    ..
        bne     LDDE5                           ; DDB2 D0 31                    .1
LDDB4:
        lda     SprObject_SprAttrib             ; DDB4 AD C4 03                 ...
        bne     LDDBD                           ; DDB7 D0 04                    ..
        ldy     #$10                            ; DDB9 A0 10                    ..
        sty     Square1SoundQueue               ; DDBB 84 FF                    ..
LDDBD:
        ora     #$20                            ; DDBD 09 20                    . 
        sta     SprObject_SprAttrib             ; DDBF 8D C4 03                 ...
        lda     SprObject_X_Position            ; DDC2 A5 86                    ..
        and     #$0F                            ; DDC4 29 0F                    ).
        beq     LDDD6                           ; DDC6 F0 0E                    ..
        ldy     #$00                            ; DDC8 A0 00                    ..
        lda     ScreenEdge_PageLoc              ; DDCA AD 1A 07                 ...
        beq     LDDD0                           ; DDCD F0 01                    ..
        iny                                     ; DDCF C8                       .
LDDD0:
        lda     LDDE9,y                         ; DDD0 B9 E9 DD                 ...
        sta     ChangeAreaTimer                 ; DDD3 8D DE 06                 ...
LDDD6:
        lda     GameEngineSubroutine            ; DDD6 A5 0E                    ..
        cmp     #$07                            ; DDD8 C9 07                    ..
        beq     LDDE8                           ; DDDA F0 0C                    ..
        cmp     #$08                            ; DDDC C9 08                    ..
        bne     LDDE8                           ; DDDE D0 08                    ..
        lda     #$02                            ; DDE0 A9 02                    ..
        sta     GameEngineSubroutine            ; DDE2 85 0E                    ..
        rts                                     ; DDE4 60                       `

; ----------------------------------------------------------------------------
LDDE5:
        jsr     LDF39                           ; DDE5 20 39 DF                  9.
LDDE8:
        rts                                     ; DDE8 60                       `

; ----------------------------------------------------------------------------
LDDE9:
        .byte   $A0,$34                         ; DDE9 A0 34                    .4
; ----------------------------------------------------------------------------
LDDEB:
        jsr     LDE02                           ; DDEB 20 02 DE                  ..
        inc     CoinTallyFor1Ups                ; DDEE EE 48 07                 .H.
        jmp     LACDA                           ; DDF1 4C DA AC                 L..

; ----------------------------------------------------------------------------
LDDF4:
        lda     #$00                            ; DDF4 A9 00                    ..
        sta     OperMode_Task                   ; DDF6 8D 72 07                 .r.
        lda     #$02                            ; DDF9 A9 02                    ..
        sta     OperMode                        ; DDFB 8D 70 07                 .p.
        lda     #$18                            ; DDFE A9 18                    ..
        sta     SprObject_X_Speed               ; DE00 85 57                    .W
LDE02:
        ldy     $02                             ; DE02 A4 02                    ..
        lda     #$00                            ; DE04 A9 00                    ..
        sta     ($06),y                         ; DE06 91 06                    ..
LDE0A           := * + 2
        jmp     L8B84                           ; DE08 4C 84 8B                 L..

; ----------------------------------------------------------------------------
        .byte   $F9                             ; DE0B F9                       .
LDE0C:
        .byte   $07,$FF,$00                     ; DE0C 07 FF 00                 ...
LDE0F:
        .byte   $18,$22,$50,$68,$90             ; DE0F 18 22 50 68 90           ."Ph.
; ----------------------------------------------------------------------------
LDE14:
        ldy     $04                             ; DE14 A4 04                    ..
        cpy     #$06                            ; DE16 C0 06                    ..
        bcc     LDE1E                           ; DE18 90 04                    ..
        cpy     #$0A                            ; DE1A C0 0A                    ..
        bcc     LDE1F                           ; DE1C 90 01                    ..
LDE1E:
        rts                                     ; DE1E 60                       `

; ----------------------------------------------------------------------------
LDE1F:
        cmp     #$24                            ; DE1F C9 24                    .$
        beq     LDE27                           ; DE21 F0 04                    ..
        cmp     #$25                            ; DE23 C9 25                    .%
        bne     LDE60                           ; DE25 D0 39                    .9
LDE27:
        lda     GameEngineSubroutine            ; DE27 A5 0E                    ..
        cmp     #$05                            ; DE29 C9 05                    ..
        beq     LDE6E                           ; DE2B F0 41                    .A
        lda     #$01                            ; DE2D A9 01                    ..
        sta     PlayerFacingDir                 ; DE2F 85 33                    .3
        inc     ScrollLock                      ; DE31 EE 23 07                 .#.
        lda     GameEngineSubroutine            ; DE34 A5 0E                    ..
        cmp     #$04                            ; DE36 C9 04                    ..
        beq     LDE59                           ; DE38 F0 1F                    ..
        lda     #$33                            ; DE3A A9 33                    .3
        jsr     L9888                           ; DE3C 20 88 98                  ..
        lda     #$80                            ; DE3F A9 80                    ..
        sta     EventMusicQueue                 ; DE41 85 FC                    ..
        lsr     a                               ; DE43 4A                       J
        sta     FlagpoleSoundQueue              ; DE44 8D 13 07                 ...
        ldx     #$04                            ; DE47 A2 04                    ..
        lda     SprObject_Y_Position            ; DE49 A5 CE                    ..
        sta     FlagpoleCollisionYPos           ; DE4B 8D 0F 07                 ...
LDE4E:
        cmp     LDE0F,x                         ; DE4E DD 0F DE                 ...
        bcs     LDE56                           ; DE51 B0 03                    ..
        dex                                     ; DE53 CA                       .
        bne     LDE4E                           ; DE54 D0 F8                    ..
LDE56:
        stx     FlagpoleScore                   ; DE56 8E 0F 01                 ...
LDE59:
        lda     #$04                            ; DE59 A9 04                    ..
        sta     GameEngineSubroutine            ; DE5B 85 0E                    ..
        jmp     LDE6E                           ; DE5D 4C 6E DE                 Ln.

; ----------------------------------------------------------------------------
LDE60:
        .byte   $C9,$26,$D0,$0A,$A5,$CE,$C9,$20 ; DE60 C9 26 D0 0A A5 CE C9 20  .&..... 
        .byte   $B0,$04,$A9,$01,$85,$0E         ; DE68 B0 04 A9 01 85 0E        ......
; ----------------------------------------------------------------------------
LDE6E:
        lda     #$03                            ; DE6E A9 03                    ..
        sta     Player_State                    ; DE70 85 1D                    ..
        lda     #$00                            ; DE72 A9 00                    ..
        sta     SprObject_X_Speed               ; DE74 85 57                    .W
        sta     Player_X_MoveForce              ; DE76 8D 05 07                 ...
        lda     SprObject_X_Position            ; DE79 A5 86                    ..
        sec                                     ; DE7B 38                       8
        sbc     ScreenEdge_X_Pos                ; DE7C ED 1C 07                 ...
        cmp     #$10                            ; DE7F C9 10                    ..
        bcs     LDE87                           ; DE81 B0 04                    ..
        .byte   $A9,$02,$85,$33                 ; DE83 A9 02 85 33              ...3
; ----------------------------------------------------------------------------
LDE87:
        ldy     PlayerFacingDir                 ; DE87 A4 33                    .3
        lda     $06                             ; DE89 A5 06                    ..
        asl     a                               ; DE8B 0A                       .
        asl     a                               ; DE8C 0A                       .
        asl     a                               ; DE8D 0A                       .
        asl     a                               ; DE8E 0A                       .
        clc                                     ; DE8F 18                       .
        adc     LDE0A,y                         ; DE90 79 0A DE                 y..
        sta     SprObject_X_Position            ; DE93 85 86                    ..
        lda     $06                             ; DE95 A5 06                    ..
        bne     LDEA2                           ; DE97 D0 09                    ..
        lda     ScreenRight_PageLoc             ; DE99 AD 1B 07                 ...
        clc                                     ; DE9C 18                       .
        adc     LDE0C,y                         ; DE9D 79 0C DE                 y..
        sta     SprObject_PageLoc               ; DEA0 85 6D                    .m
LDEA2:
        rts                                     ; DEA2 60                       `

; ----------------------------------------------------------------------------
LDEA3:
        cmp     #$5F                            ; DEA3 C9 5F                    ._
        beq     LDEB1                           ; DEA5 F0 0A                    ..
        cmp     #$60                            ; DEA7 C9 60                    .`
        beq     LDEB1                           ; DEA9 F0 06                    ..
        cmp     #$C5                            ; DEAB C9 C5                    ..
        beq     LDEB1                           ; DEAD F0 02                    ..
        cmp     #$C6                            ; DEAF C9 C6                    ..
LDEB1:
        rts                                     ; DEB1 60                       `

; ----------------------------------------------------------------------------
LDEB2:
        jsr     LDECB                           ; DEB2 20 CB DE                  ..
        bcc     LDECA                           ; DEB5 90 13                    ..
        lda     #$70                            ; DEB7 A9 70                    .p
        sta     VerticalForce                   ; DEB9 8D 09 07                 ...
        lda     #$F9                            ; DEBC A9 F9                    ..
        sta     JumpspringForce                 ; DEBE 8D DB 06                 ...
        lda     #$03                            ; DEC1 A9 03                    ..
        sta     JumpspringTimer                 ; DEC3 8D 86 07                 ...
        lsr     a                               ; DEC6 4A                       J
        sta     JumpspringAnimCtrl              ; DEC7 8D 0E 07                 ...
LDECA:
        rts                                     ; DECA 60                       `

; ----------------------------------------------------------------------------
LDECB:
        cmp     #$67                            ; DECB C9 67                    .g
        beq     LDED4                           ; DECD F0 05                    ..
        cmp     #$68                            ; DECF C9 68                    .h
        clc                                     ; DED1 18                       .
        bne     LDED5                           ; DED2 D0 01                    ..
LDED4:
        sec                                     ; DED4 38                       8
LDED5:
        rts                                     ; DED5 60                       `

; ----------------------------------------------------------------------------
LDED6:
        lda     Up_Down_Buttons                 ; DED6 A5 0B                    ..
        and     #$04                            ; DED8 29 04                    ).
        beq     LDF38                           ; DEDA F0 5C                    .\
        lda     $00                             ; DEDC A5 00                    ..
        cmp     #$11                            ; DEDE C9 11                    ..
        bne     LDF38                           ; DEE0 D0 56                    .V
        lda     $01                             ; DEE2 A5 01                    ..
        cmp     #$10                            ; DEE4 C9 10                    ..
        bne     LDF38                           ; DEE6 D0 50                    .P
        lda     #$30                            ; DEE8 A9 30                    .0
        sta     ChangeAreaTimer                 ; DEEA 8D DE 06                 ...
        lda     #$03                            ; DEED A9 03                    ..
        sta     GameEngineSubroutine            ; DEEF 85 0E                    ..
        lda     #$10                            ; DEF1 A9 10                    ..
        sta     Square1SoundQueue               ; DEF3 85 FF                    ..
        lda     #$20                            ; DEF5 A9 20                    . 
        sta     SprObject_SprAttrib             ; DEF7 8D C4 03                 ...
        lda     WarpZoneControl                 ; DEFA AD D6 06                 ...
        beq     LDF38                           ; DEFD F0 39                    .9
        .byte   $29,$03,$0A,$0A,$AA,$A5,$86,$C9 ; DEFF 29 03 0A 0A AA A5 86 C9  ).......
        .byte   $60,$90,$06,$E8,$C9,$A0,$90,$01 ; DF07 60 90 06 E8 C9 A0 90 01  `.......
        .byte   $E8,$BC,$29,$89,$88,$8C,$5F,$07 ; DF0F E8 BC 29 89 88 8C 5F 07  ..)..._.
        .byte   $BE,$A6,$9E,$BD,$AE,$9E,$8D,$50 ; DF17 BE A6 9E BD AE 9E 8D 50  .......P
        .byte   $07,$A9,$80,$85,$FC,$A9,$00,$8D ; DF1F 07 A9 80 85 FC A9 00 8D  ........
        .byte   $51,$07,$8D,$60,$07,$8D,$5C,$07 ; DF27 51 07 8D 60 07 8D 5C 07  Q..`..\.
        .byte   $8D,$52,$07,$EE,$5D,$07,$EE,$57 ; DF2F 8D 52 07 EE 5D 07 EE 57  .R..]..W
        .byte   $07                             ; DF37 07                       .
; ----------------------------------------------------------------------------
LDF38:
        rts                                     ; DF38 60                       `

; ----------------------------------------------------------------------------
LDF39:
        lda     #$00                            ; DF39 A9 00                    ..
        ldy     SprObject_X_Speed               ; DF3B A4 57                    .W
        ldx     $00                             ; DF3D A6 00                    ..
        dex                                     ; DF3F CA                       .
        bne     LDF4C                           ; DF40 D0 0A                    ..
        inx                                     ; DF42 E8                       .
        cpy     #$00                            ; DF43 C0 00                    ..
        bmi     LDF6F                           ; DF45 30 28                    0(
        lda     #$FF                            ; DF47 A9 FF                    ..
        jmp     LDF54                           ; DF49 4C 54 DF                 LT.

; ----------------------------------------------------------------------------
LDF4C:
        ldx     #$02                            ; DF4C A2 02                    ..
        cpy     #$01                            ; DF4E C0 01                    ..
        bpl     LDF6F                           ; DF50 10 1D                    ..
        lda     #$01                            ; DF52 A9 01                    ..
LDF54:
        ldy     #$10                            ; DF54 A0 10                    ..
        sty     SideCollisionTimer              ; DF56 8C 85 07                 ...
        ldy     #$00                            ; DF59 A0 00                    ..
        sty     SprObject_X_Speed               ; DF5B 84 57                    .W
        cmp     #$00                            ; DF5D C9 00                    ..
        bpl     LDF62                           ; DF5F 10 01                    ..
        dey                                     ; DF61 88                       .
LDF62:
        sty     $00                             ; DF62 84 00                    ..
        clc                                     ; DF64 18                       .
        adc     SprObject_X_Position            ; DF65 65 86                    e.
        sta     SprObject_X_Position            ; DF67 85 86                    ..
        lda     SprObject_PageLoc               ; DF69 A5 6D                    .m
        adc     $00                             ; DF6B 65 00                    e.
        sta     SprObject_PageLoc               ; DF6D 85 6D                    .m
LDF6F:
        txa                                     ; DF6F 8A                       .
        eor     #$FF                            ; DF70 49 FF                    I.
        and     Player_CollisionBits            ; DF72 2D 90 04                 -..
        sta     Player_CollisionBits            ; DF75 8D 90 04                 ...
        rts                                     ; DF78 60                       `

; ----------------------------------------------------------------------------
LDF79:
        .byte   $10,$61,$88,$C7                 ; DF79 10 61 88 C7              .a..
; ----------------------------------------------------------------------------
LDF7D:
        pha                                     ; DF7D 48                       H
        txa                                     ; DF7E 8A                       .
        cmp     #$00                            ; DF7F C9 00                    ..
        bne     LDF92                           ; DF81 D0 0F                    ..
        pla                                     ; DF83 68                       h
        cmp     #$27                            ; DF84 C9 27                    .'
        beq     LDF8F                           ; DF86 F0 07                    ..
        cmp     #$28                            ; DF88 C9 28                    .(
        beq     LDF8F                           ; DF8A F0 03                    ..
        jmp     LDF93                           ; DF8C 4C 93 DF                 L..

; ----------------------------------------------------------------------------
LDF8F:
        lda     #$10                            ; DF8F A9 10                    ..
        rts                                     ; DF91 60                       `

; ----------------------------------------------------------------------------
LDF92:
        pla                                     ; DF92 68                       h
LDF93:
        rts                                     ; DF93 60                       `

; ----------------------------------------------------------------------------
LDF94:
        jsr     LDFBB                           ; DF94 20 BB DF                  ..
        jsr     LDF7D                           ; DF97 20 7D DF                  }.
        cmp     LDF79,x                         ; DF9A DD 79 DF                 .y.
        rts                                     ; DF9D 60                       `

; ----------------------------------------------------------------------------
LDF9E:
        .byte   $24,$6D,$8A,$C9                 ; DF9E 24 6D 8A C9              $m..
; ----------------------------------------------------------------------------
LDFA2:
        jsr     LDFBB                           ; DFA2 20 BB DF                  ..
        jsr     LDF7D                           ; DFA5 20 7D DF                  }.
        cmp     LDF9E,x                         ; DFA8 DD 9E DF                 ...
        rts                                     ; DFAB 60                       `

; ----------------------------------------------------------------------------
LDFAC:
        cmp     #$C2                            ; DFAC C9 C2                    ..
        beq     LDFB6                           ; DFAE F0 06                    ..
        cmp     #$C3                            ; DFB0 C9 C3                    ..
        beq     LDFB6                           ; DFB2 F0 02                    ..
        clc                                     ; DFB4 18                       .
        rts                                     ; DFB5 60                       `

; ----------------------------------------------------------------------------
LDFB6:
        lda     #$01                            ; DFB6 A9 01                    ..
        sta     Square2SoundQueue               ; DFB8 85 FE                    ..
        rts                                     ; DFBA 60                       `

; ----------------------------------------------------------------------------
LDFBB:
        tay                                     ; DFBB A8                       .
        and     #$C0                            ; DFBC 29 C0                    ).
        asl     a                               ; DFBE 0A                       .
        rol     a                               ; DFBF 2A                       *
        rol     a                               ; DFC0 2A                       *
        tax                                     ; DFC1 AA                       .
        tya                                     ; DFC2 98                       .
LDFC3:
        rts                                     ; DFC3 60                       `

; ----------------------------------------------------------------------------
LDFC4:
        .byte   $01,$01,$02,$02,$02,$05         ; DFC4 01 01 02 02 02 05        ......
LDFCA:
        .byte   $10,$F0                         ; DFCA 10 F0                    ..
; ----------------------------------------------------------------------------
LDFCC:
        lda     Enemy_State,x                   ; DFCC B5 1E                    ..
        and     #$20                            ; DFCE 29 20                    ) 
        bne     LDFC3                           ; DFD0 D0 F1                    ..
        jsr     LE166                           ; DFD2 20 66 E1                  f.
        bcc     LDFC3                           ; DFD5 90 EC                    ..
        ldy     Enemy_ID,x                      ; DFD7 B4 16                    ..
        cpy     #$12                            ; DFD9 C0 12                    ..
        bne     LDFE3                           ; DFDB D0 06                    ..
        .byte   $B5,$CF,$C9,$25,$90,$E0         ; DFDD B5 CF C9 25 90 E0        ...%..
; ----------------------------------------------------------------------------
LDFE3:
        cpy     #$0E                            ; DFE3 C0 0E                    ..
        bne     LDFEA                           ; DFE5 D0 03                    ..
        .byte   $4C,$6E,$E1                     ; DFE7 4C 6E E1                 Ln.
; ----------------------------------------------------------------------------
LDFEA:
        cpy     #$05                            ; DFEA C0 05                    ..
        bne     LDFF1                           ; DFEC D0 03                    ..
        .byte   $4C,$90,$E1                     ; DFEE 4C 90 E1                 L..
; ----------------------------------------------------------------------------
LDFF1:
        cpy     #$12                            ; DFF1 C0 12                    ..
        beq     LDFFD                           ; DFF3 F0 08                    ..
        cpy     #$2E                            ; DFF5 C0 2E                    ..
        beq     LDFFD                           ; DFF7 F0 04                    ..
        cpy     #$07                            ; DFF9 C0 07                    ..
        bcs     LE071                           ; DFFB B0 74                    .t
LDFFD:
LDFFF           := * + 2
        jsr     LE1B9                           ; DFFD 20 B9 E1                  ..
LE000:
        bne     LE005                           ; E000 D0 03                    ..
LE002:
        jmp     LE0ED                           ; E002 4C ED E0                 L..

; ----------------------------------------------------------------------------
LE005:
        jsr     LE1C0                           ; E005 20 C0 E1                  ..
        beq     LE002                           ; E008 F0 F8                    ..
        cmp     #$23                            ; E00A C9 23                    .#
        bne     LE072                           ; E00C D0 64                    .d
        ldy     $02                             ; E00E A4 02                    ..
        lda     #$00                            ; E010 A9 00                    ..
        sta     ($06),y                         ; E012 91 06                    ..
        lda     Enemy_ID,x                      ; E014 B5 16                    ..
        cmp     #$15                            ; E016 C9 15                    ..
        bcs     LE026                           ; E018 B0 0C                    ..
        cmp     #$06                            ; E01A C9 06                    ..
        bne     LE021                           ; E01C D0 03                    ..
        .byte   $20,$99,$E1                     ; E01E 20 99 E1                  ..
; ----------------------------------------------------------------------------
LE021:
        lda     #$01                            ; E021 A9 01                    ..
        jsr     LD9F7                           ; E023 20 F7 D9                  ..
LE026:
        cmp     #$09                            ; E026 C9 09                    ..
        bcc     LE03A                           ; E028 90 10                    ..
        cmp     #$11                            ; E02A C9 11                    ..
        bcs     LE03A                           ; E02C B0 0C                    ..
        cmp     #$0A                            ; E02E C9 0A                    ..
        bcc     LE036                           ; E030 90 04                    ..
        cmp     #$0D                            ; E032 C9 0D                    ..
        bcc     LE03A                           ; E034 90 04                    ..
LE036:
        and     #$01                            ; E036 29 01                    ).
        sta     Enemy_ID,x                      ; E038 95 16                    ..
LE03A:
        lda     Enemy_State,x                   ; E03A B5 1E                    ..
        and     #$F0                            ; E03C 29 F0                    ).
        ora     #$02                            ; E03E 09 02                    ..
        sta     Enemy_State,x                   ; E040 95 1E                    ..
        dec     Enemy_Y_Position,x              ; E042 D6 CF                    ..
        dec     Enemy_Y_Position,x              ; E044 D6 CF                    ..
        lda     Enemy_ID,x                      ; E046 B5 16                    ..
        cmp     #$07                            ; E048 C9 07                    ..
        beq     LE053                           ; E04A F0 07                    ..
        lda     #$FD                            ; E04C A9 FD                    ..
        ldy     AreaType                        ; E04E AC 4E 07                 .N.
        bne     LE055                           ; E051 D0 02                    ..
LE053:
        lda     #$FF                            ; E053 A9 FF                    ..
LE055:
        sta     Enemy_Y_Speed,x                 ; E055 95 A0                    ..
        ldy     #$01                            ; E057 A0 01                    ..
        jsr     LE14E                           ; E059 20 4E E1                  N.
        bpl     LE05F                           ; E05C 10 01                    ..
        iny                                     ; E05E C8                       .
LE05F:
        lda     Enemy_ID,x                      ; E05F B5 16                    ..
        cmp     #$33                            ; E061 C9 33                    .3
        beq     LE06B                           ; E063 F0 06                    ..
        cmp     #$08                            ; E065 C9 08                    ..
        beq     LE06B                           ; E067 F0 02                    ..
        sty     Enemy_MovingDir,x               ; E069 94 46                    .F
LE06B:
        dey                                     ; E06B 88                       .
        lda     LDFCA,y                         ; E06C B9 CA DF                 ...
        sta     Enemy_X_Speed,x                 ; E06F 95 58                    .X
LE071:
        rts                                     ; E071 60                       `

; ----------------------------------------------------------------------------
LE072:
        lda     $04                             ; E072 A5 04                    ..
        sec                                     ; E074 38                       8
        sbc     #$08                            ; E075 E9 08                    ..
        cmp     #$05                            ; E077 C9 05                    ..
        bcs     LE0ED                           ; E079 B0 72                    .r
        lda     Enemy_State,x                   ; E07B B5 1E                    ..
        and     #$40                            ; E07D 29 40                    )@
        bne     LE0D8                           ; E07F D0 57                    .W
        lda     Enemy_State,x                   ; E081 B5 1E                    ..
        asl     a                               ; E083 0A                       .
        bcc     LE089                           ; E084 90 03                    ..
LE086:
        jmp     LE109                           ; E086 4C 09 E1                 L..

; ----------------------------------------------------------------------------
LE089:
        lda     Enemy_State,x                   ; E089 B5 1E                    ..
        beq     LE086                           ; E08B F0 F9                    ..
        cmp     #$05                            ; E08D C9 05                    ..
        beq     LE0B0                           ; E08F F0 1F                    ..
        cmp     #$03                            ; E091 C9 03                    ..
        bcs     LE0AF                           ; E093 B0 1A                    ..
        lda     Enemy_State,x                   ; E095 B5 1E                    ..
        cmp     #$02                            ; E097 C9 02                    ..
        bne     LE0B0                           ; E099 D0 15                    ..
        lda     #$10                            ; E09B A9 10                    ..
        ldy     Enemy_ID,x                      ; E09D B4 16                    ..
        cpy     #$12                            ; E09F C0 12                    ..
        bne     LE0A5                           ; E0A1 D0 02                    ..
        .byte   $A9,$00                         ; E0A3 A9 00                    ..
; ----------------------------------------------------------------------------
LE0A5:
        sta     EnemyIntervalTimer,x            ; E0A5 9D 96 07                 ...
        lda     #$03                            ; E0A8 A9 03                    ..
        sta     Enemy_State,x                   ; E0AA 95 1E                    ..
        jsr     LE15A                           ; E0AC 20 5A E1                  Z.
LE0AF:
        rts                                     ; E0AF 60                       `

; ----------------------------------------------------------------------------
LE0B0:
        lda     Enemy_ID,x                      ; E0B0 B5 16                    ..
        cmp     #$06                            ; E0B2 C9 06                    ..
        beq     LE0D8                           ; E0B4 F0 22                    ."
        cmp     #$12                            ; E0B6 C9 12                    ..
        bne     LE0C8                           ; E0B8 D0 0E                    ..
        .byte   $A9,$01,$95,$46,$A9,$08,$95,$58 ; E0BA A9 01 95 46 A9 08 95 58  ...F...X
        .byte   $A5,$09,$29,$07,$F0,$10         ; E0C2 A5 09 29 07 F0 10        ..)...
; ----------------------------------------------------------------------------
LE0C8:
        ldy     #$01                            ; E0C8 A0 01                    ..
        jsr     LE14E                           ; E0CA 20 4E E1                  N.
        bpl     LE0D0                           ; E0CD 10 01                    ..
        iny                                     ; E0CF C8                       .
LE0D0:
        tya                                     ; E0D0 98                       .
        cmp     Enemy_MovingDir,x               ; E0D1 D5 46                    .F
        bne     LE0D8                           ; E0D3 D0 03                    ..
        jsr     LE12F                           ; E0D5 20 2F E1                  /.
LE0D8:
        jsr     LE15A                           ; E0D8 20 5A E1                  Z.
        lda     Enemy_State,x                   ; E0DB B5 1E                    ..
        and     #$80                            ; E0DD 29 80                    ).
        bne     LE0E6                           ; E0DF D0 05                    ..
        lda     #$00                            ; E0E1 A9 00                    ..
        sta     Enemy_State,x                   ; E0E3 95 1E                    ..
        rts                                     ; E0E5 60                       `

; ----------------------------------------------------------------------------
LE0E6:
        lda     Enemy_State,x                   ; E0E6 B5 1E                    ..
        and     #$BF                            ; E0E8 29 BF                    ).
        sta     Enemy_State,x                   ; E0EA 95 1E                    ..
        rts                                     ; E0EC 60                       `

; ----------------------------------------------------------------------------
LE0ED:
        lda     Enemy_ID,x                      ; E0ED B5 16                    ..
        cmp     #$03                            ; E0EF C9 03                    ..
        bne     LE0F7                           ; E0F1 D0 04                    ..
        lda     Enemy_State,x                   ; E0F3 B5 1E                    ..
        beq     LE12F                           ; E0F5 F0 38                    .8
LE0F7:
        lda     Enemy_State,x                   ; E0F7 B5 1E                    ..
        tay                                     ; E0F9 A8                       .
        asl     a                               ; E0FA 0A                       .
        bcc     LE104                           ; E0FB 90 07                    ..
        lda     Enemy_State,x                   ; E0FD B5 1E                    ..
        ora     #$40                            ; E0FF 09 40                    .@
        jmp     LE107                           ; E101 4C 07 E1                 L..

; ----------------------------------------------------------------------------
LE104:
        lda     LDFC4,y                         ; E104 B9 C4 DF                 ...
LE107:
        sta     Enemy_State,x                   ; E107 95 1E                    ..
LE109:
        lda     Enemy_Y_Position,x              ; E109 B5 CF                    ..
        cmp     #$20                            ; E10B C9 20                    . 
        bcc     LE12E                           ; E10D 90 1F                    ..
        ldy     #$16                            ; E10F A0 16                    ..
        lda     #$02                            ; E111 A9 02                    ..
        sta     $EB                             ; E113 85 EB                    ..
LE115:
        lda     $EB                             ; E115 A5 EB                    ..
        cmp     Enemy_MovingDir,x               ; E117 D5 46                    .F
        bne     LE127                           ; E119 D0 0C                    ..
        lda     #$01                            ; E11B A9 01                    ..
        jsr     LE39B                           ; E11D 20 9B E3                  ..
        beq     LE127                           ; E120 F0 05                    ..
        jsr     LE1C0                           ; E122 20 C0 E1                  ..
        bne     LE12F                           ; E125 D0 08                    ..
LE127:
        dec     $EB                             ; E127 C6 EB                    ..
        iny                                     ; E129 C8                       .
        cpy     #$18                            ; E12A C0 18                    ..
        bcc     LE115                           ; E12C 90 E7                    ..
LE12E:
        rts                                     ; E12E 60                       `

; ----------------------------------------------------------------------------
LE12F:
        cpx     #$05                            ; E12F E0 05                    ..
        beq     LE13C                           ; E131 F0 09                    ..
        lda     Enemy_State,x                   ; E133 B5 1E                    ..
        asl     a                               ; E135 0A                       .
        bcc     LE13C                           ; E136 90 04                    ..
        .byte   $A9,$02,$85,$FF                 ; E138 A9 02 85 FF              ....
; ----------------------------------------------------------------------------
LE13C:
        lda     Enemy_ID,x                      ; E13C B5 16                    ..
        cmp     #$05                            ; E13E C9 05                    ..
        bne     LE14B                           ; E140 D0 09                    ..
        .byte   $A9,$00,$85,$00,$A0,$FA,$4C,$FE ; E142 A9 00 85 00 A0 FA 4C FE  ......L.
        .byte   $C9                             ; E14A C9                       .
; ----------------------------------------------------------------------------
LE14B:
        jmp     LDB1C                           ; E14B 4C 1C DB                 L..

; ----------------------------------------------------------------------------
LE14E:
        lda     Enemy_X_Position,x              ; E14E B5 87                    ..
        sec                                     ; E150 38                       8
        sbc     SprObject_X_Position            ; E151 E5 86                    ..
        sta     $00                             ; E153 85 00                    ..
        lda     Enemy_PageLoc,x                 ; E155 B5 6E                    .n
        sbc     SprObject_PageLoc               ; E157 E5 6D                    .m
        rts                                     ; E159 60                       `

; ----------------------------------------------------------------------------
LE15A:
        jsr     LC31C                           ; E15A 20 1C C3                  ..
        lda     Enemy_Y_Position,x              ; E15D B5 CF                    ..
        and     #$F0                            ; E15F 29 F0                    ).
        ora     #$08                            ; E161 09 08                    ..
        sta     Enemy_Y_Position,x              ; E163 95 CF                    ..
        rts                                     ; E165 60                       `

; ----------------------------------------------------------------------------
LE166:
        lda     Enemy_Y_Position,x              ; E166 B5 CF                    ..
        clc                                     ; E168 18                       .
        adc     #$3E                            ; E169 69 3E                    i>
        cmp     #$44                            ; E16B C9 44                    .D
        rts                                     ; E16D 60                       `

; ----------------------------------------------------------------------------
LE16E:
        jsr     LE166                           ; E16E 20 66 E1                  f.
        bcc     LE18D                           ; E171 90 1A                    ..
        lda     Enemy_Y_Speed,x                 ; E173 B5 A0                    ..
        clc                                     ; E175 18                       .
        adc     #$02                            ; E176 69 02                    i.
        cmp     #$03                            ; E178 C9 03                    ..
        bcc     LE18D                           ; E17A 90 11                    ..
        jsr     LE1B9                           ; E17C 20 B9 E1                  ..
        beq     LE18D                           ; E17F F0 0C                    ..
        jsr     LE1C0                           ; E181 20 C0 E1                  ..
        beq     LE18D                           ; E184 F0 07                    ..
        jsr     LE15A                           ; E186 20 5A E1                  Z.
        lda     #$FD                            ; E189 A9 FD                    ..
        sta     Enemy_Y_Speed,x                 ; E18B 95 A0                    ..
LE18D:
        jmp     LE109                           ; E18D 4C 09 E1                 L..

; ----------------------------------------------------------------------------
        .byte   $20,$B9,$E1,$F0,$1D,$C9,$23,$D0 ; E190 20 B9 E1 F0 1D C9 23 D0   .....#.
        .byte   $08,$20,$63,$D7,$A9,$FC,$95,$A0 ; E198 08 20 63 D7 A9 FC 95 A0  . c.....
        .byte   $60,$BD,$8A,$07,$D0,$0C,$B5,$1E ; E1A0 60 BD 8A 07 D0 0C B5 1E  `.......
        .byte   $29,$88,$95,$1E,$20,$5A,$E1,$4C ; E1A8 29 88 95 1E 20 5A E1 4C  )... Z.L
        .byte   $09,$E1,$B5,$1E,$09,$01,$95,$1E ; E1B0 09 E1 B5 1E 09 01 95 1E  ........
        .byte   $60                             ; E1B8 60                       `
; ----------------------------------------------------------------------------
LE1B9:
        lda     #$00                            ; E1B9 A9 00                    ..
        ldy     #$15                            ; E1BB A0 15                    ..
        jmp     LE39B                           ; E1BD 4C 9B E3                 L..

; ----------------------------------------------------------------------------
LE1C0:
        cmp     #$26                            ; E1C0 C9 26                    .&
        beq     LE1DA                           ; E1C2 F0 16                    ..
        cmp     #$C2                            ; E1C4 C9 C2                    ..
        beq     LE1DA                           ; E1C6 F0 12                    ..
        cmp     #$C3                            ; E1C8 C9 C3                    ..
        beq     LE1DA                           ; E1CA F0 0E                    ..
        cmp     #$5F                            ; E1CC C9 5F                    ._
        beq     LE1DA                           ; E1CE F0 0A                    ..
        cmp     #$60                            ; E1D0 C9 60                    .`
        beq     LE1DA                           ; E1D2 F0 06                    ..
        cmp     #$C5                            ; E1D4 C9 C5                    ..
        beq     LE1DA                           ; E1D6 F0 02                    ..
        cmp     #$C6                            ; E1D8 C9 C6                    ..
LE1DA:
        rts                                     ; E1DA 60                       `

; ----------------------------------------------------------------------------
LE1DB:
        lda     Fireball_Y_Position,x           ; E1DB B5 D5                    ..
        cmp     #$18                            ; E1DD C9 18                    ..
        bcc     LE202                           ; E1DF 90 21                    .!
        jsr     LE3AF                           ; E1E1 20 AF E3                  ..
        beq     LE202                           ; E1E4 F0 1C                    ..
        jsr     LE1C0                           ; E1E6 20 C0 E1                  ..
        beq     LE202                           ; E1E9 F0 17                    ..
        lda     Fireball_Y_Speed,x              ; E1EB B5 A6                    ..
        bmi     LE207                           ; E1ED 30 18                    0.
        lda     FireballBouncingFlag,x          ; E1EF B5 3A                    .:
        bne     LE207                           ; E1F1 D0 14                    ..
        lda     #$FD                            ; E1F3 A9 FD                    ..
        sta     Fireball_Y_Speed,x              ; E1F5 95 A6                    ..
        lda     #$01                            ; E1F7 A9 01                    ..
        sta     FireballBouncingFlag,x          ; E1F9 95 3A                    .:
        lda     Fireball_Y_Position,x           ; E1FB B5 D5                    ..
        and     #$F8                            ; E1FD 29 F8                    ).
        sta     Fireball_Y_Position,x           ; E1FF 95 D5                    ..
        rts                                     ; E201 60                       `

; ----------------------------------------------------------------------------
LE202:
        lda     #$00                            ; E202 A9 00                    ..
        sta     FireballBouncingFlag,x          ; E204 95 3A                    .:
        rts                                     ; E206 60                       `

; ----------------------------------------------------------------------------
LE207:
        lda     #$80                            ; E207 A9 80                    ..
        sta     Fireball_State,x                ; E209 95 24                    .$
        lda     #$02                            ; E20B A9 02                    ..
        sta     Square1SoundQueue               ; E20D 85 FF                    ..
        rts                                     ; E20F 60                       `

; ----------------------------------------------------------------------------
LE210:
        .byte   $02,$08                         ; E210 02 08                    ..
LE212:
        .byte   $0E,$20,$03,$14,$0D,$20,$02,$14 ; E212 0E 20 03 14 0D 20 02 14  . ... ..
        .byte   $0E,$20,$02,$09,$0E,$15,$00,$00 ; E21A 0E 20 02 09 0E 15 00 00  . ......
        .byte   $18,$06,$00,$00,$20,$0D,$00,$00 ; E222 18 06 00 00 20 0D 00 00  .... ...
        .byte   $30,$0D,$00,$00,$08,$08,$06,$04 ; E22A 30 0D 00 00 08 08 06 04  0.......
        .byte   $0A,$08,$03,$0E,$0D,$14,$00,$02 ; E232 0A 08 03 0E 0D 14 00 02  ........
        .byte   $10,$15,$04,$04,$0C,$1C         ; E23A 10 15 04 04 0C 1C        ......
; ----------------------------------------------------------------------------
LE240:
        txa                                     ; E240 8A                       .
        clc                                     ; E241 18                       .
        adc     #$07                            ; E242 69 07                    i.
        tax                                     ; E244 AA                       .
        ldy     #$02                            ; E245 A0 02                    ..
        bne     LE250                           ; E247 D0 07                    ..
LE249:
        txa                                     ; E249 8A                       .
        clc                                     ; E24A 18                       .
        adc     #$09                            ; E24B 69 09                    i.
        tax                                     ; E24D AA                       .
        ldy     #$06                            ; E24E A0 06                    ..
LE250:
        jsr     LE2AF                           ; E250 20 AF E2                  ..
        jmp     LE2F1                           ; E253 4C F1 E2                 L..

; ----------------------------------------------------------------------------
LE256:
        ldy     #$48                            ; E256 A0 48                    .H
        sty     $00                             ; E258 84 00                    ..
        ldy     #$44                            ; E25A A0 44                    .D
        jmp     LE265                           ; E25C 4C 65 E2                 Le.

; ----------------------------------------------------------------------------
        .byte   $A0,$08,$84,$00,$A0,$04         ; E25F A0 08 84 00 A0 04        ......
; ----------------------------------------------------------------------------
LE265:
        lda     Enemy_X_Position,x              ; E265 B5 87                    ..
        sec                                     ; E267 38                       8
        sbc     ScreenEdge_X_Pos                ; E268 ED 1C 07                 ...
        sta     $01                             ; E26B 85 01                    ..
        lda     Enemy_PageLoc,x                 ; E26D B5 6E                    .n
        sbc     ScreenEdge_PageLoc              ; E26F ED 1A 07                 ...
        bmi     LE27A                           ; E272 30 06                    0.
        ora     $01                             ; E274 05 01                    ..
        beq     LE27A                           ; E276 F0 02                    ..
        ldy     $00                             ; E278 A4 00                    ..
LE27A:
        tya                                     ; E27A 98                       .
        and     Enemy_OffscreenBits             ; E27B 2D D1 03                 -..
        sta     EnemyOffscrBitsMasked,x         ; E27E 9D D8 03                 ...
        bne     LE29C                           ; E281 D0 19                    ..
        jmp     LE28F                           ; E283 4C 8F E2                 L..

; ----------------------------------------------------------------------------
LE286:
        inx                                     ; E286 E8                       .
        jsr     LF23B                           ; E287 20 3B F2                  ;.
        dex                                     ; E28A CA                       .
        cmp     #$FE                            ; E28B C9 FE                    ..
        bcs     LE29C                           ; E28D B0 0D                    ..
LE28F:
        txa                                     ; E28F 8A                       .
        clc                                     ; E290 18                       .
        adc     #$01                            ; E291 69 01                    i.
        tax                                     ; E293 AA                       .
        ldy     #$01                            ; E294 A0 01                    ..
        jsr     LE2AF                           ; E296 20 AF E2                  ..
        jmp     LE2F1                           ; E299 4C F1 E2                 L..

; ----------------------------------------------------------------------------
LE29C:
        txa                                     ; E29C 8A                       .
        asl     a                               ; E29D 0A                       .
        asl     a                               ; E29E 0A                       .
        tay                                     ; E29F A8                       .
        lda     #$FF                            ; E2A0 A9 FF                    ..
        sta     EnemyBoundingBoxCoord,y         ; E2A2 99 B0 04                 ...
        sta     $04B1,y                         ; E2A5 99 B1 04                 ...
        sta     $04B2,y                         ; E2A8 99 B2 04                 ...
        sta     $04B3,y                         ; E2AB 99 B3 04                 ...
        rts                                     ; E2AE 60                       `

; ----------------------------------------------------------------------------
LE2AF:
        stx     $00                             ; E2AF 86 00                    ..
        lda     SprObject_Rel_YPos,y            ; E2B1 B9 B8 03                 ...
        sta     $02                             ; E2B4 85 02                    ..
        lda     SprObject_Rel_XPos,y            ; E2B6 B9 AD 03                 ...
        sta     $01                             ; E2B9 85 01                    ..
        txa                                     ; E2BB 8A                       .
        asl     a                               ; E2BC 0A                       .
        asl     a                               ; E2BD 0A                       .
        pha                                     ; E2BE 48                       H
        tay                                     ; E2BF A8                       .
        lda     SprObj_BoundBoxCtrl,x           ; E2C0 BD 99 04                 ...
        asl     a                               ; E2C3 0A                       .
        asl     a                               ; E2C4 0A                       .
        tax                                     ; E2C5 AA                       .
        lda     $01                             ; E2C6 A5 01                    ..
        clc                                     ; E2C8 18                       .
        adc     LE210,x                         ; E2C9 7D 10 E2                 }..
        sta     BoundingBox_UL_XPos,y           ; E2CC 99 AC 04                 ...
        lda     $01                             ; E2CF A5 01                    ..
        clc                                     ; E2D1 18                       .
        adc     LE212,x                         ; E2D2 7D 12 E2                 }..
        sta     BoundingBox_DR_XPos,y           ; E2D5 99 AE 04                 ...
        inx                                     ; E2D8 E8                       .
        iny                                     ; E2D9 C8                       .
        lda     $02                             ; E2DA A5 02                    ..
        clc                                     ; E2DC 18                       .
        adc     LE210,x                         ; E2DD 7D 10 E2                 }..
        sta     BoundingBox_UL_XPos,y           ; E2E0 99 AC 04                 ...
        lda     $02                             ; E2E3 A5 02                    ..
        clc                                     ; E2E5 18                       .
        adc     LE212,x                         ; E2E6 7D 12 E2                 }..
        sta     BoundingBox_DR_XPos,y           ; E2E9 99 AE 04                 ...
        pla                                     ; E2EC 68                       h
        tay                                     ; E2ED A8                       .
        ldx     $00                             ; E2EE A6 00                    ..
        rts                                     ; E2F0 60                       `

; ----------------------------------------------------------------------------
LE2F1:
        lda     ScreenEdge_X_Pos                ; E2F1 AD 1C 07                 ...
        clc                                     ; E2F4 18                       .
        adc     #$80                            ; E2F5 69 80                    i.
        sta     $02                             ; E2F7 85 02                    ..
        lda     ScreenEdge_PageLoc              ; E2F9 AD 1A 07                 ...
        adc     #$00                            ; E2FC 69 00                    i.
        sta     $01                             ; E2FE 85 01                    ..
        lda     SprObject_X_Position,x          ; E300 B5 86                    ..
        cmp     $02                             ; E302 C5 02                    ..
        lda     SprObject_PageLoc,x             ; E304 B5 6D                    .m
        sbc     $01                             ; E306 E5 01                    ..
        bcc     LE31F                           ; E308 90 15                    ..
        lda     BoundingBox_DR_XPos,y           ; E30A B9 AE 04                 ...
        bmi     LE31C                           ; E30D 30 0D                    0.
        lda     #$FF                            ; E30F A9 FF                    ..
        ldx     BoundingBox_UL_XPos,y           ; E311 BE AC 04                 ...
        bmi     LE319                           ; E314 30 03                    0.
        sta     BoundingBox_UL_XPos,y           ; E316 99 AC 04                 ...
LE319:
        sta     BoundingBox_DR_XPos,y           ; E319 99 AE 04                 ...
LE31C:
        ldx     ObjectOffset                    ; E31C A6 08                    ..
        rts                                     ; E31E 60                       `

; ----------------------------------------------------------------------------
LE31F:
        lda     BoundingBox_UL_XPos,y           ; E31F B9 AC 04                 ...
        bpl     LE335                           ; E322 10 11                    ..
        cmp     #$A0                            ; E324 C9 A0                    ..
        bcc     LE335                           ; E326 90 0D                    ..
        lda     #$00                            ; E328 A9 00                    ..
        ldx     BoundingBox_DR_XPos,y           ; E32A BE AE 04                 ...
        bpl     LE332                           ; E32D 10 03                    ..
        sta     BoundingBox_DR_XPos,y           ; E32F 99 AE 04                 ...
LE332:
        sta     BoundingBox_UL_XPos,y           ; E332 99 AC 04                 ...
LE335:
        ldx     ObjectOffset                    ; E335 A6 08                    ..
        rts                                     ; E337 60                       `

; ----------------------------------------------------------------------------
LE338:
        ldx     #$00                            ; E338 A2 00                    ..
LE33A:
        sty     $06                             ; E33A 84 06                    ..
        lda     #$01                            ; E33C A9 01                    ..
        sta     $07                             ; E33E 85 07                    ..
LE340:
        lda     BoundingBox_UL_XPos,y           ; E340 B9 AC 04                 ...
        cmp     BoundingBox_UL_XPos,x           ; E343 DD AC 04                 ...
        bcs     LE372                           ; E346 B0 2A                    .*
        cmp     BoundingBox_DR_XPos,x           ; E348 DD AE 04                 ...
        bcc     LE35F                           ; E34B 90 12                    ..
        beq     LE391                           ; E34D F0 42                    .B
        lda     BoundingBox_DR_XPos,y           ; E34F B9 AE 04                 ...
        cmp     BoundingBox_UL_XPos,y           ; E352 D9 AC 04                 ...
        bcc     LE391                           ; E355 90 3A                    .:
        cmp     BoundingBox_UL_XPos,x           ; E357 DD AC 04                 ...
        bcs     LE391                           ; E35A B0 35                    .5
        ldy     $06                             ; E35C A4 06                    ..
        rts                                     ; E35E 60                       `

; ----------------------------------------------------------------------------
LE35F:
        lda     BoundingBox_DR_XPos,x           ; E35F BD AE 04                 ...
        cmp     BoundingBox_UL_XPos,x           ; E362 DD AC 04                 ...
        bcc     LE391                           ; E365 90 2A                    .*
        lda     BoundingBox_DR_XPos,y           ; E367 B9 AE 04                 ...
        cmp     BoundingBox_UL_XPos,x           ; E36A DD AC 04                 ...
        bcs     LE391                           ; E36D B0 22                    ."
        ldy     $06                             ; E36F A4 06                    ..
        rts                                     ; E371 60                       `

; ----------------------------------------------------------------------------
LE372:
        cmp     BoundingBox_UL_XPos,x           ; E372 DD AC 04                 ...
        beq     LE391                           ; E375 F0 1A                    ..
        cmp     BoundingBox_DR_XPos,x           ; E377 DD AE 04                 ...
        bcc     LE391                           ; E37A 90 15                    ..
        beq     LE391                           ; E37C F0 13                    ..
        cmp     BoundingBox_DR_XPos,y           ; E37E D9 AE 04                 ...
        bcc     LE38D                           ; E381 90 0A                    ..
        beq     LE38D                           ; E383 F0 08                    ..
        .byte   $B9,$AE,$04,$DD,$AC,$04,$B0,$04 ; E385 B9 AE 04 DD AC 04 B0 04  ........
; ----------------------------------------------------------------------------
LE38D:
        clc                                     ; E38D 18                       .
        ldy     $06                             ; E38E A4 06                    ..
        rts                                     ; E390 60                       `

; ----------------------------------------------------------------------------
LE391:
        inx                                     ; E391 E8                       .
        iny                                     ; E392 C8                       .
        dec     $07                             ; E393 C6 07                    ..
        bpl     LE340                           ; E395 10 A9                    ..
        sec                                     ; E397 38                       8
        ldy     $06                             ; E398 A4 06                    ..
        rts                                     ; E39A 60                       `

; ----------------------------------------------------------------------------
LE39B:
        pha                                     ; E39B 48                       H
        txa                                     ; E39C 8A                       .
        clc                                     ; E39D 18                       .
        adc     #$01                            ; E39E 69 01                    i.
        tax                                     ; E3A0 AA                       .
        pla                                     ; E3A1 68                       h
        jmp     LE3B8                           ; E3A2 4C B8 E3                 L..

; ----------------------------------------------------------------------------
        .byte   $8A,$18,$69,$0D,$AA,$A0,$1B,$4C ; E3A5 8A 18 69 0D AA A0 1B 4C  ..i....L
        .byte   $B6,$E3                         ; E3AD B6 E3                    ..
; ----------------------------------------------------------------------------
LE3AF:
        ldy     #$1A                            ; E3AF A0 1A                    ..
        txa                                     ; E3B1 8A                       .
        clc                                     ; E3B2 18                       .
        adc     #$07                            ; E3B3 69 07                    i.
        tax                                     ; E3B5 AA                       .
        lda     #$00                            ; E3B6 A9 00                    ..
LE3B8:
        jsr     LE403                           ; E3B8 20 03 E4                  ..
        ldx     ObjectOffset                    ; E3BB A6 08                    ..
        cmp     #$00                            ; E3BD C9 00                    ..
        rts                                     ; E3BF 60                       `

; ----------------------------------------------------------------------------
LE3C0:
        .byte   $00,$07,$0E                     ; E3C0 00 07 0E                 ...
LE3C3:
        .byte   $08,$03,$0C,$02,$02,$0D,$0D,$08 ; E3C3 08 03 0C 02 02 0D 0D 08  ........
        .byte   $03,$0C,$02,$02,$0D,$0D,$08,$03 ; E3CB 03 0C 02 02 0D 0D 08 03  ........
        .byte   $0C,$02,$02,$0D,$0D,$08,$00,$10 ; E3D3 0C 02 02 0D 0D 08 00 10  ........
        .byte   $04,$14,$04,$04                 ; E3DB 04 14 04 04              ....
LE3DF:
        .byte   $04,$20,$20,$08,$18,$08,$18,$02 ; E3DF 04 20 20 08 18 08 18 02  .  .....
        .byte   $20,$20,$08,$18,$08,$18,$12,$20 ; E3E7 20 20 08 18 08 18 12 20    ..... 
        .byte   $20,$18,$18,$18,$18,$18,$14,$14 ; E3EF 20 18 18 18 18 18 14 14   .......
        .byte   $06,$06,$08,$10                 ; E3F7 06 06 08 10              ....
; ----------------------------------------------------------------------------
LE3FB:
        iny                                     ; E3FB C8                       .
LE3FC:
        lda     #$00                            ; E3FC A9 00                    ..
LE3FF           := * + 1
        bit     $01A9                           ; E3FE 2C A9 01                 ,..
        ldx     #$00                            ; E401 A2 00                    ..
LE403:
        pha                                     ; E403 48                       H
        sty     $04                             ; E404 84 04                    ..
        lda     LE3C3,y                         ; E406 B9 C3 E3                 ...
        clc                                     ; E409 18                       .
        adc     SprObject_X_Position,x          ; E40A 75 86                    u.
        sta     $05                             ; E40C 85 05                    ..
        lda     SprObject_PageLoc,x             ; E40E B5 6D                    .m
        adc     #$00                            ; E410 69 00                    i.
        and     #$01                            ; E412 29 01                    ).
        lsr     a                               ; E414 4A                       J
        ora     $05                             ; E415 05 05                    ..
        ror     a                               ; E417 6A                       j
        lsr     a                               ; E418 4A                       J
        lsr     a                               ; E419 4A                       J
        lsr     a                               ; E41A 4A                       J
        jsr     L9DD3                           ; E41B 20 D3 9D                  ..
        ldy     $04                             ; E41E A4 04                    ..
        lda     SprObject_Y_Position,x          ; E420 B5 CE                    ..
        clc                                     ; E422 18                       .
        adc     LE3DF,y                         ; E423 79 DF E3                 y..
        and     #$F0                            ; E426 29 F0                    ).
        sec                                     ; E428 38                       8
        sbc     #$20                            ; E429 E9 20                    . 
        sta     $02                             ; E42B 85 02                    ..
        tay                                     ; E42D A8                       .
        lda     ($06),y                         ; E42E B1 06                    ..
        sta     $03                             ; E430 85 03                    ..
        ldy     $04                             ; E432 A4 04                    ..
        pla                                     ; E434 68                       h
        bne     LE43C                           ; E435 D0 05                    ..
        lda     SprObject_Y_Position,x          ; E437 B5 CE                    ..
        jmp     LE43E                           ; E439 4C 3E E4                 L>.

; ----------------------------------------------------------------------------
LE43C:
        lda     SprObject_X_Position,x          ; E43C B5 86                    ..
LE43E:
        and     #$0F                            ; E43E 29 0F                    ).
        sta     $04                             ; E440 85 04                    ..
        lda     $03                             ; E442 A5 03                    ..
        rts                                     ; E444 60                       `

; ----------------------------------------------------------------------------
        .byte   $FF,$00,$30,$84,$00,$AD,$B9,$03 ; E445 FF 00 30 84 00 AD B9 03  ..0.....
        .byte   $18,$79,$46,$E4,$BE,$9A,$03,$BC ; E44D 18 79 46 E4 BE 9A 03 BC  .yF.....
        .byte   $E5,$06,$84,$02,$20,$C7,$E4,$AD ; E455 E5 06 84 02 20 C7 E4 AD  .... ...
        .byte   $AE,$03,$99,$03,$02,$99,$0B,$02 ; E45D AE 03 99 03 02 99 0B 02  ........
        .byte   $99,$13,$02,$18,$69,$06,$99,$07 ; E465 99 13 02 18 69 06 99 07  ....i...
        .byte   $02,$99,$0F,$02,$99,$17,$02,$A9 ; E46D 02 99 0F 02 99 17 02 A9  ........
        .byte   $21,$99,$02,$02,$99,$0A,$02,$99 ; E475 21 99 02 02 99 0A 02 99  !.......
        .byte   $12,$02,$09,$40,$99,$06,$02,$99 ; E47D 12 02 09 40 99 06 02 99  ...@....
        .byte   $0E,$02,$99,$16,$02,$A2,$05,$A9 ; E485 0E 02 99 16 02 A2 05 A9  ........
        .byte   $E1,$99,$01,$02,$C8,$C8,$C8,$C8 ; E48D E1 99 01 02 C8 C8 C8 C8  ........
        .byte   $CA,$10,$F4,$A4,$02,$A5,$00,$D0 ; E495 CA 10 F4 A4 02 A5 00 D0  ........
        .byte   $05,$A9,$E0,$99,$01,$02,$A2,$00 ; E49D 05 A9 E0 99 01 02 A2 00  ........
        .byte   $AD,$9D,$03,$38,$D9,$00,$02,$90 ; E4A5 AD 9D 03 38 D9 00 02 90  ...8....
        .byte   $08,$38,$F9,$00,$02,$C9,$64,$90 ; E4AD 08 38 F9 00 02 C9 64 90  .8....d.
        .byte   $05,$A9,$F8,$99,$00,$02,$C8,$C8 ; E4B5 05 A9 F8 99 00 02 C8 C8  ........
        .byte   $C8,$C8,$E8,$E0,$06,$D0,$E1,$A4 ; E4BD C8 C8 E8 E0 06 D0 E1 A4  ........
        .byte   $00,$60                         ; E4C5 00 60                    .`
; ----------------------------------------------------------------------------
LE4C7:
        ldx     #$06                            ; E4C7 A2 06                    ..
LE4C9:
        sta     Sprite_Y_Position,y             ; E4C9 99 00 02                 ...
        clc                                     ; E4CC 18                       .
        adc     #$08                            ; E4CD 69 08                    i.
        iny                                     ; E4CF C8                       .
        iny                                     ; E4D0 C8                       .
        iny                                     ; E4D1 C8                       .
        iny                                     ; E4D2 C8                       .
        dex                                     ; E4D3 CA                       .
        bne     LE4C9                           ; E4D4 D0 F3                    ..
        ldy     $02                             ; E4D6 A4 02                    ..
        rts                                     ; E4D8 60                       `

; ----------------------------------------------------------------------------
        .byte   $04,$00,$04,$00,$00,$04,$00,$04 ; E4D9 04 00 04 00 00 04 00 04  ........
        .byte   $00,$08,$00,$08,$08,$00,$08,$00 ; E4E1 00 08 00 08 08 00 08 00  ........
        .byte   $80,$82,$81,$83,$81,$83,$80,$82 ; E4E9 80 82 81 83 81 83 80 82  ........
        .byte   $03,$03,$C3,$C3,$BC,$F3,$06,$AD ; E4F1 03 03 C3 C3 BC F3 06 AD  ........
        .byte   $47,$07,$D0,$08,$B5,$2A,$29,$7F ; E4F9 47 07 D0 08 B5 2A 29 7F  G....*).
        .byte   $C9,$01,$F0,$04,$A2,$00,$F0,$07 ; E501 C9 01 F0 04 A2 00 F0 07  ........
        .byte   $A5,$09,$4A,$4A,$29,$03,$AA,$AD ; E509 A5 09 4A 4A 29 03 AA AD  ..JJ)...
        .byte   $BE,$03,$18,$7D,$DD,$E4,$99,$00 ; E511 BE 03 18 7D DD E4 99 00  ...}....
        .byte   $02,$18,$7D,$E5,$E4,$99,$04,$02 ; E519 02 18 7D E5 E4 99 04 02  ..}.....
        .byte   $AD,$B3,$03,$18,$7D,$D9,$E4,$99 ; E521 AD B3 03 18 7D D9 E4 99  ....}...
        .byte   $03,$02,$18,$7D,$E1,$E4,$99,$07 ; E529 03 02 18 7D E1 E4 99 07  ...}....
        .byte   $02,$BD,$E9,$E4,$99,$01,$02,$BD ; E531 02 BD E9 E4 99 01 02 BD  ........
        .byte   $ED,$E4,$99,$05,$02,$BD,$F1,$E4 ; E539 ED E4 99 05 02 BD F1 E4  ........
        .byte   $99,$02,$02,$99,$06,$02,$A6,$08 ; E541 99 02 02 99 06 02 A6 08  ........
        .byte   $AD,$D6,$03,$29,$FC,$F0,$09,$A9 ; E549 AD D6 03 29 FC F0 09 A9  ...)....
        .byte   $00,$95,$2A,$A9,$F8,$20,$DA,$E5 ; E551 00 95 2A A9 F8 20 DA E5  ..*.. ..
        .byte   $60                             ; E559 60                       `
LE55A:
        .byte   $F9                             ; E55A F9                       .
LE55B:
        .byte   $50,$F7,$50,$FA,$FB,$F8,$FB,$F6 ; E55B 50 F7 50 FA FB F8 FB F6  P.P.....
        .byte   $FB                             ; E563 FB                       .
; ----------------------------------------------------------------------------
LE564:
        ldy     Enemy_SprDataOffset,x           ; E564 BC E5 06                 ...
        lda     Enemy_Rel_XPos                  ; E567 AD AE 03                 ...
        sta     Sprite_X_Position,y             ; E56A 99 03 02                 ...
        clc                                     ; E56D 18                       .
        adc     #$08                            ; E56E 69 08                    i.
        sta     $0207,y                         ; E570 99 07 02                 ...
        sta     $020B,y                         ; E573 99 0B 02                 ...
        clc                                     ; E576 18                       .
        adc     #$0C                            ; E577 69 0C                    i.
        sta     $05                             ; E579 85 05                    ..
        lda     Enemy_Y_Position,x              ; E57B B5 CF                    ..
        jsr     LE5DA                           ; E57D 20 DA E5                  ..
        adc     #$08                            ; E580 69 08                    i.
        sta     $0208,y                         ; E582 99 08 02                 ...
        lda     FlagpoleFNum_Y_Pos              ; E585 AD 0D 01                 ...
        sta     $02                             ; E588 85 02                    ..
        lda     #$01                            ; E58A A9 01                    ..
        sta     $03                             ; E58C 85 03                    ..
        sta     $04                             ; E58E 85 04                    ..
        sta     Sprite_Attributes,y             ; E590 99 02 02                 ...
        sta     $0206,y                         ; E593 99 06 02                 ...
        sta     $020A,y                         ; E596 99 0A 02                 ...
        lda     #$7E                            ; E599 A9 7E                    .~
        sta     Sprite_Tilenumber,y             ; E59B 99 01 02                 ...
        sta     $0209,y                         ; E59E 99 09 02                 ...
        lda     #$7F                            ; E5A1 A9 7F                    ..
        sta     $0205,y                         ; E5A3 99 05 02                 ...
        lda     FlagpoleCollisionYPos           ; E5A6 AD 0F 07                 ...
        beq     LE5C0                           ; E5A9 F0 15                    ..
        tya                                     ; E5AB 98                       .
        clc                                     ; E5AC 18                       .
        adc     #$0C                            ; E5AD 69 0C                    i.
        tay                                     ; E5AF A8                       .
        lda     FlagpoleScore                   ; E5B0 AD 0F 01                 ...
        asl     a                               ; E5B3 0A                       .
        tax                                     ; E5B4 AA                       .
        lda     LE55A,x                         ; E5B5 BD 5A E5                 .Z.
        sta     $00                             ; E5B8 85 00                    ..
        lda     LE55B,x                         ; E5BA BD 5B E5                 .[.
        jsr     LEBF7                           ; E5BD 20 F7 EB                  ..
LE5C0:
        ldx     ObjectOffset                    ; E5C0 A6 08                    ..
        ldy     Enemy_SprDataOffset,x           ; E5C2 BC E5 06                 ...
        lda     Enemy_OffscreenBits             ; E5C5 AD D1 03                 ...
        and     #$0E                            ; E5C8 29 0E                    ).
        beq     LE5E0                           ; E5CA F0 14                    ..
LE5CC:
        lda     #$F8                            ; E5CC A9 F8                    ..
LE5CE:
        sta     $0214,y                         ; E5CE 99 14 02                 ...
        sta     $0210,y                         ; E5D1 99 10 02                 ...
LE5D4:
        sta     $020C,y                         ; E5D4 99 0C 02                 ...
        sta     $0208,y                         ; E5D7 99 08 02                 ...
LE5DA:
        sta     $0204,y                         ; E5DA 99 04 02                 ...
        sta     Sprite_Y_Position,y             ; E5DD 99 00 02                 ...
LE5E0:
        rts                                     ; E5E0 60                       `

; ----------------------------------------------------------------------------
LE5E1:
        ldy     Enemy_SprDataOffset,x           ; E5E1 BC E5 06                 ...
        sty     $02                             ; E5E4 84 02                    ..
        iny                                     ; E5E6 C8                       .
        iny                                     ; E5E7 C8                       .
        iny                                     ; E5E8 C8                       .
        lda     Enemy_Rel_XPos                  ; E5E9 AD AE 03                 ...
        jsr     LE4C7                           ; E5EC 20 C7 E4                  ..
        ldx     ObjectOffset                    ; E5EF A6 08                    ..
        lda     Enemy_Y_Position,x              ; E5F1 B5 CF                    ..
        jsr     LE5D4                           ; E5F3 20 D4 E5                  ..
        ldy     AreaType                        ; E5F6 AC 4E 07                 .N.
        cpy     #$03                            ; E5F9 C0 03                    ..
        beq     LE602                           ; E5FB F0 05                    ..
        ldy     SecondaryHardMode               ; E5FD AC CC 06                 ...
        beq     LE602                           ; E600 F0 00                    ..
LE602:
        ldy     Enemy_SprDataOffset,x           ; E602 BC E5 06                 ...
        sta     $0210,y                         ; E605 99 10 02                 ...
        sta     $0214,y                         ; E608 99 14 02                 ...
        lda     #$5B                            ; E60B A9 5B                    .[
        ldx     CloudTypeOverride               ; E60D AE 43 07                 .C.
        beq     LE614                           ; E610 F0 02                    ..
        .byte   $A9,$75                         ; E612 A9 75                    .u
; ----------------------------------------------------------------------------
LE614:
        ldx     ObjectOffset                    ; E614 A6 08                    ..
        iny                                     ; E616 C8                       .
        jsr     LE5CE                           ; E617 20 CE E5                  ..
        lda     #$02                            ; E61A A9 02                    ..
        iny                                     ; E61C C8                       .
        jsr     LE5CE                           ; E61D 20 CE E5                  ..
        inx                                     ; E620 E8                       .
        jsr     LF23B                           ; E621 20 3B F2                  ;.
        dex                                     ; E624 CA                       .
        ldy     Enemy_SprDataOffset,x           ; E625 BC E5 06                 ...
        asl     a                               ; E628 0A                       .
        pha                                     ; E629 48                       H
        bcc     LE631                           ; E62A 90 05                    ..
        lda     #$F8                            ; E62C A9 F8                    ..
        sta     Sprite_Y_Position,y             ; E62E 99 00 02                 ...
LE631:
        pla                                     ; E631 68                       h
        asl     a                               ; E632 0A                       .
        pha                                     ; E633 48                       H
        bcc     LE63B                           ; E634 90 05                    ..
        lda     #$F8                            ; E636 A9 F8                    ..
        sta     $0204,y                         ; E638 99 04 02                 ...
LE63B:
        pla                                     ; E63B 68                       h
        asl     a                               ; E63C 0A                       .
        pha                                     ; E63D 48                       H
        bcc     LE645                           ; E63E 90 05                    ..
        lda     #$F8                            ; E640 A9 F8                    ..
        sta     $0208,y                         ; E642 99 08 02                 ...
LE645:
        pla                                     ; E645 68                       h
        asl     a                               ; E646 0A                       .
        pha                                     ; E647 48                       H
        bcc     LE64F                           ; E648 90 05                    ..
        lda     #$F8                            ; E64A A9 F8                    ..
        sta     $020C,y                         ; E64C 99 0C 02                 ...
LE64F:
        pla                                     ; E64F 68                       h
        asl     a                               ; E650 0A                       .
        pha                                     ; E651 48                       H
        bcc     LE659                           ; E652 90 05                    ..
        lda     #$F8                            ; E654 A9 F8                    ..
        sta     $0210,y                         ; E656 99 10 02                 ...
LE659:
        pla                                     ; E659 68                       h
        asl     a                               ; E65A 0A                       .
        bcc     LE662                           ; E65B 90 05                    ..
        lda     #$F8                            ; E65D A9 F8                    ..
        sta     $0214,y                         ; E65F 99 14 02                 ...
LE662:
        lda     Enemy_OffscreenBits             ; E662 AD D1 03                 ...
        asl     a                               ; E665 0A                       .
        bcc     LE66B                           ; E666 90 03                    ..
        jsr     LE5CC                           ; E668 20 CC E5                  ..
LE66B:
        rts                                     ; E66B 60                       `

; ----------------------------------------------------------------------------
LE66C:
        lda     FrameCounter                    ; E66C A5 09                    ..
        lsr     a                               ; E66E 4A                       J
        bcs     LE673                           ; E66F B0 02                    ..
        dec     Misc_Y_Position,x               ; E671 D6 DB                    ..
LE673:
        lda     Misc_Y_Position,x               ; E673 B5 DB                    ..
        jsr     LE5DA                           ; E675 20 DA E5                  ..
        lda     Misc_Rel_XPos                   ; E678 AD B3 03                 ...
        sta     Sprite_X_Position,y             ; E67B 99 03 02                 ...
        clc                                     ; E67E 18                       .
        adc     #$08                            ; E67F 69 08                    i.
        sta     $0207,y                         ; E681 99 07 02                 ...
        lda     #$02                            ; E684 A9 02                    ..
        sta     Sprite_Attributes,y             ; E686 99 02 02                 ...
        sta     $0206,y                         ; E689 99 06 02                 ...
        lda     #$F7                            ; E68C A9 F7                    ..
        sta     Sprite_Tilenumber,y             ; E68E 99 01 02                 ...
        lda     #$FB                            ; E691 A9 FB                    ..
        sta     $0205,y                         ; E693 99 05 02                 ...
        jmp     LE6D4                           ; E696 4C D4 E6                 L..

; ----------------------------------------------------------------------------
LE699:
        .byte   $60,$61,$62,$63                 ; E699 60 61 62 63              `abc
; ----------------------------------------------------------------------------
LE69D:
        ldy     Misc_SprDataOffset,x            ; E69D BC F3 06                 ...
        lda     Misc_State,x                    ; E6A0 B5 2A                    .*
        cmp     #$02                            ; E6A2 C9 02                    ..
        bcs     LE66C                           ; E6A4 B0 C6                    ..
        lda     Misc_Y_Position,x               ; E6A6 B5 DB                    ..
        sta     Sprite_Y_Position,y             ; E6A8 99 00 02                 ...
        clc                                     ; E6AB 18                       .
        adc     #$08                            ; E6AC 69 08                    i.
        sta     $0204,y                         ; E6AE 99 04 02                 ...
        lda     Misc_Rel_XPos                   ; E6B1 AD B3 03                 ...
        sta     Sprite_X_Position,y             ; E6B4 99 03 02                 ...
        sta     $0207,y                         ; E6B7 99 07 02                 ...
        lda     FrameCounter                    ; E6BA A5 09                    ..
        lsr     a                               ; E6BC 4A                       J
        and     #$03                            ; E6BD 29 03                    ).
        tax                                     ; E6BF AA                       .
        lda     LE699,x                         ; E6C0 BD 99 E6                 ...
        iny                                     ; E6C3 C8                       .
        jsr     LE5DA                           ; E6C4 20 DA E5                  ..
        dey                                     ; E6C7 88                       .
        lda     #$02                            ; E6C8 A9 02                    ..
        sta     Sprite_Attributes,y             ; E6CA 99 02 02                 ...
        lda     #$82                            ; E6CD A9 82                    ..
        sta     $0206,y                         ; E6CF 99 06 02                 ...
        ldx     ObjectOffset                    ; E6D2 A6 08                    ..
LE6D4:
        rts                                     ; E6D4 60                       `

; ----------------------------------------------------------------------------
LE6D5:
        .byte   $76                             ; E6D5 76                       v
LE6D6:
        .byte   $77,$78,$79,$D6,$D6,$D9,$D9,$8D ; E6D6 77 78 79 D6 D6 D9 D9 8D  wxy.....
        .byte   $8D,$E4,$E4,$76,$77,$78,$79,$76 ; E6DE 8D E4 E4 76 77 78 79 76  ...vwxyv
        .byte   $77,$78,$79,$76,$77,$78,$79,$76 ; E6E6 77 78 79 76 77 78 79 76  wxyvwxyv
        .byte   $77,$78,$79,$76,$77,$78,$79,$76 ; E6EE 77 78 79 76 77 78 79 76  wxyvwxyv
        .byte   $77,$78,$79                     ; E6F6 77 78 79                 wxy
LE6F9:
        .byte   $02,$01,$02,$01,$01,$01,$01,$01 ; E6F9 02 01 02 01 01 01 01 01  ........
        .byte   $01                             ; E701 01                       .
; ----------------------------------------------------------------------------
LE702:
        ldy     $06EA                           ; E702 AC EA 06                 ...
        lda     Enemy_Rel_YPos                  ; E705 AD B9 03                 ...
        clc                                     ; E708 18                       .
        adc     #$08                            ; E709 69 08                    i.
        sta     $02                             ; E70B 85 02                    ..
        lda     Enemy_Rel_XPos                  ; E70D AD AE 03                 ...
        sta     $05                             ; E710 85 05                    ..
        ldx     PowerUpType                     ; E712 A6 39                    .9
        lda     LE6F9,x                         ; E714 BD F9 E6                 ...
        ora     $03CA                           ; E717 0D CA 03                 ...
        sta     $04                             ; E71A 85 04                    ..
        txa                                     ; E71C 8A                       .
        pha                                     ; E71D 48                       H
        asl     a                               ; E71E 0A                       .
        asl     a                               ; E71F 0A                       .
        tax                                     ; E720 AA                       .
        lda     #$01                            ; E721 A9 01                    ..
        sta     $07                             ; E723 85 07                    ..
        sta     $03                             ; E725 85 03                    ..
LE727:
        lda     LE6D5,x                         ; E727 BD D5 E6                 ...
        sta     $00                             ; E72A 85 00                    ..
        lda     LE6D6,x                         ; E72C BD D6 E6                 ...
        jsr     LEBF7                           ; E72F 20 F7 EB                  ..
        dec     $07                             ; E732 C6 07                    ..
        bpl     LE727                           ; E734 10 F1                    ..
        ldy     $06EA                           ; E736 AC EA 06                 ...
        pla                                     ; E739 68                       h
        beq     LE76F                           ; E73A F0 33                    .3
        cmp     #$03                            ; E73C C9 03                    ..
        beq     LE76F                           ; E73E F0 2F                    ./
        cmp     #$04                            ; E740 C9 04                    ..
        bcs     LE76F                           ; E742 B0 2B                    .+
        sta     $00                             ; E744 85 00                    ..
        lda     #$02                            ; E746 A9 02                    ..
        nop                                     ; E748 EA                       .
        and     #$03                            ; E749 29 03                    ).
        ora     $03CA                           ; E74B 0D CA 03                 ...
        sta     Sprite_Attributes,y             ; E74E 99 02 02                 ...
        sta     $0206,y                         ; E751 99 06 02                 ...
        ldx     $00                             ; E754 A6 00                    ..
        dex                                     ; E756 CA                       .
        beq     LE75F                           ; E757 F0 06                    ..
        sta     $020A,y                         ; E759 99 0A 02                 ...
        sta     $020E,y                         ; E75C 99 0E 02                 ...
LE75F:
        lda     $0206,y                         ; E75F B9 06 02                 ...
        ora     #$40                            ; E762 09 40                    .@
        sta     $0206,y                         ; E764 99 06 02                 ...
        lda     $020E,y                         ; E767 B9 0E 02                 ...
        ora     #$40                            ; E76A 09 40                    .@
        sta     $020E,y                         ; E76C 99 0E 02                 ...
LE76F:
        jmp     LEBA9                           ; E76F 4C A9 EB                 L..

; ----------------------------------------------------------------------------
LE772:
        .byte   $FC                             ; E772 FC                       .
LE773:
        .byte   $FC,$AA,$AB,$AC,$AD,$FC,$FC,$AE ; E773 FC AA AB AC AD FC FC AE  ........
        .byte   $AF,$B0,$B1,$FC,$A5,$A6,$A7,$A8 ; E77B AF B0 B1 FC A5 A6 A7 A8  ........
        .byte   $A9,$FC,$A0,$A1,$A2,$A3,$A4,$69 ; E783 A9 FC A0 A1 A2 A3 A4 69  .......i
        .byte   $A5,$6A,$A7,$A8,$A9,$6B,$A0,$6C ; E78B A5 6A A7 A8 A9 6B A0 6C  .j...k.l
        .byte   $A2,$A3,$A4,$FC,$FC,$96,$97,$98 ; E793 A2 A3 A4 FC FC 96 97 98  ........
        .byte   $99,$FC,$FC,$9A,$9B,$9C,$9D,$FC ; E79B 99 FC FC 9A 9B 9C 9D FC  ........
        .byte   $FC,$8F,$8E,$8E,$8F,$FC,$FC,$95 ; E7A3 FC 8F 8E 8E 8F FC FC 95  ........
        .byte   $94,$94,$95,$FC,$FC,$DC,$DC,$DF ; E7AB 94 94 95 FC FC DC DC DF  ........
        .byte   $DF,$DC,$DC,$DD,$DD,$DE,$DE,$FC ; E7B3 DF DC DC DD DD DE DE FC  ........
        .byte   $FC,$B2,$B3,$B4,$B5,$FC,$FC,$B6 ; E7BB FC B2 B3 B4 B5 FC FC B6  ........
        .byte   $B3,$B7,$B5,$FC,$FC,$70,$71,$72 ; E7C3 B3 B7 B5 FC FC 70 71 72  .....pqr
        .byte   $73,$FC,$FC,$6E,$6E,$6F,$6F,$FC ; E7CB 73 FC FC 6E 6E 6F 6F FC  s..nnoo.
        .byte   $FC,$6D,$6D,$6F,$6F,$FC,$FC,$6F ; E7D3 FC 6D 6D 6F 6F FC FC 6F  .mmoo..o
        .byte   $6F,$6E,$6E,$FC,$FC,$6F,$6F,$6D ; E7DB 6F 6E 6E FC FC 6F 6F 6D  onn..oom
        .byte   $6D,$FC,$FC,$F4,$F4,$F5,$F5,$FC ; E7E3 6D FC FC F4 F4 F5 F5 FC  m.......
        .byte   $FC,$F4,$F4,$F5,$F5,$FC,$FC,$F5 ; E7EB FC F4 F4 F5 F5 FC FC F5  ........
        .byte   $F5,$F4,$F4,$FC,$FC,$F5,$F5,$F4 ; E7F3 F5 F4 F4 FC FC F5 F5 F4  ........
        .byte   $F4,$FC,$FC,$FC,$FC,$EF,$EF,$B9 ; E7FB F4 FC FC FC FC EF EF B9  ........
        .byte   $B8,$BB,$BA,$BC,$BC,$FC,$FC,$BD ; E803 B8 BB BA BC BC FC FC BD  ........
        .byte   $BD,$BC,$BC,$7A,$7B,$DA,$DB,$D8 ; E80B BD BC BC 7A 7B DA DB D8  ...z{...
        .byte   $D8,$CD,$CD,$CE,$CE,$CF,$CF,$7D ; E813 D8 CD CD CE CE CF CF 7D  .......}
        .byte   $7C,$D1,$8C,$D3,$D2,$7D,$7C,$89 ; E81B 7C D1 8C D3 D2 7D 7C 89  |....}|.
        .byte   $88,$8B,$8A,$D5,$D4,$E3,$E2,$D3 ; E823 88 8B 8A D5 D4 E3 E2 D3  ........
        .byte   $D2,$D5,$D4,$E3,$E2,$8B,$8A,$E5 ; E82B D2 D5 D4 E3 E2 8B 8A E5  ........
        .byte   $E5,$E6,$E6,$EB,$EB,$EC,$EC,$ED ; E833 E5 E6 E6 EB EB EC EC ED  ........
        .byte   $ED,$EE,$EE,$FC,$FC,$D0,$D0,$D7 ; E83B ED EE EE FC FC D0 D0 D7  ........
        .byte   $D7,$BF,$BE,$C1,$C0,$C2,$FC,$C4 ; E843 D7 BF BE C1 C0 C2 FC C4  ........
        .byte   $C3,$C6,$C5,$C8,$C7,$BF,$BE,$CA ; E84B C3 C6 C5 C8 C7 BF BE CA  ........
        .byte   $C9,$C2,$FC,$C4,$C3,$C6,$C5,$CC ; E853 C9 C2 FC C4 C3 C6 C5 CC  ........
        .byte   $CB,$FC,$FC,$E8,$E7,$EA,$E9,$F2 ; E85B CB FC FC E8 E7 EA E9 F2  ........
        .byte   $F2,$F3,$F3,$F2,$F2,$F1,$F1,$F1 ; E863 F2 F3 F3 F2 F2 F1 F1 F1  ........
        .byte   $F1,$FC,$FC,$F0,$F0,$FC,$FC,$FC ; E86B F1 FC FC F0 F0 FC FC FC  ........
        .byte   $FC                             ; E873 FC                       .
LE874:
        .byte   $0C,$0C,$00,$0C,$0C,$A8,$54,$3C ; E874 0C 0C 00 0C 0C A8 54 3C  ......T<
        .byte   $EA,$18,$48,$48,$CC,$C0,$18,$18 ; E87C EA 18 48 48 CC C0 18 18  ..HH....
        .byte   $18,$90,$24,$C0,$48,$9C,$D2,$D8 ; E884 18 90 24 C0 48 9C D2 D8  ..$.H...
        .byte   $F0,$F6,$FC                     ; E88C F0 F6 FC                 ...
LE88F:
        .byte   $01,$02,$03,$02,$01,$01,$03,$03 ; E88F 01 02 03 02 01 01 03 03  ........
        .byte   $03,$01,$01,$02,$02,$21,$01,$02 ; E897 03 01 01 02 02 21 01 02  .....!..
        .byte   $01,$01,$02,$22,$02,$02,$01,$01 ; E89F 01 01 02 22 02 02 01 01  ..."....
        .byte   $02,$02,$02                     ; E8A7 02 02 02                 ...
LE8AA:
        .byte   $08,$18                         ; E8AA 08 18                    ..
LE8AC:
        .byte   $18,$19,$1A,$19,$18             ; E8AC 18 19 1A 19 18           .....
; ----------------------------------------------------------------------------
LE8B1:
        lda     Enemy_Y_Position,x              ; E8B1 B5 CF                    ..
        sta     $02                             ; E8B3 85 02                    ..
        lda     Enemy_Rel_XPos                  ; E8B5 AD AE 03                 ...
        sta     $05                             ; E8B8 85 05                    ..
        ldy     Enemy_SprDataOffset,x           ; E8BA BC E5 06                 ...
        sty     $EB                             ; E8BD 84 EB                    ..
        lda     #$00                            ; E8BF A9 00                    ..
        sta     VerticalFlipFlag                ; E8C1 8D 09 01                 ...
        lda     Enemy_MovingDir,x               ; E8C4 B5 46                    .F
        sta     $03                             ; E8C6 85 03                    ..
        lda     Enemy_SprAttrib,x               ; E8C8 BD C5 03                 ...
        sta     $04                             ; E8CB 85 04                    ..
        lda     Enemy_ID,x                      ; E8CD B5 16                    ..
        cmp     #$0D                            ; E8CF C9 0D                    ..
        bne     LE8DD                           ; E8D1 D0 0A                    ..
        ldy     Enemy_X_Speed,x                 ; E8D3 B4 58                    .X
        bmi     LE8DD                           ; E8D5 30 06                    0.
        ldy     EnemyFrameTimer,x               ; E8D7 BC 8A 07                 ...
        beq     LE8DD                           ; E8DA F0 01                    ..
        rts                                     ; E8DC 60                       `

; ----------------------------------------------------------------------------
LE8DD:
        lda     Enemy_State,x                   ; E8DD B5 1E                    ..
        sta     $ED                             ; E8DF 85 ED                    ..
        and     #$1F                            ; E8E1 29 1F                    ).
        tay                                     ; E8E3 A8                       .
        lda     Enemy_ID,x                      ; E8E4 B5 16                    ..
        cmp     #$35                            ; E8E6 C9 35                    .5
        bne     LE8F2                           ; E8E8 D0 08                    ..
        ldy     #$00                            ; E8EA A0 00                    ..
        lda     #$01                            ; E8EC A9 01                    ..
        sta     $03                             ; E8EE 85 03                    ..
        lda     #$15                            ; E8F0 A9 15                    ..
LE8F2:
        cmp     #$33                            ; E8F2 C9 33                    .3
        bne     LE909                           ; E8F4 D0 13                    ..
        .byte   $C6,$02,$A9,$03,$BC,$8A,$07,$F0 ; E8F6 C6 02 A9 03 BC 8A 07 F0  ........
        .byte   $02,$09,$20,$85,$04,$A0,$00,$84 ; E8FE 02 09 20 85 04 A0 00 84  .. .....
        .byte   $ED,$A9,$08                     ; E906 ED A9 08                 ...
; ----------------------------------------------------------------------------
LE909:
        cmp     #$32                            ; E909 C9 32                    .2
        bne     LE915                           ; E90B D0 08                    ..
        ldy     #$03                            ; E90D A0 03                    ..
        ldx     JumpspringAnimCtrl              ; E90F AE 0E 07                 ...
        lda     LE8AC,x                         ; E912 BD AC E8                 ...
LE915:
        sta     $EF                             ; E915 85 EF                    ..
        sty     $EC                             ; E917 84 EC                    ..
        ldx     ObjectOffset                    ; E919 A6 08                    ..
        cmp     #$0C                            ; E91B C9 0C                    ..
        bne     LE926                           ; E91D D0 07                    ..
        .byte   $B5,$A0,$30,$03,$EE,$09,$01     ; E91F B5 A0 30 03 EE 09 01     ..0....
; ----------------------------------------------------------------------------
LE926:
        lda     BowserGfxFlag                   ; E926 AD 6A 03                 .j.
        beq     LE934                           ; E929 F0 09                    ..
        ldy     #$16                            ; E92B A0 16                    ..
        cmp     #$01                            ; E92D C9 01                    ..
        beq     LE932                           ; E92F F0 01                    ..
        iny                                     ; E931 C8                       .
LE932:
        sty     $EF                             ; E932 84 EF                    ..
LE934:
        ldy     $EF                             ; E934 A4 EF                    ..
        cpy     #$06                            ; E936 C0 06                    ..
        bne     LE957                           ; E938 D0 1D                    ..
        lda     Enemy_State,x                   ; E93A B5 1E                    ..
        cmp     #$02                            ; E93C C9 02                    ..
        bcc     LE944                           ; E93E 90 04                    ..
        ldx     #$04                            ; E940 A2 04                    ..
        stx     $EC                             ; E942 86 EC                    ..
LE944:
        and     #$20                            ; E944 29 20                    ) 
        ora     TimerControl                    ; E946 0D 47 07                 .G.
        bne     LE957                           ; E949 D0 0C                    ..
        lda     FrameCounter                    ; E94B A5 09                    ..
        and     #$08                            ; E94D 29 08                    ).
        bne     LE957                           ; E94F D0 06                    ..
        lda     $03                             ; E951 A5 03                    ..
        eor     #$03                            ; E953 49 03                    I.
        sta     $03                             ; E955 85 03                    ..
LE957:
        lda     LE88F,y                         ; E957 B9 8F E8                 ...
        ora     $04                             ; E95A 05 04                    ..
        sta     $04                             ; E95C 85 04                    ..
        lda     LE874,y                         ; E95E B9 74 E8                 .t.
        tax                                     ; E961 AA                       .
        ldy     $EC                             ; E962 A4 EC                    ..
        lda     BowserGfxFlag                   ; E964 AD 6A 03                 .j.
        beq     LE999                           ; E967 F0 30                    .0
        cmp     #$01                            ; E969 C9 01                    ..
        bne     LE980                           ; E96B D0 13                    ..
        lda     BowserBodyControls              ; E96D AD 63 03                 .c.
        bpl     LE974                           ; E970 10 02                    ..
        .byte   $A2,$DE                         ; E972 A2 DE                    ..
; ----------------------------------------------------------------------------
LE974:
        lda     $ED                             ; E974 A5 ED                    ..
        and     #$20                            ; E976 29 20                    ) 
        beq     LE97D                           ; E978 F0 03                    ..
        .byte   $8E,$09,$01                     ; E97A 8E 09 01                 ...
; ----------------------------------------------------------------------------
LE97D:
        jmp     LEA7F                           ; E97D 4C 7F EA                 L..

; ----------------------------------------------------------------------------
LE980:
        lda     BowserBodyControls              ; E980 AD 63 03                 .c.
        and     #$01                            ; E983 29 01                    ).
        beq     LE989                           ; E985 F0 02                    ..
        ldx     #$E4                            ; E987 A2 E4                    ..
LE989:
        lda     $ED                             ; E989 A5 ED                    ..
        and     #$20                            ; E98B 29 20                    ) 
        beq     LE97D                           ; E98D F0 EE                    ..
        .byte   $A5,$02,$38,$E9,$10,$85,$02,$4C ; E98F A5 02 38 E9 10 85 02 4C  ..8....L
        .byte   $7A,$E9                         ; E997 7A E9                    z.
; ----------------------------------------------------------------------------
LE999:
        cpx     #$24                            ; E999 E0 24                    .$
        bne     LE9AE                           ; E99B D0 11                    ..
        .byte   $C0,$05,$D0,$0A,$A2,$30,$A9,$02 ; E99D C0 05 D0 0A A2 30 A9 02  .....0..
        .byte   $85,$03,$A9,$05,$85,$EC,$4C,$FE ; E9A5 85 03 A9 05 85 EC 4C FE  ......L.
        .byte   $E9                             ; E9AD E9                       .
; ----------------------------------------------------------------------------
LE9AE:
        cpx     #$90                            ; E9AE E0 90                    ..
        bne     LE9C4                           ; E9B0 D0 12                    ..
        .byte   $A5,$ED,$29,$20,$D0,$09,$AD,$8F ; E9B2 A5 ED 29 20 D0 09 AD 8F  ..) ....
        .byte   $07,$C9,$10,$B0,$02,$A2,$96,$4C ; E9BA 07 C9 10 B0 02 A2 96 4C  .......L
        .byte   $6B,$EA                         ; E9C2 6B EA                    k.
; ----------------------------------------------------------------------------
LE9C4:
        lda     $EF                             ; E9C4 A5 EF                    ..
        cmp     #$04                            ; E9C6 C9 04                    ..
        bcs     LE9DA                           ; E9C8 B0 10                    ..
        cpy     #$02                            ; E9CA C0 02                    ..
        bcc     LE9DA                           ; E9CC 90 0C                    ..
        ldx     #$5A                            ; E9CE A2 5A                    .Z
        ldy     $EF                             ; E9D0 A4 EF                    ..
        cpy     #$02                            ; E9D2 C0 02                    ..
        bne     LE9DA                           ; E9D4 D0 04                    ..
        .byte   $A2,$7E,$E6,$02                 ; E9D6 A2 7E E6 02              .~..
; ----------------------------------------------------------------------------
LE9DA:
        lda     $EC                             ; E9DA A5 EC                    ..
        cmp     #$04                            ; E9DC C9 04                    ..
        bne     LE9FE                           ; E9DE D0 1E                    ..
        ldx     #$72                            ; E9E0 A2 72                    .r
        inc     $02                             ; E9E2 E6 02                    ..
        ldy     $EF                             ; E9E4 A4 EF                    ..
        cpy     #$02                            ; E9E6 C0 02                    ..
        beq     LE9EE                           ; E9E8 F0 04                    ..
        ldx     #$66                            ; E9EA A2 66                    .f
        inc     $02                             ; E9EC E6 02                    ..
LE9EE:
        cpy     #$06                            ; E9EE C0 06                    ..
        bne     LE9FE                           ; E9F0 D0 0C                    ..
        ldx     #$54                            ; E9F2 A2 54                    .T
        lda     $ED                             ; E9F4 A5 ED                    ..
        and     #$20                            ; E9F6 29 20                    ) 
        bne     LE9FE                           ; E9F8 D0 04                    ..
        ldx     #$8A                            ; E9FA A2 8A                    ..
        dec     $02                             ; E9FC C6 02                    ..
LE9FE:
        ldy     ObjectOffset                    ; E9FE A4 08                    ..
        lda     $EF                             ; EA00 A5 EF                    ..
        cmp     #$05                            ; EA02 C9 05                    ..
        bne     LEA12                           ; EA04 D0 0C                    ..
        .byte   $A5,$ED,$F0,$24,$29,$08,$F0,$5D ; EA06 A5 ED F0 24 29 08 F0 5D  ...$)..]
        .byte   $A2,$B4,$D0,$1C                 ; EA0E A2 B4 D0 1C              ....
; ----------------------------------------------------------------------------
LEA12:
        cpx     #$48                            ; EA12 E0 48                    .H
        beq     LEA2E                           ; EA14 F0 18                    ..
        lda     EnemyIntervalTimer,y            ; EA16 B9 96 07                 ...
        cmp     #$05                            ; EA19 C9 05                    ..
        bcs     LEA6B                           ; EA1B B0 4E                    .N
        cpx     #$3C                            ; EA1D E0 3C                    .<
        bne     LEA2E                           ; EA1F D0 0D                    ..
        cmp     #$01                            ; EA21 C9 01                    ..
        beq     LEA6B                           ; EA23 F0 46                    .F
        inc     $02                             ; EA25 E6 02                    ..
        inc     $02                             ; EA27 E6 02                    ..
        inc     $02                             ; EA29 E6 02                    ..
        jmp     LEA5D                           ; EA2B 4C 5D EA                 L].

; ----------------------------------------------------------------------------
LEA2E:
        lda     $EF                             ; EA2E A5 EF                    ..
        cmp     #$06                            ; EA30 C9 06                    ..
        beq     LEA6B                           ; EA32 F0 37                    .7
        cmp     #$08                            ; EA34 C9 08                    ..
        beq     LEA6B                           ; EA36 F0 33                    .3
        cmp     #$0C                            ; EA38 C9 0C                    ..
        beq     LEA6B                           ; EA3A F0 2F                    ./
        cmp     #$18                            ; EA3C C9 18                    ..
        bcs     LEA6B                           ; EA3E B0 2B                    .+
        ldy     #$00                            ; EA40 A0 00                    ..
        cmp     #$15                            ; EA42 C9 15                    ..
        bne     LEA56                           ; EA44 D0 10                    ..
        iny                                     ; EA46 C8                       .
        lda     WorldNumber                     ; EA47 AD 5F 07                 ._.
        cmp     #$07                            ; EA4A C9 07                    ..
        bcs     LEA6B                           ; EA4C B0 1D                    ..
        ldx     #$A2                            ; EA4E A2 A2                    ..
        lda     #$03                            ; EA50 A9 03                    ..
        sta     $EC                             ; EA52 85 EC                    ..
        bne     LEA6B                           ; EA54 D0 15                    ..
LEA56:
        lda     FrameCounter                    ; EA56 A5 09                    ..
        and     LE8AA,y                         ; EA58 39 AA E8                 9..
        bne     LEA6B                           ; EA5B D0 0E                    ..
LEA5D:
        lda     $ED                             ; EA5D A5 ED                    ..
        and     #$A0                            ; EA5F 29 A0                    ).
        ora     TimerControl                    ; EA61 0D 47 07                 .G.
        bne     LEA6B                           ; EA64 D0 05                    ..
        txa                                     ; EA66 8A                       .
        clc                                     ; EA67 18                       .
        adc     #$06                            ; EA68 69 06                    i.
        tax                                     ; EA6A AA                       .
LEA6B:
        lda     $ED                             ; EA6B A5 ED                    ..
        and     #$20                            ; EA6D 29 20                    ) 
        beq     LEA7F                           ; EA6F F0 0E                    ..
        lda     $EF                             ; EA71 A5 EF                    ..
        cmp     #$04                            ; EA73 C9 04                    ..
        bcc     LEA7F                           ; EA75 90 08                    ..
        ldy     #$01                            ; EA77 A0 01                    ..
        sty     VerticalFlipFlag                ; EA79 8C 09 01                 ...
        dey                                     ; EA7C 88                       .
        sty     $EC                             ; EA7D 84 EC                    ..
LEA7F:
        ldy     $EB                             ; EA7F A4 EB                    ..
        jsr     LEBEF                           ; EA81 20 EF EB                  ..
        jsr     LEBEF                           ; EA84 20 EF EB                  ..
        jsr     LEBEF                           ; EA87 20 EF EB                  ..
        ldx     ObjectOffset                    ; EA8A A6 08                    ..
        ldy     Enemy_SprDataOffset,x           ; EA8C BC E5 06                 ...
        lda     $EF                             ; EA8F A5 EF                    ..
        cmp     #$08                            ; EA91 C9 08                    ..
        bne     LEA98                           ; EA93 D0 03                    ..
LEA95:
        jmp     LEBA9                           ; EA95 4C A9 EB                 L..

; ----------------------------------------------------------------------------
LEA98:
        lda     $EF                             ; EA98 A5 EF                    ..
        cmp     #$13                            ; EA9A C9 13                    ..
        bne     LEAA1                           ; EA9C D0 03                    ..
        .byte   $8D,$09,$01                     ; EA9E 8D 09 01                 ...
; ----------------------------------------------------------------------------
LEAA1:
        lda     VerticalFlipFlag                ; EAA1 AD 09 01                 ...
        beq     LEAE7                           ; EAA4 F0 41                    .A
        lda     Sprite_Attributes,y             ; EAA6 B9 02 02                 ...
        ora     #$80                            ; EAA9 09 80                    ..
        iny                                     ; EAAB C8                       .
        iny                                     ; EAAC C8                       .
        jsr     LE5CE                           ; EAAD 20 CE E5                  ..
        dey                                     ; EAB0 88                       .
        dey                                     ; EAB1 88                       .
        tya                                     ; EAB2 98                       .
        tax                                     ; EAB3 AA                       .
        lda     $EF                             ; EAB4 A5 EF                    ..
        cmp     #$05                            ; EAB6 C9 05                    ..
        beq     LEACB                           ; EAB8 F0 11                    ..
        cmp     #$11                            ; EABA C9 11                    ..
        beq     LEACB                           ; EABC F0 0D                    ..
        cmp     #$13                            ; EABE C9 13                    ..
        beq     LEACB                           ; EAC0 F0 09                    ..
        cmp     #$15                            ; EAC2 C9 15                    ..
        bcs     LEACB                           ; EAC4 B0 05                    ..
        txa                                     ; EAC6 8A                       .
        clc                                     ; EAC7 18                       .
        adc     #$08                            ; EAC8 69 08                    i.
        tax                                     ; EACA AA                       .
LEACB:
        lda     Sprite_Tilenumber,x             ; EACB BD 01 02                 ...
        pha                                     ; EACE 48                       H
        lda     $0205,x                         ; EACF BD 05 02                 ...
        pha                                     ; EAD2 48                       H
        lda     $0211,y                         ; EAD3 B9 11 02                 ...
        sta     Sprite_Tilenumber,x             ; EAD6 9D 01 02                 ...
        lda     $0215,y                         ; EAD9 B9 15 02                 ...
        sta     $0205,x                         ; EADC 9D 05 02                 ...
        pla                                     ; EADF 68                       h
        sta     $0215,y                         ; EAE0 99 15 02                 ...
        pla                                     ; EAE3 68                       h
        sta     $0211,y                         ; EAE4 99 11 02                 ...
LEAE7:
        lda     BowserGfxFlag                   ; EAE7 AD 6A 03                 .j.
        bne     LEA95                           ; EAEA D0 A9                    ..
        lda     $EF                             ; EAEC A5 EF                    ..
        ldx     $EC                             ; EAEE A6 EC                    ..
        cmp     #$05                            ; EAF0 C9 05                    ..
        bne     LEAF7                           ; EAF2 D0 03                    ..
        .byte   $4C,$A9,$EB                     ; EAF4 4C A9 EB                 L..
; ----------------------------------------------------------------------------
LEAF7:
        cmp     #$07                            ; EAF7 C9 07                    ..
        beq     LEB1C                           ; EAF9 F0 21                    .!
        cmp     #$0D                            ; EAFB C9 0D                    ..
        beq     LEB1C                           ; EAFD F0 1D                    ..
        cmp     #$13                            ; EAFF C9 13                    ..
        beq     LEB1C                           ; EB01 F0 19                    ..
        cmp     #$0C                            ; EB03 C9 0C                    ..
        beq     LEB1C                           ; EB05 F0 15                    ..
        cmp     #$12                            ; EB07 C9 12                    ..
        bne     LEB0F                           ; EB09 D0 04                    ..
        .byte   $E0,$05,$D0,$48                 ; EB0B E0 05 D0 48              ...H
; ----------------------------------------------------------------------------
LEB0F:
        cmp     #$15                            ; EB0F C9 15                    ..
        bne     LEB18                           ; EB11 D0 05                    ..
        lda     #$42                            ; EB13 A9 42                    .B
        sta     $0216,y                         ; EB15 99 16 02                 ...
LEB18:
        cpx     #$02                            ; EB18 E0 02                    ..
        bcc     LEB57                           ; EB1A 90 3B                    .;
LEB1C:
        lda     BowserGfxFlag                   ; EB1C AD 6A 03                 .j.
        bne     LEB57                           ; EB1F D0 36                    .6
        lda     Sprite_Attributes,y             ; EB21 B9 02 02                 ...
        and     #$A3                            ; EB24 29 A3                    ).
        sta     Sprite_Attributes,y             ; EB26 99 02 02                 ...
        sta     $020A,y                         ; EB29 99 0A 02                 ...
        sta     $0212,y                         ; EB2C 99 12 02                 ...
        ora     #$40                            ; EB2F 09 40                    .@
        cpx     #$05                            ; EB31 E0 05                    ..
        bne     LEB37                           ; EB33 D0 02                    ..
        .byte   $09,$80                         ; EB35 09 80                    ..
; ----------------------------------------------------------------------------
LEB37:
        sta     $0206,y                         ; EB37 99 06 02                 ...
        sta     $020E,y                         ; EB3A 99 0E 02                 ...
        sta     $0216,y                         ; EB3D 99 16 02                 ...
        cpx     #$04                            ; EB40 E0 04                    ..
        bne     LEB57                           ; EB42 D0 13                    ..
        lda     $020A,y                         ; EB44 B9 0A 02                 ...
        ora     #$80                            ; EB47 09 80                    ..
        sta     $020A,y                         ; EB49 99 0A 02                 ...
        sta     $0212,y                         ; EB4C 99 12 02                 ...
        ora     #$40                            ; EB4F 09 40                    .@
        sta     $020E,y                         ; EB51 99 0E 02                 ...
        sta     $0216,y                         ; EB54 99 16 02                 ...
LEB57:
        lda     $EF                             ; EB57 A5 EF                    ..
        cmp     #$11                            ; EB59 C9 11                    ..
        bne     LEB93                           ; EB5B D0 36                    .6
        .byte   $AD,$09,$01,$D0,$21,$B9,$12,$02 ; EB5D AD 09 01 D0 21 B9 12 02  ....!...
        .byte   $29,$81,$99,$12,$02,$B9,$16,$02 ; EB65 29 81 99 12 02 B9 16 02  ).......
        .byte   $09,$41,$99,$16,$02,$AE,$8F,$07 ; EB6D 09 41 99 16 02 AE 8F 07  .A......
        .byte   $E0,$10,$B0,$30,$99,$0E,$02,$29 ; EB75 E0 10 B0 30 99 0E 02 29  ...0...)
        .byte   $81,$99,$0A,$02,$90,$26,$B9,$02 ; EB7D 81 99 0A 02 90 26 B9 02  .....&..
        .byte   $02,$29,$81,$99,$02,$02,$B9,$06 ; EB85 02 29 81 99 02 02 B9 06  .)......
        .byte   $02,$09,$41,$99,$06,$02         ; EB8D 02 09 41 99 06 02        ..A...
; ----------------------------------------------------------------------------
LEB93:
        lda     $EF                             ; EB93 A5 EF                    ..
        cmp     #$18                            ; EB95 C9 18                    ..
        bcc     LEBA9                           ; EB97 90 10                    ..
        lda     #$82                            ; EB99 A9 82                    ..
        sta     $020A,y                         ; EB9B 99 0A 02                 ...
        sta     $0212,y                         ; EB9E 99 12 02                 ...
        ora     #$40                            ; EBA1 09 40                    .@
        sta     $020E,y                         ; EBA3 99 0E 02                 ...
        sta     $0216,y                         ; EBA6 99 16 02                 ...
LEBA9:
        ldx     ObjectOffset                    ; EBA9 A6 08                    ..
        lda     Enemy_OffscreenBits             ; EBAB AD D1 03                 ...
        lsr     a                               ; EBAE 4A                       J
        lsr     a                               ; EBAF 4A                       J
        lsr     a                               ; EBB0 4A                       J
        pha                                     ; EBB1 48                       H
        bcc     LEBB9                           ; EBB2 90 05                    ..
        lda     #$04                            ; EBB4 A9 04                    ..
        jsr     LEC06                           ; EBB6 20 06 EC                  ..
LEBB9:
        pla                                     ; EBB9 68                       h
        lsr     a                               ; EBBA 4A                       J
        pha                                     ; EBBB 48                       H
        bcc     LEBC3                           ; EBBC 90 05                    ..
        lda     #$00                            ; EBBE A9 00                    ..
        jsr     LEC06                           ; EBC0 20 06 EC                  ..
LEBC3:
        pla                                     ; EBC3 68                       h
        lsr     a                               ; EBC4 4A                       J
        lsr     a                               ; EBC5 4A                       J
        pha                                     ; EBC6 48                       H
        bcc     LEBCE                           ; EBC7 90 05                    ..
        lda     #$10                            ; EBC9 A9 10                    ..
        jsr     LEBFC                           ; EBCB 20 FC EB                  ..
LEBCE:
        pla                                     ; EBCE 68                       h
        lsr     a                               ; EBCF 4A                       J
        pha                                     ; EBD0 48                       H
        bcc     LEBD8                           ; EBD1 90 05                    ..
        lda     #$08                            ; EBD3 A9 08                    ..
        jsr     LEBFC                           ; EBD5 20 FC EB                  ..
LEBD8:
        pla                                     ; EBD8 68                       h
        lsr     a                               ; EBD9 4A                       J
        bcc     LEBEE                           ; EBDA 90 12                    ..
        jsr     LEBFC                           ; EBDC 20 FC EB                  ..
        lda     Enemy_ID,x                      ; EBDF B5 16                    ..
        cmp     #$0C                            ; EBE1 C9 0C                    ..
        beq     LEBEE                           ; EBE3 F0 09                    ..
        lda     Enemy_Y_HighPos,x               ; EBE5 B5 B6                    ..
        cmp     #$02                            ; EBE7 C9 02                    ..
        bne     LEBEE                           ; EBE9 D0 03                    ..
        jsr     LC95F                           ; EBEB 20 5F C9                  _.
LEBEE:
        rts                                     ; EBEE 60                       `

; ----------------------------------------------------------------------------
LEBEF:
        lda     LE772,x                         ; EBEF BD 72 E7                 .r.
        sta     $00                             ; EBF2 85 00                    ..
        lda     LE773,x                         ; EBF4 BD 73 E7                 .s.
LEBF7:
        sta     $01                             ; EBF7 85 01                    ..
        jmp     LF2C7                           ; EBF9 4C C7 F2                 L..

; ----------------------------------------------------------------------------
LEBFC:
        clc                                     ; EBFC 18                       .
        adc     Enemy_SprDataOffset,x           ; EBFD 7D E5 06                 }..
        tay                                     ; EC00 A8                       .
        lda     #$F8                            ; EC01 A9 F8                    ..
        jmp     LE5DA                           ; EC03 4C DA E5                 L..

; ----------------------------------------------------------------------------
LEC06:
        clc                                     ; EC06 18                       .
        adc     Enemy_SprDataOffset,x           ; EC07 7D E5 06                 }..
        tay                                     ; EC0A A8                       .
        jsr     LEC8F                           ; EC0B 20 8F EC                  ..
        sta     $0210,y                         ; EC0E 99 10 02                 ...
        rts                                     ; EC11 60                       `

; ----------------------------------------------------------------------------
LEC12:
        .byte   $85                             ; EC12 85                       .
LEC13:
        .byte   $85,$86,$86                     ; EC13 85 86 86                 ...
; ----------------------------------------------------------------------------
LEC16:
        lda     Block_Rel_YPos                  ; EC16 AD BC 03                 ...
        sta     $02                             ; EC19 85 02                    ..
        lda     Block_Rel_XPos                  ; EC1B AD B1 03                 ...
        sta     $05                             ; EC1E 85 05                    ..
        lda     #$03                            ; EC20 A9 03                    ..
        sta     $04                             ; EC22 85 04                    ..
        lsr     a                               ; EC24 4A                       J
        sta     $03                             ; EC25 85 03                    ..
        ldy     Block_SprDataOffset,x           ; EC27 BC EC 06                 ...
        ldx     #$00                            ; EC2A A2 00                    ..
LEC2C:
        lda     LEC12,x                         ; EC2C BD 12 EC                 ...
        sta     $00                             ; EC2F 85 00                    ..
        lda     LEC13,x                         ; EC31 BD 13 EC                 ...
        jsr     LEBF7                           ; EC34 20 F7 EB                  ..
        cpx     #$04                            ; EC37 E0 04                    ..
        bne     LEC2C                           ; EC39 D0 F1                    ..
        ldx     ObjectOffset                    ; EC3B A6 08                    ..
        ldy     Block_SprDataOffset,x           ; EC3D BC EC 06                 ...
        lda     AreaType                        ; EC40 AD 4E 07                 .N.
        cmp     #$01                            ; EC43 C9 01                    ..
        beq     LEC4F                           ; EC45 F0 08                    ..
        lda     #$86                            ; EC47 A9 86                    ..
        sta     Sprite_Tilenumber,y             ; EC49 99 01 02                 ...
        sta     $0205,y                         ; EC4C 99 05 02                 ...
LEC4F:
        lda     Block_Metatile,x                ; EC4F BD E8 03                 ...
        cmp     #$C7                            ; EC52 C9 C7                    ..
        bne     LEC7A                           ; EC54 D0 24                    .$
        lda     #$87                            ; EC56 A9 87                    ..
        iny                                     ; EC58 C8                       .
        jsr     LE5D4                           ; EC59 20 D4 E5                  ..
        dey                                     ; EC5C 88                       .
        lda     #$03                            ; EC5D A9 03                    ..
        ldx     AreaType                        ; EC5F AE 4E 07                 .N.
        dex                                     ; EC62 CA                       .
        beq     LEC66                           ; EC63 F0 01                    ..
        lsr     a                               ; EC65 4A                       J
LEC66:
        ldx     ObjectOffset                    ; EC66 A6 08                    ..
        sta     Sprite_Attributes,y             ; EC68 99 02 02                 ...
        ora     #$40                            ; EC6B 09 40                    .@
        sta     $0206,y                         ; EC6D 99 06 02                 ...
        ora     #$80                            ; EC70 09 80                    ..
        sta     $020E,y                         ; EC72 99 0E 02                 ...
        and     #$83                            ; EC75 29 83                    ).
        sta     $020A,y                         ; EC77 99 0A 02                 ...
LEC7A:
        lda     Block_OffscreenBits             ; EC7A AD D4 03                 ...
        pha                                     ; EC7D 48                       H
        and     #$04                            ; EC7E 29 04                    ).
        beq     LEC8A                           ; EC80 F0 08                    ..
        .byte   $A9,$F8,$99,$04,$02,$99,$0C,$02 ; EC82 A9 F8 99 04 02 99 0C 02  ........
; ----------------------------------------------------------------------------
LEC8A:
        pla                                     ; EC8A 68                       h
LEC8B:
        and     #$08                            ; EC8B 29 08                    ).
        beq     LEC97                           ; EC8D F0 08                    ..
LEC8F:
        lda     #$F8                            ; EC8F A9 F8                    ..
        sta     Sprite_Y_Position,y             ; EC91 99 00 02                 ...
        sta     $0208,y                         ; EC94 99 08 02                 ...
LEC97:
        rts                                     ; EC97 60                       `

; ----------------------------------------------------------------------------
LEC98:
        lda     #$02                            ; EC98 A9 02                    ..
        sta     $00                             ; EC9A 85 00                    ..
        lda     #$75                            ; EC9C A9 75                    .u
        ldy     GameEngineSubroutine            ; EC9E A4 0E                    ..
        cpy     #$05                            ; ECA0 C0 05                    ..
        beq     LECAA                           ; ECA2 F0 06                    ..
        lda     #$03                            ; ECA4 A9 03                    ..
        sta     $00                             ; ECA6 85 00                    ..
        lda     #$84                            ; ECA8 A9 84                    ..
LECAA:
        ldy     Block_SprDataOffset,x           ; ECAA BC EC 06                 ...
        iny                                     ; ECAD C8                       .
        jsr     LE5D4                           ; ECAE 20 D4 E5                  ..
        lda     FrameCounter                    ; ECB1 A5 09                    ..
        asl     a                               ; ECB3 0A                       .
        asl     a                               ; ECB4 0A                       .
        asl     a                               ; ECB5 0A                       .
        asl     a                               ; ECB6 0A                       .
        and     #$C0                            ; ECB7 29 C0                    ).
        ora     $00                             ; ECB9 05 00                    ..
        iny                                     ; ECBB C8                       .
        jsr     LE5D4                           ; ECBC 20 D4 E5                  ..
        dey                                     ; ECBF 88                       .
        dey                                     ; ECC0 88                       .
        lda     Block_Rel_YPos                  ; ECC1 AD BC 03                 ...
        jsr     LE5DA                           ; ECC4 20 DA E5                  ..
        lda     Block_Rel_XPos                  ; ECC7 AD B1 03                 ...
        sta     Sprite_X_Position,y             ; ECCA 99 03 02                 ...
        lda     Block_Orig_XPos,x               ; ECCD BD F1 03                 ...
        sec                                     ; ECD0 38                       8
        sbc     ScreenEdge_X_Pos                ; ECD1 ED 1C 07                 ...
        sta     $00                             ; ECD4 85 00                    ..
        sec                                     ; ECD6 38                       8
        sbc     Block_Rel_XPos                  ; ECD7 ED B1 03                 ...
        adc     $00                             ; ECDA 65 00                    e.
        adc     #$06                            ; ECDC 69 06                    i.
        sta     $0207,y                         ; ECDE 99 07 02                 ...
        lda     $03BD                           ; ECE1 AD BD 03                 ...
        sta     $0208,y                         ; ECE4 99 08 02                 ...
        sta     $020C,y                         ; ECE7 99 0C 02                 ...
        lda     $03B2                           ; ECEA AD B2 03                 ...
        sta     $020B,y                         ; ECED 99 0B 02                 ...
        lda     $00                             ; ECF0 A5 00                    ..
        sec                                     ; ECF2 38                       8
        sbc     $03B2                           ; ECF3 ED B2 03                 ...
        adc     $00                             ; ECF6 65 00                    e.
        adc     #$06                            ; ECF8 69 06                    i.
        sta     $020F,y                         ; ECFA 99 0F 02                 ...
        lda     Block_OffscreenBits             ; ECFD AD D4 03                 ...
        jsr     LEC8B                           ; ED00 20 8B EC                  ..
        lda     Block_OffscreenBits             ; ED03 AD D4 03                 ...
        asl     a                               ; ED06 0A                       .
        bcc     LED0E                           ; ED07 90 05                    ..
        .byte   $A9,$F8,$20,$DA,$E5             ; ED09 A9 F8 20 DA E5           .. ..
; ----------------------------------------------------------------------------
LED0E:
        lda     $00                             ; ED0E A5 00                    ..
        bpl     LED22                           ; ED10 10 10                    ..
        lda     Sprite_X_Position,y             ; ED12 B9 03 02                 ...
        cmp     $0207,y                         ; ED15 D9 07 02                 ...
        bcc     LED22                           ; ED18 90 08                    ..
        lda     #$F8                            ; ED1A A9 F8                    ..
        sta     $0204,y                         ; ED1C 99 04 02                 ...
        sta     $020C,y                         ; ED1F 99 0C 02                 ...
LED22:
        rts                                     ; ED22 60                       `

; ----------------------------------------------------------------------------
LED23:
        ldy     FBall_SprDataOffset,x           ; ED23 BC F1 06                 ...
        lda     Fireball_Rel_YPos               ; ED26 AD BA 03                 ...
        sta     Sprite_Y_Position,y             ; ED29 99 00 02                 ...
        lda     Fireball_Rel_XPos               ; ED2C AD AF 03                 ...
        sta     Sprite_X_Position,y             ; ED2F 99 03 02                 ...
LED32:
        lda     FrameCounter                    ; ED32 A5 09                    ..
        lsr     a                               ; ED34 4A                       J
        lsr     a                               ; ED35 4A                       J
        pha                                     ; ED36 48                       H
        and     #$01                            ; ED37 29 01                    ).
        eor     #$64                            ; ED39 49 64                    Id
        sta     Sprite_Tilenumber,y             ; ED3B 99 01 02                 ...
        pla                                     ; ED3E 68                       h
        lsr     a                               ; ED3F 4A                       J
        lsr     a                               ; ED40 4A                       J
        lda     #$02                            ; ED41 A9 02                    ..
        bcc     LED47                           ; ED43 90 02                    ..
        ora     #$C0                            ; ED45 09 C0                    ..
LED47:
        sta     Sprite_Attributes,y             ; ED47 99 02 02                 ...
        rts                                     ; ED4A 60                       `

; ----------------------------------------------------------------------------
LED4B:
        .byte   $68,$67,$66                     ; ED4B 68 67 66                 hgf
; ----------------------------------------------------------------------------
LED4E:
        ldy     Block_SprDataOffset,x           ; ED4E BC EC 06                 ...
        lda     Fireball_State,x                ; ED51 B5 24                    .$
        inc     Fireball_State,x                ; ED53 F6 24                    .$
        lsr     a                               ; ED55 4A                       J
        and     #$07                            ; ED56 29 07                    ).
        cmp     #$03                            ; ED58 C9 03                    ..
        bcs     LEDA6                           ; ED5A B0 4A                    .J
LED5C:
        tax                                     ; ED5C AA                       .
        lda     LED4B,x                         ; ED5D BD 4B ED                 .K.
        iny                                     ; ED60 C8                       .
        jsr     LE5D4                           ; ED61 20 D4 E5                  ..
        dey                                     ; ED64 88                       .
        ldx     ObjectOffset                    ; ED65 A6 08                    ..
        lda     Fireball_Rel_YPos               ; ED67 AD BA 03                 ...
        sec                                     ; ED6A 38                       8
        sbc     #$04                            ; ED6B E9 04                    ..
        sta     Sprite_Y_Position,y             ; ED6D 99 00 02                 ...
        sta     $0208,y                         ; ED70 99 08 02                 ...
        clc                                     ; ED73 18                       .
        adc     #$08                            ; ED74 69 08                    i.
        sta     $0204,y                         ; ED76 99 04 02                 ...
        sta     $020C,y                         ; ED79 99 0C 02                 ...
        lda     Fireball_Rel_XPos               ; ED7C AD AF 03                 ...
        sec                                     ; ED7F 38                       8
        sbc     #$04                            ; ED80 E9 04                    ..
        sta     Sprite_X_Position,y             ; ED82 99 03 02                 ...
        sta     $0207,y                         ; ED85 99 07 02                 ...
        clc                                     ; ED88 18                       .
        adc     #$08                            ; ED89 69 08                    i.
        sta     $020B,y                         ; ED8B 99 0B 02                 ...
        sta     $020F,y                         ; ED8E 99 0F 02                 ...
        lda     #$02                            ; ED91 A9 02                    ..
        sta     Sprite_Attributes,y             ; ED93 99 02 02                 ...
        lda     #$82                            ; ED96 A9 82                    ..
        sta     $0206,y                         ; ED98 99 06 02                 ...
        lda     #$42                            ; ED9B A9 42                    .B
        sta     $020A,y                         ; ED9D 99 0A 02                 ...
        lda     #$C2                            ; EDA0 A9 C2                    ..
        sta     $020E,y                         ; EDA2 99 0E 02                 ...
        rts                                     ; EDA5 60                       `

; ----------------------------------------------------------------------------
LEDA6:
        lda     #$00                            ; EDA6 A9 00                    ..
        sta     Fireball_State,x                ; EDA8 95 24                    .$
        rts                                     ; EDAA 60                       `

; ----------------------------------------------------------------------------
        .byte   $BC,$E5,$06,$A9,$5B,$C8,$20,$CE ; EDAB BC E5 06 A9 5B C8 20 CE  ....[. .
        .byte   $E5,$C8,$A9,$02,$20,$CE,$E5,$88 ; EDB3 E5 C8 A9 02 20 CE E5 88  .... ...
        .byte   $88,$AD,$AE,$03,$99,$03,$02,$99 ; EDBB 88 AD AE 03 99 03 02 99  ........
        .byte   $0F,$02,$18,$69,$08,$99,$07,$02 ; EDC3 0F 02 18 69 08 99 07 02  ...i....
        .byte   $99,$13,$02,$18,$69,$08,$99,$0B ; EDCB 99 13 02 18 69 08 99 0B  ....i...
        .byte   $02,$99,$17,$02,$B5,$CF,$AA,$48 ; EDD3 02 99 17 02 B5 CF AA 48  .......H
        .byte   $E0,$20,$B0,$02,$A9,$F8,$20,$D7 ; EDDB E0 20 B0 02 A9 F8 20 D7  . .... .
        .byte   $E5,$68,$18,$69,$80,$AA,$E0,$20 ; EDE3 E5 68 18 69 80 AA E0 20  .h.i... 
        .byte   $B0,$02,$A9,$F8,$99,$0C,$02,$99 ; EDEB B0 02 A9 F8 99 0C 02 99  ........
        .byte   $10,$02,$99,$14,$02,$AD,$D1,$03 ; EDF3 10 02 99 14 02 AD D1 03  ........
        .byte   $48,$29,$08,$F0,$08,$A9,$F8,$99 ; EDFB 48 29 08 F0 08 A9 F8 99  H)......
        .byte   $00,$02,$99,$0C,$02,$68,$48,$29 ; EE03 00 02 99 0C 02 68 48 29  .....hH)
        .byte   $04,$F0,$08,$A9,$F8,$99,$04,$02 ; EE0B 04 F0 08 A9 F8 99 04 02  ........
        .byte   $99,$10,$02,$68,$29,$02,$F0,$08 ; EE13 99 10 02 68 29 02 F0 08  ...h)...
        .byte   $A9,$F8,$99,$08,$02,$99,$14,$02 ; EE1B A9 F8 99 08 02 99 14 02  ........
        .byte   $A6,$08,$60                     ; EE23 A6 08 60                 ..`
; ----------------------------------------------------------------------------
LEE26:
        ldy     SprObject_Y_HighPos             ; EE26 A4 B5                    ..
        dey                                     ; EE28 88                       .
        bne     LEE4B                           ; EE29 D0 20                    . 
        lda     Bubble_OffscreenBits            ; EE2B AD D3 03                 ...
        and     #$08                            ; EE2E 29 08                    ).
        bne     LEE4B                           ; EE30 D0 19                    ..
        ldy     Bubble_SprDataOffset,x          ; EE32 BC EE 06                 ...
        lda     Bubble_Rel_XPos                 ; EE35 AD B0 03                 ...
        sta     Sprite_X_Position,y             ; EE38 99 03 02                 ...
        lda     Bubble_Rel_YPos                 ; EE3B AD BB 03                 ...
        sta     Sprite_Y_Position,y             ; EE3E 99 00 02                 ...
        lda     #$74                            ; EE41 A9 74                    .t
        sta     Sprite_Tilenumber,y             ; EE43 99 01 02                 ...
        lda     #$02                            ; EE46 A9 02                    ..
        sta     Sprite_Attributes,y             ; EE48 99 02 02                 ...
LEE4B:
        rts                                     ; EE4B 60                       `

; ----------------------------------------------------------------------------
LEE4C:
        .byte   $20,$28,$C8,$18,$00,$40,$50,$58 ; EE4C 20 28 C8 18 00 40 50 58   (...@PX
        .byte   $80,$88,$B8,$78,$60,$A0,$B0,$B8 ; EE54 80 88 B8 78 60 A0 B0 B8  ...x`...
LEE5C:
        .byte   $00                             ; EE5C 00                       .
LEE5D:
        .byte   $01,$02,$03,$04,$05,$06,$07,$08 ; EE5D 01 02 03 04 05 06 07 08  ........
        .byte   $09,$0A,$0B,$0C,$0D,$0E,$0F,$10 ; EE65 09 0A 0B 0C 0D 0E 0F 10  ........
        .byte   $11,$12,$13,$14,$15,$16,$17,$18 ; EE6D 11 12 13 14 15 16 17 18  ........
        .byte   $19,$1A,$1B,$1C,$1D,$1E,$1F,$20 ; EE75 19 1A 1B 1C 1D 1E 1F 20  ....... 
        .byte   $21,$22,$23,$24,$25,$26,$27,$08 ; EE7D 21 22 23 24 25 26 27 08  !"#$%&'.
        .byte   $09,$28,$29,$2A,$2B,$2C,$2D,$08 ; EE85 09 28 29 2A 2B 2C 2D 08  .()*+,-.
        .byte   $09,$0A,$0B,$0C,$30,$2C,$2D,$08 ; EE8D 09 0A 0B 0C 30 2C 2D 08  ....0,-.
        .byte   $09,$0A,$0B,$2E,$2F,$2C,$2D,$08 ; EE95 09 0A 0B 2E 2F 2C 2D 08  ..../,-.
        .byte   $09,$28,$29,$2A,$2B,$5C,$5D,$08 ; EE9D 09 28 29 2A 2B 5C 5D 08  .()*+\].
        .byte   $09,$0A,$0B,$0C,$0D,$5E,$5F,$FC ; EEA5 09 0A 0B 0C 0D 5E 5F FC  .....^_.
        .byte   $FC,$08,$09,$58,$59,$5A,$5A,$08 ; EEAD FC 08 09 58 59 5A 5A 08  ...XYZZ.
        .byte   $09,$28,$29,$2A,$2B,$0E,$0F,$FC ; EEB5 09 28 29 2A 2B 0E 0F FC  .()*+...
        .byte   $FC,$FC,$FC,$32,$33,$34,$35,$FC ; EEBD FC FC FC 32 33 34 35 FC  ...2345.
        .byte   $FC,$FC,$FC,$36,$37,$38,$39,$FC ; EEC5 FC FC FC 36 37 38 39 FC  ...6789.
        .byte   $FC,$FC,$FC,$3A,$37,$3B,$3C,$FC ; EECD FC FC FC 3A 37 3B 3C FC  ...:7;<.
        .byte   $FC,$FC,$FC,$3D,$3E,$3F,$40,$FC ; EED5 FC FC FC 3D 3E 3F 40 FC  ...=>?@.
        .byte   $FC,$FC,$FC,$32,$41,$42,$43,$FC ; EEDD FC FC FC 32 41 42 43 FC  ...2ABC.
        .byte   $FC,$FC,$FC,$32,$33,$44,$45,$FC ; EEE5 FC FC FC 32 33 44 45 FC  ...23DE.
        .byte   $FC,$FC,$FC,$32,$33,$44,$47,$FC ; EEED FC FC FC 32 33 44 47 FC  ...23DG.
        .byte   $FC,$FC,$FC,$32,$33             ; EEF5 FC FC FC 32 33           ...23
LEEFA:
        .byte   $48,$49,$FC,$FC,$FC,$FC,$32,$33 ; EEFA 48 49 FC FC FC FC 32 33  HI....23
        .byte   $90,$91,$FC,$FC,$FC,$FC,$3A,$37 ; EF02 90 91 FC FC FC FC 3A 37  ......:7
        .byte   $92,$93,$FC,$FC,$FC,$FC,$9E,$9E ; EF0A 92 93 FC FC FC FC 9E 9E  ........
        .byte   $9F,$9F,$FC,$FC,$FC,$FC,$3A,$37 ; EF12 9F 9F FC FC FC FC 3A 37  ......:7
        .byte   $4F,$4F,$FC,$FC,$00,$01,$4C,$4D ; EF1A 4F 4F FC FC 00 01 4C 4D  OO....LM
        .byte   $4E,$4E,$00,$01,$4C,$4D,$4A,$4A ; EF22 4E 4E 00 01 4C 4D 4A 4A  NN..LMJJ
        .byte   $4B,$4B                         ; EF2A 4B 4B                    KK
LEF2C:
        .byte   $31,$46                         ; EF2C 31 46                    1F
; ----------------------------------------------------------------------------
LEF2E:
        lda     InjuryTimer                     ; EF2E AD 9E 07                 ...
        beq     LEF38                           ; EF31 F0 05                    ..
        lda     FrameCounter                    ; EF33 A5 09                    ..
        lsr     a                               ; EF35 4A                       J
        bcs     LEF78                           ; EF36 B0 40                    .@
LEF38:
        lda     GameEngineSubroutine            ; EF38 A5 0E                    ..
        cmp     #$0B                            ; EF3A C9 0B                    ..
        beq     LEF85                           ; EF3C F0 47                    .G
        lda     PlayerChangeSizeFlag            ; EF3E AD 0B 07                 ...
        bne     LEF7F                           ; EF41 D0 3C                    .<
        ldy     SwimmingFlag                    ; EF43 AC 04 07                 ...
        beq     LEF79                           ; EF46 F0 31                    .1
        lda     Player_State                    ; EF48 A5 1D                    ..
        cmp     #$00                            ; EF4A C9 00                    ..
        beq     LEF79                           ; EF4C F0 2B                    .+
        jsr     LEF79                           ; EF4E 20 79 EF                  y.
        lda     FrameCounter                    ; EF51 A5 09                    ..
        and     #$04                            ; EF53 29 04                    ).
        bne     LEF78                           ; EF55 D0 21                    .!
        tax                                     ; EF57 AA                       .
        ldy     Player_SprDataOffset            ; EF58 AC E4 06                 ...
        lda     PlayerFacingDir                 ; EF5B A5 33                    .3
        lsr     a                               ; EF5D 4A                       J
        bcs     LEF64                           ; EF5E B0 04                    ..
        .byte   $C8,$C8,$C8,$C8                 ; EF60 C8 C8 C8 C8              ....
; ----------------------------------------------------------------------------
LEF64:
        lda     PlayerSize                      ; EF64 AD 54 07                 .T.
        beq     LEF72                           ; EF67 F0 09                    ..
        lda     $0219,y                         ; EF69 B9 19 02                 ...
        cmp     LEEFA                           ; EF6C CD FA EE                 ...
        beq     LEF78                           ; EF6F F0 07                    ..
        inx                                     ; EF71 E8                       .
LEF72:
        lda     LEF2C,x                         ; EF72 BD 2C EF                 .,.
        sta     $0219,y                         ; EF75 99 19 02                 ...
LEF78:
        rts                                     ; EF78 60                       `

; ----------------------------------------------------------------------------
LEF79:
        jsr     LF031                           ; EF79 20 31 F0                  1.
        jmp     LEF8A                           ; EF7C 4C 8A EF                 L..

; ----------------------------------------------------------------------------
LEF7F:
        jsr     LF0F5                           ; EF7F 20 F5 F0                  ..
        jmp     LEF8A                           ; EF82 4C 8A EF                 L..

; ----------------------------------------------------------------------------
LEF85:
        ldy     #$0E                            ; EF85 A0 0E                    ..
        lda     LEE4C,y                         ; EF87 B9 4C EE                 .L.
LEF8A:
        sta     PlayerGfxOffset                 ; EF8A 8D D5 06                 ...
        lda     #$04                            ; EF8D A9 04                    ..
        jsr     LF003                           ; EF8F 20 03 F0                  ..
        jsr     LF12E                           ; EF92 20 2E F1                  ..
        lda     FireballThrowingTimer           ; EF95 AD 11 07                 ...
        beq     LEFBF                           ; EF98 F0 25                    .%
        ldy     #$00                            ; EF9A A0 00                    ..
        lda     PlayerAnimTimer                 ; EF9C AD 81 07                 ...
        cmp     FireballThrowingTimer           ; EF9F CD 11 07                 ...
        sty     FireballThrowingTimer           ; EFA2 8C 11 07                 ...
        bcs     LEFBF                           ; EFA5 B0 18                    ..
        sta     FireballThrowingTimer           ; EFA7 8D 11 07                 ...
        ldy     #$07                            ; EFAA A0 07                    ..
        lda     LEE4C,y                         ; EFAC B9 4C EE                 .L.
        sta     PlayerGfxOffset                 ; EFAF 8D D5 06                 ...
        ldy     #$04                            ; EFB2 A0 04                    ..
        lda     SprObject_X_Speed               ; EFB4 A5 57                    .W
        ora     Left_Right_Buttons              ; EFB6 05 0C                    ..
        beq     LEFBB                           ; EFB8 F0 01                    ..
        dey                                     ; EFBA 88                       .
LEFBB:
        tya                                     ; EFBB 98                       .
        jsr     LF003                           ; EFBC 20 03 F0                  ..
LEFBF:
        lda     SprObject_OffscrBits            ; EFBF AD D0 03                 ...
        lsr     a                               ; EFC2 4A                       J
        lsr     a                               ; EFC3 4A                       J
        lsr     a                               ; EFC4 4A                       J
        lsr     a                               ; EFC5 4A                       J
        sta     $00                             ; EFC6 85 00                    ..
        ldx     #$03                            ; EFC8 A2 03                    ..
        lda     Player_SprDataOffset            ; EFCA AD E4 06                 ...
        clc                                     ; EFCD 18                       .
        adc     #$18                            ; EFCE 69 18                    i.
        tay                                     ; EFD0 A8                       .
LEFD1:
        lda     #$F8                            ; EFD1 A9 F8                    ..
        lsr     $00                             ; EFD3 46 00                    F.
        bcc     LEFDA                           ; EFD5 90 03                    ..
        jsr     LE5DA                           ; EFD7 20 DA E5                  ..
LEFDA:
        tya                                     ; EFDA 98                       .
        sec                                     ; EFDB 38                       8
        sbc     #$08                            ; EFDC E9 08                    ..
        tay                                     ; EFDE A8                       .
        dex                                     ; EFDF CA                       .
        bpl     LEFD1                           ; EFE0 10 EF                    ..
        rts                                     ; EFE2 60                       `

; ----------------------------------------------------------------------------
LEFE3:
        .byte   $58,$01,$00,$60,$FF,$04         ; EFE3 58 01 00 60 FF 04        X..`..
; ----------------------------------------------------------------------------
LEFE9:
        ldx     #$05                            ; EFE9 A2 05                    ..
LEFEB:
        lda     LEFE3,x                         ; EFEB BD E3 EF                 ...
        sta     $02,x                           ; EFEE 95 02                    ..
        dex                                     ; EFF0 CA                       .
        bpl     LEFEB                           ; EFF1 10 F8                    ..
        ldx     #$B8                            ; EFF3 A2 B8                    ..
        ldy     #$04                            ; EFF5 A0 04                    ..
        jsr     LF021                           ; EFF7 20 21 F0                  !.
        lda     $0226                           ; EFFA AD 26 02                 .&.
        ora     #$40                            ; EFFD 09 40                    .@
        sta     $0222                           ; EFFF 8D 22 02                 .".
        rts                                     ; F002 60                       `

; ----------------------------------------------------------------------------
LF003:
        sta     $07                             ; F003 85 07                    ..
        lda     SprObject_Rel_XPos              ; F005 AD AD 03                 ...
        sta     Player_Pos_ForScroll            ; F008 8D 55 07                 .U.
        sta     $05                             ; F00B 85 05                    ..
        lda     SprObject_Rel_YPos              ; F00D AD B8 03                 ...
        sta     $02                             ; F010 85 02                    ..
        lda     PlayerFacingDir                 ; F012 A5 33                    .3
        sta     $03                             ; F014 85 03                    ..
        lda     SprObject_SprAttrib             ; F016 AD C4 03                 ...
        sta     $04                             ; F019 85 04                    ..
        ldx     PlayerGfxOffset                 ; F01B AE D5 06                 ...
        ldy     Player_SprDataOffset            ; F01E AC E4 06                 ...
LF021:
        lda     LEE5C,x                         ; F021 BD 5C EE                 .\.
        sta     $00                             ; F024 85 00                    ..
        lda     LEE5D,x                         ; F026 BD 5D EE                 .].
        jsr     LEBF7                           ; F029 20 F7 EB                  ..
        dec     $07                             ; F02C C6 07                    ..
        bne     LF021                           ; F02E D0 F1                    ..
        rts                                     ; F030 60                       `

; ----------------------------------------------------------------------------
LF031:
        lda     Player_State                    ; F031 A5 1D                    ..
        cmp     #$03                            ; F033 C9 03                    ..
        beq     LF089                           ; F035 F0 52                    .R
        cmp     #$02                            ; F037 C9 02                    ..
        beq     LF079                           ; F039 F0 3E                    .>
        cmp     #$01                            ; F03B C9 01                    ..
        bne     LF050                           ; F03D D0 11                    ..
        lda     SwimmingFlag                    ; F03F AD 04 07                 ...
        bne     LF095                           ; F042 D0 51                    .Q
        ldy     #$06                            ; F044 A0 06                    ..
        lda     CrouchingFlag                   ; F046 AD 14 07                 ...
        bne     LF06D                           ; F049 D0 22                    ."
        ldy     #$00                            ; F04B A0 00                    ..
        jmp     LF06D                           ; F04D 4C 6D F0                 Lm.

; ----------------------------------------------------------------------------
LF050:
        ldy     #$06                            ; F050 A0 06                    ..
        lda     CrouchingFlag                   ; F052 AD 14 07                 ...
        bne     LF06D                           ; F055 D0 16                    ..
        ldy     #$02                            ; F057 A0 02                    ..
        lda     SprObject_X_Speed               ; F059 A5 57                    .W
        ora     Left_Right_Buttons              ; F05B 05 0C                    ..
        beq     LF06D                           ; F05D F0 0E                    ..
        lda     Player_XSpeedAbsolute           ; F05F AD 00 07                 ...
        cmp     #$09                            ; F062 C9 09                    ..
        bcc     LF081                           ; F064 90 1B                    ..
        lda     Player_MovingDir                ; F066 A5 45                    .E
        and     PlayerFacingDir                 ; F068 25 33                    %3
        bne     LF081                           ; F06A D0 15                    ..
        iny                                     ; F06C C8                       .
LF06D:
        jsr     LF0D6                           ; F06D 20 D6 F0                  ..
        lda     #$00                            ; F070 A9 00                    ..
        sta     PlayerAnimCtrl                  ; F072 8D 0D 07                 ...
        lda     LEE4C,y                         ; F075 B9 4C EE                 .L.
        rts                                     ; F078 60                       `

; ----------------------------------------------------------------------------
LF079:
        ldy     #$04                            ; F079 A0 04                    ..
        jsr     LF0D6                           ; F07B 20 D6 F0                  ..
        jmp     LF0A7                           ; F07E 4C A7 F0                 L..

; ----------------------------------------------------------------------------
LF081:
        ldy     #$04                            ; F081 A0 04                    ..
        jsr     LF0D6                           ; F083 20 D6 F0                  ..
        jmp     LF0AD                           ; F086 4C AD F0                 L..

; ----------------------------------------------------------------------------
LF089:
        ldy     #$05                            ; F089 A0 05                    ..
        lda     SprObject_Y_Speed               ; F08B A5 9F                    ..
        beq     LF06D                           ; F08D F0 DE                    ..
        jsr     LF0D6                           ; F08F 20 D6 F0                  ..
        jmp     LF0B2                           ; F092 4C B2 F0                 L..

; ----------------------------------------------------------------------------
LF095:
        ldy     #$01                            ; F095 A0 01                    ..
        jsr     LF0D6                           ; F097 20 D6 F0                  ..
        lda     JumpSwimTimer                   ; F09A AD 82 07                 ...
        ora     PlayerAnimCtrl                  ; F09D 0D 0D 07                 ...
        bne     LF0AD                           ; F0A0 D0 0B                    ..
        lda     A_B_Buttons                     ; F0A2 A5 0A                    ..
        asl     a                               ; F0A4 0A                       .
        bcs     LF0AD                           ; F0A5 B0 06                    ..
LF0A7:
        lda     PlayerAnimCtrl                  ; F0A7 AD 0D 07                 ...
        jmp     LF115                           ; F0AA 4C 15 F1                 L..

; ----------------------------------------------------------------------------
LF0AD:
        lda     #$03                            ; F0AD A9 03                    ..
        jmp     LF0B4                           ; F0AF 4C B4 F0                 L..

; ----------------------------------------------------------------------------
LF0B2:
        lda     #$02                            ; F0B2 A9 02                    ..
LF0B4:
        sta     $00                             ; F0B4 85 00                    ..
        jsr     LF0A7                           ; F0B6 20 A7 F0                  ..
        pha                                     ; F0B9 48                       H
        lda     PlayerAnimTimer                 ; F0BA AD 81 07                 ...
        bne     LF0D4                           ; F0BD D0 15                    ..
        lda     PlayerAnimTimerSet              ; F0BF AD 0C 07                 ...
        sta     PlayerAnimTimer                 ; F0C2 8D 81 07                 ...
        lda     PlayerAnimCtrl                  ; F0C5 AD 0D 07                 ...
        clc                                     ; F0C8 18                       .
        adc     #$01                            ; F0C9 69 01                    i.
        cmp     $00                             ; F0CB C5 00                    ..
        bcc     LF0D1                           ; F0CD 90 02                    ..
        lda     #$00                            ; F0CF A9 00                    ..
LF0D1:
        sta     PlayerAnimCtrl                  ; F0D1 8D 0D 07                 ...
LF0D4:
        pla                                     ; F0D4 68                       h
        rts                                     ; F0D5 60                       `

; ----------------------------------------------------------------------------
LF0D6:
        lda     PlayerSize                      ; F0D6 AD 54 07                 .T.
        beq     LF0E0                           ; F0D9 F0 05                    ..
        tya                                     ; F0DB 98                       .
        clc                                     ; F0DC 18                       .
        adc     #$08                            ; F0DD 69 08                    i.
        tay                                     ; F0DF A8                       .
LF0E0:
        rts                                     ; F0E0 60                       `

; ----------------------------------------------------------------------------
LF0E1:
        .byte   $00,$01,$00,$01,$00,$01,$02,$00 ; F0E1 00 01 00 01 00 01 02 00  ........
        .byte   $01,$02,$02,$00,$02,$00,$02,$00 ; F0E9 01 02 02 00 02 00 02 00  ........
        .byte   $02,$00,$02,$00                 ; F0F1 02 00 02 00              ....
; ----------------------------------------------------------------------------
LF0F5:
        ldy     PlayerAnimCtrl                  ; F0F5 AC 0D 07                 ...
        lda     FrameCounter                    ; F0F8 A5 09                    ..
        and     #$03                            ; F0FA 29 03                    ).
        bne     LF10B                           ; F0FC D0 0D                    ..
        iny                                     ; F0FE C8                       .
        cpy     #$0A                            ; F0FF C0 0A                    ..
        bcc     LF108                           ; F101 90 05                    ..
        ldy     #$00                            ; F103 A0 00                    ..
        sty     PlayerChangeSizeFlag            ; F105 8C 0B 07                 ...
LF108:
        sty     PlayerAnimCtrl                  ; F108 8C 0D 07                 ...
LF10B:
        lda     PlayerSize                      ; F10B AD 54 07                 .T.
        bne     LF11C                           ; F10E D0 0C                    ..
        lda     LF0E1,y                         ; F110 B9 E1 F0                 ...
        ldy     #$0F                            ; F113 A0 0F                    ..
LF115:
        asl     a                               ; F115 0A                       .
        asl     a                               ; F116 0A                       .
        asl     a                               ; F117 0A                       .
        adc     LEE4C,y                         ; F118 79 4C EE                 yL.
        rts                                     ; F11B 60                       `

; ----------------------------------------------------------------------------
LF11C:
        tya                                     ; F11C 98                       .
        clc                                     ; F11D 18                       .
        adc     #$0A                            ; F11E 69 0A                    i.
        tax                                     ; F120 AA                       .
        ldy     #$09                            ; F121 A0 09                    ..
        lda     LF0E1,x                         ; F123 BD E1 F0                 ...
        bne     LF12A                           ; F126 D0 02                    ..
        ldy     #$01                            ; F128 A0 01                    ..
LF12A:
        lda     LEE4C,y                         ; F12A B9 4C EE                 .L.
        rts                                     ; F12D 60                       `

; ----------------------------------------------------------------------------
LF12E:
        ldy     Player_SprDataOffset            ; F12E AC E4 06                 ...
        lda     GameEngineSubroutine            ; F131 A5 0E                    ..
        cmp     #$0B                            ; F133 C9 0B                    ..
        beq     LF14A                           ; F135 F0 13                    ..
        lda     PlayerGfxOffset                 ; F137 AD D5 06                 ...
        cmp     #$50                            ; F13A C9 50                    .P
        beq     LF15C                           ; F13C F0 1E                    ..
        cmp     #$B8                            ; F13E C9 B8                    ..
        beq     LF15C                           ; F140 F0 1A                    ..
        cmp     #$C0                            ; F142 C9 C0                    ..
        beq     LF15C                           ; F144 F0 16                    ..
        cmp     #$C8                            ; F146 C9 C8                    ..
        bne     LF16E                           ; F148 D0 24                    .$
LF14A:
        lda     $0212,y                         ; F14A B9 12 02                 ...
        and     #$3F                            ; F14D 29 3F                    )?
        sta     $0212,y                         ; F14F 99 12 02                 ...
        lda     $0216,y                         ; F152 B9 16 02                 ...
        and     #$3F                            ; F155 29 3F                    )?
        ora     #$40                            ; F157 09 40                    .@
        sta     $0216,y                         ; F159 99 16 02                 ...
LF15C:
        lda     $021A,y                         ; F15C B9 1A 02                 ...
        and     #$3F                            ; F15F 29 3F                    )?
        sta     $021A,y                         ; F161 99 1A 02                 ...
        lda     $021E,y                         ; F164 B9 1E 02                 ...
        and     #$3F                            ; F167 29 3F                    )?
        ora     #$40                            ; F169 09 40                    .@
        sta     $021E,y                         ; F16B 99 1E 02                 ...
LF16E:
        rts                                     ; F16E 60                       `

; ----------------------------------------------------------------------------
LF16F:
        ldx     #$00                            ; F16F A2 00                    ..
        ldy     #$00                            ; F171 A0 00                    ..
        jmp     LF187                           ; F173 4C 87 F1                 L..

; ----------------------------------------------------------------------------
LF176:
        ldy     #$01                            ; F176 A0 01                    ..
        jsr     LF1ED                           ; F178 20 ED F1                  ..
        ldy     #$03                            ; F17B A0 03                    ..
        jmp     LF187                           ; F17D 4C 87 F1                 L..

; ----------------------------------------------------------------------------
LF180:
        ldy     #$00                            ; F180 A0 00                    ..
        jsr     LF1ED                           ; F182 20 ED F1                  ..
        ldy     #$02                            ; F185 A0 02                    ..
LF187:
        jsr     LF1B6                           ; F187 20 B6 F1                  ..
        ldx     ObjectOffset                    ; F18A A6 08                    ..
        rts                                     ; F18C 60                       `

; ----------------------------------------------------------------------------
LF18D:
        ldy     #$02                            ; F18D A0 02                    ..
        jsr     LF1ED                           ; F18F 20 ED F1                  ..
        ldy     #$06                            ; F192 A0 06                    ..
        jmp     LF187                           ; F194 4C 87 F1                 L..

; ----------------------------------------------------------------------------
LF197:
        lda     #$01                            ; F197 A9 01                    ..
        ldy     #$01                            ; F199 A0 01                    ..
        jmp     LF1AA                           ; F19B 4C AA F1                 L..

; ----------------------------------------------------------------------------
LF19E:
        lda     #$09                            ; F19E A9 09                    ..
        ldy     #$04                            ; F1A0 A0 04                    ..
        jsr     LF1AA                           ; F1A2 20 AA F1                  ..
        inx                                     ; F1A5 E8                       .
        inx                                     ; F1A6 E8                       .
        lda     #$09                            ; F1A7 A9 09                    ..
        iny                                     ; F1A9 C8                       .
LF1AA:
        stx     $00                             ; F1AA 86 00                    ..
        clc                                     ; F1AC 18                       .
        adc     $00                             ; F1AD 65 00                    e.
        tax                                     ; F1AF AA                       .
        jsr     LF1B6                           ; F1B0 20 B6 F1                  ..
        ldx     ObjectOffset                    ; F1B3 A6 08                    ..
        rts                                     ; F1B5 60                       `

; ----------------------------------------------------------------------------
LF1B6:
        lda     SprObject_Y_Position,x          ; F1B6 B5 CE                    ..
        sta     SprObject_Rel_YPos,y            ; F1B8 99 B8 03                 ...
        lda     SprObject_X_Position,x          ; F1BB B5 86                    ..
        sec                                     ; F1BD 38                       8
        sbc     ScreenEdge_X_Pos                ; F1BE ED 1C 07                 ...
        sta     SprObject_Rel_XPos,y            ; F1C1 99 AD 03                 ...
        rts                                     ; F1C4 60                       `

; ----------------------------------------------------------------------------
LF1C5:
        ldx     #$00                            ; F1C5 A2 00                    ..
        ldy     #$00                            ; F1C7 A0 00                    ..
        jmp     LF205                           ; F1C9 4C 05 F2                 L..

; ----------------------------------------------------------------------------
LF1CC:
        ldy     #$00                            ; F1CC A0 00                    ..
        jsr     LF1ED                           ; F1CE 20 ED F1                  ..
        ldy     #$02                            ; F1D1 A0 02                    ..
        jmp     LF205                           ; F1D3 4C 05 F2                 L..

; ----------------------------------------------------------------------------
LF1D6:
        ldy     #$01                            ; F1D6 A0 01                    ..
        jsr     LF1ED                           ; F1D8 20 ED F1                  ..
        ldy     #$03                            ; F1DB A0 03                    ..
        jmp     LF205                           ; F1DD 4C 05 F2                 L..

; ----------------------------------------------------------------------------
LF1E0:
        ldy     #$02                            ; F1E0 A0 02                    ..
        jsr     LF1ED                           ; F1E2 20 ED F1                  ..
        ldy     #$06                            ; F1E5 A0 06                    ..
        jmp     LF205                           ; F1E7 4C 05 F2                 L..

; ----------------------------------------------------------------------------
LF1EA:
        .byte   $07,$16,$0D                     ; F1EA 07 16 0D                 ...
; ----------------------------------------------------------------------------
LF1ED:
        txa                                     ; F1ED 8A                       .
        clc                                     ; F1EE 18                       .
        adc     LF1EA,y                         ; F1EF 79 EA F1                 y..
        tax                                     ; F1F2 AA                       .
        rts                                     ; F1F3 60                       `

; ----------------------------------------------------------------------------
LF1F4:
        lda     #$01                            ; F1F4 A9 01                    ..
        ldy     #$01                            ; F1F6 A0 01                    ..
        jmp     LF1FF                           ; F1F8 4C FF F1                 L..

; ----------------------------------------------------------------------------
LF1FB:
        lda     #$09                            ; F1FB A9 09                    ..
        ldy     #$04                            ; F1FD A0 04                    ..
LF1FF:
        stx     $00                             ; F1FF 86 00                    ..
        clc                                     ; F201 18                       .
        adc     $00                             ; F202 65 00                    e.
        tax                                     ; F204 AA                       .
LF205:
        tya                                     ; F205 98                       .
        pha                                     ; F206 48                       H
        jsr     LF21C                           ; F207 20 1C F2                  ..
        asl     a                               ; F20A 0A                       .
        asl     a                               ; F20B 0A                       .
        asl     a                               ; F20C 0A                       .
        asl     a                               ; F20D 0A                       .
        ora     $00                             ; F20E 05 00                    ..
        sta     $00                             ; F210 85 00                    ..
        pla                                     ; F212 68                       h
        tay                                     ; F213 A8                       .
        lda     $00                             ; F214 A5 00                    ..
        sta     SprObject_OffscrBits,y          ; F216 99 D0 03                 ...
        ldx     ObjectOffset                    ; F219 A6 08                    ..
        rts                                     ; F21B 60                       `

; ----------------------------------------------------------------------------
LF21C:
        jsr     LF23B                           ; F21C 20 3B F2                  ;.
        lsr     a                               ; F21F 4A                       J
        lsr     a                               ; F220 4A                       J
        lsr     a                               ; F221 4A                       J
        lsr     a                               ; F222 4A                       J
        sta     $00                             ; F223 85 00                    ..
        jmp     LF27E                           ; F225 4C 7E F2                 L~.

; ----------------------------------------------------------------------------
LF228:
        .byte   $7F,$3F,$1F,$0F,$07,$03,$01,$00 ; F228 7F 3F 1F 0F 07 03 01 00  .?......
        .byte   $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF ; F230 80 C0 E0 F0 F8 FC FE FF  ........
LF238:
        .byte   $07                             ; F238 07                       .
LF239:
        .byte   $0F,$07                         ; F239 0F 07                    ..
; ----------------------------------------------------------------------------
LF23B:
        stx     $04                             ; F23B 86 04                    ..
        ldy     #$01                            ; F23D A0 01                    ..
LF23F:
        lda     ScreenEdge_X_Pos,y              ; F23F B9 1C 07                 ...
        sec                                     ; F242 38                       8
        sbc     SprObject_X_Position,x          ; F243 F5 86                    ..
        sta     $07                             ; F245 85 07                    ..
        lda     ScreenEdge_PageLoc,y            ; F247 B9 1A 07                 ...
        sbc     SprObject_PageLoc,x             ; F24A F5 6D                    .m
        ldx     LF238,y                         ; F24C BE 38 F2                 .8.
        cmp     #$00                            ; F24F C9 00                    ..
        bmi     LF263                           ; F251 30 10                    0.
        ldx     LF239,y                         ; F253 BE 39 F2                 .9.
        cmp     #$01                            ; F256 C9 01                    ..
        bpl     LF263                           ; F258 10 09                    ..
        lda     #$38                            ; F25A A9 38                    .8
        sta     $06                             ; F25C 85 06                    ..
        lda     #$08                            ; F25E A9 08                    ..
        jsr     LF2B2                           ; F260 20 B2 F2                  ..
LF263:
        lda     LF228,x                         ; F263 BD 28 F2                 .(.
        ldx     $04                             ; F266 A6 04                    ..
        cmp     #$00                            ; F268 C9 00                    ..
        bne     LF26F                           ; F26A D0 03                    ..
        dey                                     ; F26C 88                       .
        bpl     LF23F                           ; F26D 10 D0                    ..
LF26F:
        rts                                     ; F26F 60                       `

; ----------------------------------------------------------------------------
LF270:
        .byte   $00,$08,$0C,$0E,$0F,$07,$03,$01 ; F270 00 08 0C 0E 0F 07 03 01  ........
        .byte   $00                             ; F278 00                       .
LF279:
        .byte   $04                             ; F279 04                       .
LF27A:
        .byte   $00,$04                         ; F27A 00 04                    ..
LF27C:
        .byte   $FF,$00                         ; F27C FF 00                    ..
; ----------------------------------------------------------------------------
LF27E:
        stx     $04                             ; F27E 86 04                    ..
        ldy     #$01                            ; F280 A0 01                    ..
LF282:
        lda     LF27C,y                         ; F282 B9 7C F2                 .|.
        sec                                     ; F285 38                       8
        sbc     SprObject_Y_Position,x          ; F286 F5 CE                    ..
        sta     $07                             ; F288 85 07                    ..
        lda     #$01                            ; F28A A9 01                    ..
        sbc     SprObject_Y_HighPos,x           ; F28C F5 B5                    ..
        ldx     LF279,y                         ; F28E BE 79 F2                 .y.
        cmp     #$00                            ; F291 C9 00                    ..
        bmi     LF2A5                           ; F293 30 10                    0.
        ldx     LF27A,y                         ; F295 BE 7A F2                 .z.
        cmp     #$01                            ; F298 C9 01                    ..
        bpl     LF2A5                           ; F29A 10 09                    ..
        lda     #$20                            ; F29C A9 20                    . 
        sta     $06                             ; F29E 85 06                    ..
        lda     #$04                            ; F2A0 A9 04                    ..
        jsr     LF2B2                           ; F2A2 20 B2 F2                  ..
LF2A5:
        lda     LF270,x                         ; F2A5 BD 70 F2                 .p.
        ldx     $04                             ; F2A8 A6 04                    ..
        cmp     #$00                            ; F2AA C9 00                    ..
        bne     LF2B1                           ; F2AC D0 03                    ..
        dey                                     ; F2AE 88                       .
        bpl     LF282                           ; F2AF 10 D1                    ..
LF2B1:
        rts                                     ; F2B1 60                       `

; ----------------------------------------------------------------------------
LF2B2:
        sta     $05                             ; F2B2 85 05                    ..
        lda     $07                             ; F2B4 A5 07                    ..
        cmp     $06                             ; F2B6 C5 06                    ..
        bcs     LF2C6                           ; F2B8 B0 0C                    ..
        lsr     a                               ; F2BA 4A                       J
        lsr     a                               ; F2BB 4A                       J
        lsr     a                               ; F2BC 4A                       J
        and     #$07                            ; F2BD 29 07                    ).
        cpy     #$01                            ; F2BF C0 01                    ..
        bcs     LF2C5                           ; F2C1 B0 02                    ..
        adc     $05                             ; F2C3 65 05                    e.
LF2C5:
        tax                                     ; F2C5 AA                       .
LF2C6:
        rts                                     ; F2C6 60                       `

; ----------------------------------------------------------------------------
LF2C7:
        lda     $03                             ; F2C7 A5 03                    ..
        lsr     a                               ; F2C9 4A                       J
        lsr     a                               ; F2CA 4A                       J
        lda     $00                             ; F2CB A5 00                    ..
        bcc     LF2DB                           ; F2CD 90 0C                    ..
        sta     $0205,y                         ; F2CF 99 05 02                 ...
        lda     $01                             ; F2D2 A5 01                    ..
        sta     Sprite_Tilenumber,y             ; F2D4 99 01 02                 ...
        lda     #$40                            ; F2D7 A9 40                    .@
        bne     LF2E5                           ; F2D9 D0 0A                    ..
LF2DB:
        sta     Sprite_Tilenumber,y             ; F2DB 99 01 02                 ...
        lda     $01                             ; F2DE A5 01                    ..
        sta     $0205,y                         ; F2E0 99 05 02                 ...
        lda     #$00                            ; F2E3 A9 00                    ..
LF2E5:
        ora     $04                             ; F2E5 05 04                    ..
        sta     Sprite_Attributes,y             ; F2E7 99 02 02                 ...
        sta     $0206,y                         ; F2EA 99 06 02                 ...
        lda     $02                             ; F2ED A5 02                    ..
        sta     Sprite_Y_Position,y             ; F2EF 99 00 02                 ...
        sta     $0204,y                         ; F2F2 99 04 02                 ...
        lda     $05                             ; F2F5 A5 05                    ..
        sta     Sprite_X_Position,y             ; F2F7 99 03 02                 ...
        clc                                     ; F2FA 18                       .
        adc     #$08                            ; F2FB 69 08                    i.
        sta     $0207,y                         ; F2FD 99 07 02                 ...
        lda     $02                             ; F300 A5 02                    ..
        clc                                     ; F302 18                       .
        adc     #$08                            ; F303 69 08                    i.
        sta     $02                             ; F305 85 02                    ..
        tya                                     ; F307 98                       .
        clc                                     ; F308 18                       .
        adc     #$08                            ; F309 69 08                    i.
        tay                                     ; F30B A8                       .
        inx                                     ; F30C E8                       .
        inx                                     ; F30D E8                       .
        rts                                     ; F30E 60                       `

; ----------------------------------------------------------------------------
        jsr     LF440                           ; F30F 20 40 F4                  @.
        jsr     LF38B                           ; F312 20 8B F3                  ..
        lda     #$00                            ; F315 A9 00                    ..
        jsr     LF351                           ; F317 20 51 F3                  Q.
        lda     #$01                            ; F31A A9 01                    ..
        jsr     LF365                           ; F31C 20 65 F3                  e.
        jmp     L8000                           ; F31F 4C 00 80                 L..

; ----------------------------------------------------------------------------
LF322:
        lda     #$80                            ; F322 A9 80                    ..
        sta     L8000                           ; F324 8D 00 80                 ...
        lda     #$1E                            ; F327 A9 1E                    ..
        sta     L8000                           ; F329 8D 00 80                 ...
        lsr     a                               ; F32C 4A                       J
        sta     L8000                           ; F32D 8D 00 80                 ...
        lsr     a                               ; F330 4A                       J
        sta     L8000                           ; F331 8D 00 80                 ...
        lsr     a                               ; F334 4A                       J
        sta     L8000                           ; F335 8D 00 80                 ...
        lsr     a                               ; F338 4A                       J
        sta     L8000                           ; F339 8D 00 80                 ...
        rts                                     ; F33C 60                       `

; ----------------------------------------------------------------------------
LF33D:
        sta     LE000                           ; F33D 8D 00 E0                 ...
        lsr     a                               ; F340 4A                       J
        sta     LE000                           ; F341 8D 00 E0                 ...
        lsr     a                               ; F344 4A                       J
        sta     LE000                           ; F345 8D 00 E0                 ...
        lsr     a                               ; F348 4A                       J
        sta     LE000                           ; F349 8D 00 E0                 ...
        lsr     a                               ; F34C 4A                       J
        sta     LE000                           ; F34D 8D 00 E0                 ...
        rts                                     ; F350 60                       `

; ----------------------------------------------------------------------------
LF351:
        sta     $A000                           ; F351 8D 00 A0                 ...
        lsr     a                               ; F354 4A                       J
        sta     $A000                           ; F355 8D 00 A0                 ...
        lsr     a                               ; F358 4A                       J
        sta     $A000                           ; F359 8D 00 A0                 ...
        lsr     a                               ; F35C 4A                       J
        sta     $A000                           ; F35D 8D 00 A0                 ...
        lsr     a                               ; F360 4A                       J
        sta     $A000                           ; F361 8D 00 A0                 ...
        rts                                     ; F364 60                       `

; ----------------------------------------------------------------------------
LF365:
        sta     LC000                           ; F365 8D 00 C0                 ...
        lsr     a                               ; F368 4A                       J
        sta     LC000                           ; F369 8D 00 C0                 ...
        lsr     a                               ; F36C 4A                       J
        sta     LC000                           ; F36D 8D 00 C0                 ...
        lsr     a                               ; F370 4A                       J
        sta     LC000                           ; F371 8D 00 C0                 ...
        lsr     a                               ; F374 4A                       J
        sta     LC000                           ; F375 8D 00 C0                 ...
        rts                                     ; F378 60                       `

; ----------------------------------------------------------------------------
LF379:
        rts                                     ; F38A 60                       `
        pha                                     ; F379 48                       H
        lda     #$02                            ; F37A A9 02                    ..
        jsr     LF33D                           ; F37C 20 3D F3                  =.
        pla                                     ; F37F 68                       h
        jsr     L8000                           ; F380 20 00 80                  ..
        pha                                     ; F383 48                       H
        lda     #$00                            ; F384 A9 00                    ..
        jsr     LF33D                           ; F386 20 3D F3                  =.
        pla                                     ; F389 68                       h

; ----------------------------------------------------------------------------
LF38B:
        pha                                     ; F38B 48                       H
        lda     #$01                            ; F38C A9 01                    ..
        jsr     LF33D                           ; F38E 20 3D F3                  =.
        pla                                     ; F391 68                       h
        jsr     L8000                           ; F392 20 00 80                  ..
        pha                                     ; F395 48                       H
        lda     #$00                            ; F396 A9 00                    ..
        jsr     LF33D                           ; F398 20 3D F3                  =.
        pla                                     ; F39B 68                       h
        rts                                     ; F39C 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$00,$00                     ; F39D 00 00 00                 ...
; ----------------------------------------------------------------------------
        lda     #$02                            ; F3A0 A9 02                    ..
        sta     LDFFF                           ; F3A2 8D FF DF                 ...
        lsr     a                               ; F3A5 4A                       J
        sta     LDFFF                           ; F3A6 8D FF DF                 ...
        lsr     a                               ; F3A9 4A                       J
        sta     LDFFF                           ; F3AA 8D FF DF                 ...
        lsr     a                               ; F3AD 4A                       J
        sta     LDFFF                           ; F3AE 8D FF DF                 ...
        lsr     a                               ; F3B1 4A                       J
        sta     LDFFF                           ; F3B2 8D FF DF                 ...
        jmp     L89D4                           ; F3B5 4C D4 89                 L..

; ----------------------------------------------------------------------------
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F3B8 00 00 00 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
        lda     #$01                            ; F3C0 A9 01                    ..
        sta     LDFFF                           ; F3C2 8D FF DF                 ...
        lsr     a                               ; F3C5 4A                       J
        sta     LDFFF                           ; F3C6 8D FF DF                 ...
        lsr     a                               ; F3C9 4A                       J
        sta     LDFFF                           ; F3CA 8D FF DF                 ...
        lsr     a                               ; F3CD 4A                       J
        sta     LDFFF                           ; F3CE 8D FF DF                 ...
        lsr     a                               ; F3D1 4A                       J
        sta     LDFFF                           ; F3D2 8D FF DF                 ...
        lda     OperMode_Task                   ; F3D5 AD 72 07                 .r.
        rts                                     ; F3D8 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$00,$00,$00,$00,$00,$00     ; F3D9 00 00 00 00 00 00 00     .......
; ----------------------------------------------------------------------------
LF3E0:
        lda     PlayerStatus                    ; F3E0 AD 56 07                 .V.
        beq     LF400                           ; F3E3 F0 1B                    ..
        cmp     #$01                            ; F3E5 C9 01                    ..
        bne     LF412                           ; F3E7 D0 29                    .)
        ldx     ObjectOffset                    ; F3E9 A6 08                    ..
        lda     #$02                            ; F3EB A9 02                    ..
        sta     PlayerStatus                    ; F3ED 8D 56 07                 .V.
        jsr     L85F2                           ; F3F0 20 F2 85                  ..
        ldx     ObjectOffset                    ; F3F3 A6 08                    ..
        lda     #$0C                            ; F3F5 A9 0C                    ..
        jmp     LF407                           ; F3F7 4C 07 F4                 L..

; ----------------------------------------------------------------------------
        .byte   $A9,$0B,$9D,$10,$01,$60         ; F3FA A9 0B 9D 10 01 60        .....`
; ----------------------------------------------------------------------------
LF400:
        lda     #$01                            ; F400 A9 01                    ..
        sta     PlayerStatus                    ; F402 8D 56 07                 .V.
        lda     #$09                            ; F405 A9 09                    ..
LF407:
        ldy     #$00                            ; F407 A0 00                    ..
        jsr     LD92E                           ; F409 20 2E D9                  ..
        lda     #$00                            ; F40C A9 00                    ..
        sta     $07F0                           ; F40E 8D F0 07                 ...
        rts                                     ; F411 60                       `

; ----------------------------------------------------------------------------
LF412:
        .byte   $EE,$F0,$07,$AD,$F0,$07,$C9,$03 ; F412 EE F0 07 AD F0 07 C9 03  ........
        .byte   $B0,$01,$60,$A9,$0B,$9D,$10,$01 ; F41A B0 01 60 A9 0B 9D 10 01  ..`.....
        .byte   $60,$00,$00,$00,$00,$00,$00,$00 ; F422 60 00 00 00 00 00 00 00  `.......
        .byte   $00,$00,$00,$00,$00,$00,$20,$AD ; F42A 00 00 00 00 00 00 20 AD  ...... .
        .byte   $93,$20,$C0,$F3,$60,$00,$00,$00 ; F432 93 20 C0 F3 60 00 00 00  . ..`...
        .byte   $00,$00,$00,$00,$00,$00         ; F43A 00 00 00 00 00 00        ......
; ----------------------------------------------------------------------------
LF440:
        cld                                     ; F440 D8                       .
        sei                                     ; F441 78                       x
        lda     #$00                            ; F442 A9 00                    ..
        sta     PPU_CTRL_REG1                   ; F444 8D 00 20                 .. 
        sta     PPU_CTRL_REG2                   ; F447 8D 01 20                 .. 
        jsr     LF322                           ; F44A 20 22 F3                  ".
        rts                                     ; F44D 60                       `

; ----------------------------------------------------------------------------
        .byte   $00,$00,$AD,$5C,$07,$C9,$03,$F0 ; F44E 00 00 AD 5C 07 C9 03 F0  ...\....
        .byte   $20,$69,$01,$8D,$5C,$07,$8D,$60 ; F456 20 69 01 8D 5C 07 8D 60   i..\..`
        .byte   $07,$AD,$5F,$07,$0A,$A8,$B9,$A0 ; F45E 07 AD 5F 07 0A A8 B9 A0  .._.....
        .byte   $F4,$85,$00,$B9,$A1,$F4,$85,$01 ; F466 F4 85 00 B9 A1 F4 85 01  ........
        .byte   $AC,$5C,$07,$B1,$00,$8D,$60,$07 ; F46E AC 5C 07 B1 00 8D 60 07  .\....`.
        .byte   $60,$AE,$6B,$07,$E8,$8A,$29,$07 ; F476 60 AE 6B 07 E8 8A 29 07  `.k...).
        .byte   $8D,$6B,$07,$8D,$5F,$07,$A9,$00 ; F47E 8D 6B 07 8D 5F 07 A9 00  .k.._...
        .byte   $8D,$5C,$07,$8D,$60,$07,$A2,$00 ; F486 8D 5C 07 8D 60 07 A2 00  .\..`...
        .byte   $60,$FF,$06,$20,$73,$03,$00,$28 ; F48E 60 FF 06 20 73 03 00 28  `.. s..(
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F496 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$B0,$F4,$B4,$F4,$B8,$F4 ; F49E 00 00 B0 F4 B4 F4 B8 F4  ........
        .byte   $BC,$F4,$C0,$F4,$C4,$F4,$C8,$F4 ; F4A6 BC F4 C0 F4 C4 F4 C8 F4  ........
        .byte   $CC,$F4,$00,$01,$03,$04,$00,$01 ; F4AE CC F4 00 01 03 04 00 01  ........
        .byte   $03,$04,$00,$02,$03,$04,$00,$01 ; F4B6 03 04 00 02 03 04 00 01  ........
        .byte   $02,$03,$00,$01,$02,$03,$00,$01 ; F4BE 02 03 00 01 02 03 00 01  ........
        .byte   $02,$03,$00,$01,$03,$04,$00,$01 ; F4C6 02 03 00 01 03 04 00 01  ........
        .byte   $02,$04,$00,$00,$00,$00,$00,$00 ; F4CE 02 04 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F4FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F506 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F50E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F516 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F51E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F526 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F52E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F536 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F53E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F546 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F54E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F556 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F55E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F566 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F56E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F576 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F57E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F586 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F58E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F596 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F59E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5A6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5AE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5B6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5BE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5C6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5CE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F5FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F606 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F60E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F616 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F61E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F626 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F62E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F636 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F63E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F646 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F64E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F656 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F65E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F666 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F66E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F676 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F67E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F686 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F68E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F696 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F69E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6A6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6AE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6B6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6BE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6C6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6CE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F6FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F706 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F70E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F716 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F71E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F726 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F72E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F736 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F73E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F746 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F74E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F756 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F75E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F766 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F76E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F776 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F77E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F786 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F78E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F796 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F79E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7A6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7AE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7B6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7BE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7C6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7CE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F7FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F806 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F80E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F816 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F81E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F826 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F82E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F836 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F83E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F846 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F84E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F856 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F85E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F866 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F86E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F876 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F87E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F886 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F88E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F896 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F89E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8A6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8AE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8B6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8BE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8C6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8CE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F8FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F906 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F90E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F916 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F91E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F926 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F92E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F936 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F93E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F946 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F94E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F956 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F95E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F966 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F96E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F976 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F97E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F986 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F98E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F996 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F99E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9A6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9AE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9B6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9BE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9C6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9CE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9D6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9DE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9E6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9EE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9F6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; F9FE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FA9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FABE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FACE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAD6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FADE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAF6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FAFE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FB9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBBE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBCE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBD6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBDE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBF6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FBFE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FC9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCBE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCCE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCD6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCDE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCF6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FCFE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FD9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDBE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDCE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDD6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDDE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDF6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FDFE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FE9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEBE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FECE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FED6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEDE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEF6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FEFE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF06 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF0E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF16 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF1E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF26 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF2E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF36 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF3E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF46 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF4E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF56 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF5E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF66 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF6E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF76 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF7E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF86 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF8E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF96 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FF9E 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFA6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFAE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFB6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFBE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFC6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFCE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFD6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFDE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFE6 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; FFEE 00 00 00 00 00 00 00 00  ........
        .byte   $00,$00,$00,$00



.segment "SMBVEC"
      .word NonMaskableInterrupt
      .word Start
      .word $fff0  ;unused

.segment "SMBCHR"
.incbin "smb.chr"
