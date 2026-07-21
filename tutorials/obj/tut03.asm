; program start section
  call __global_scope_initialization
  call __function_main
  hlt

; location of global variables
  %define global_synth_wave_base 0
  %define global_synth_master 1
  %define global_synth_transpose 2
  %define global_synth_cur_row_frames 3
  %define global_synth_rng 4
  %define global_synth_note_speed 5
  %define global_synth_note_freq 133
  %define global_synth_v_active 261
  %define global_synth_v_note 277
  %define global_synth_v_basenote 293
  %define global_synth_v_phase 309
  %define global_synth_v_level 325
  %define global_synth_v_frames 341
  %define global_synth_v_age 357
  %define global_synth_v_relstart 373
  %define global_synth_v_curspeed 389
  %define global_synth_v_tgtspeed 405
  %define global_synth_v_glideframes 421
  %define global_synth_v_vibphase 437
  %define global_synth_v_tremphase 453
  %define global_synth_v_lfophase 469
  %define global_synth_v_shval 485
  %define global_synth_v_shseed 501
  %define global_synth_v_menvstage 517
  %define global_synth_v_menvframes 533
  %define global_synth_v_arpstep 549
  %define global_synth_v_arptimer 565
  %define global_synth_v_morphpos 581
  %define global_synth_v_bend 597
  %define global_synth_v_vel 613
  %define global_synth_v_freq 629
  %define global_synth_v_amp 645
  %define global_synth_v_timer 661
  %define global_synth_v_inst 677
  %define global_synth_ev_active 693
  %define global_synth_ev_timer 757
  %define global_synth_ev_note 821
  %define global_synth_ev_vel 885
  %define global_synth_ev_dur 949
  %define global_synth_ev_inst 1013
  %define global_synth_echo_taps 1077
  %define global_synth_echo_delay 1078
  %define global_synth_echo_feedback 1079
  %define global_synth_preset_bank 1080
  %define global_synth_preset_name 2680
  %define global_synth_arp_maj 3320
  %define global_synth_arp_min 3323
  %define global_synth_chord_iv 3326
  %define global_synth_seq_song 3366
  %define global_synth_seq_row 3367
  %define global_synth_seq_timer 3368
  %define global_synth_seq_playing 3369
  %define global_synth_seq_voice 3370
  %define global_pad 3378
  %define global_zap 3418
  %define global_arp 3458
  %define global_prev_a 3498
  %define global_prev_b 3499
  %define global_prev_x 3500
  %define global_prev_y 3501
  %define global_voice_a 3502
  %define global_voice_b 3503

__global_scope_initialization:
  push BP
  mov BP, SP
  mov DR, global_synth_preset_name
  mov SR, __literal_string_3329
  mov CR, 8
  movs
  mov DR, 2696
  mov SR, __literal_string_3330
  mov CR, 9
  movs
  mov DR, 2712
  mov SR, __literal_string_3331
  mov CR, 9
  movs
  mov DR, 2728
  mov SR, __literal_string_3332
  mov CR, 10
  movs
  mov DR, 2744
  mov SR, __literal_string_3333
  mov CR, 10
  movs
  mov DR, 2760
  mov SR, __literal_string_3334
  mov CR, 9
  movs
  mov DR, 2776
  mov SR, __literal_string_3335
  mov CR, 9
  movs
  mov DR, 2792
  mov SR, __literal_string_3336
  mov CR, 8
  movs
  mov DR, 2808
  mov SR, __literal_string_3337
  mov CR, 9
  movs
  mov DR, 2824
  mov SR, __literal_string_3338
  mov CR, 11
  movs
  mov DR, 2840
  mov SR, __literal_string_3339
  mov CR, 9
  movs
  mov DR, 2856
  mov SR, __literal_string_3340
  mov CR, 10
  movs
  mov DR, 2872
  mov SR, __literal_string_3341
  mov CR, 8
  movs
  mov DR, 2888
  mov SR, __literal_string_3342
  mov CR, 5
  movs
  mov DR, 2904
  mov SR, __literal_string_3343
  mov CR, 8
  movs
  mov DR, 2920
  mov SR, __literal_string_3344
  mov CR, 8
  movs
  mov DR, 2936
  mov SR, __literal_string_3345
  mov CR, 7
  movs
  mov DR, 2952
  mov SR, __literal_string_3346
  mov CR, 9
  movs
  mov DR, 2968
  mov SR, __literal_string_3347
  mov CR, 8
  movs
  mov DR, 2984
  mov SR, __literal_string_3348
  mov CR, 6
  movs
  mov DR, 3000
  mov SR, __literal_string_3349
  mov CR, 11
  movs
  mov DR, 3016
  mov SR, __literal_string_3350
  mov CR, 6
  movs
  mov DR, 3032
  mov SR, __literal_string_3351
  mov CR, 5
  movs
  mov DR, 3048
  mov SR, __literal_string_3352
  mov CR, 6
  movs
  mov DR, 3064
  mov SR, __literal_string_3353
  mov CR, 4
  movs
  mov DR, 3080
  mov SR, __literal_string_3354
  mov CR, 6
  movs
  mov DR, 3096
  mov SR, __literal_string_3355
  mov CR, 6
  movs
  mov DR, 3112
  mov SR, __literal_string_3356
  mov CR, 5
  movs
  mov DR, 3128
  mov SR, __literal_string_3357
  mov CR, 5
  movs
  mov DR, 3144
  mov SR, __literal_string_3358
  mov CR, 6
  movs
  mov DR, 3160
  mov SR, __literal_string_3359
  mov CR, 7
  movs
  mov DR, 3176
  mov SR, __literal_string_3360
  mov CR, 7
  movs
  mov DR, 3192
  mov SR, __literal_string_3361
  mov CR, 4
  movs
  mov DR, 3208
  mov SR, __literal_string_3362
  mov CR, 5
  movs
  mov DR, 3224
  mov SR, __literal_string_3363
  mov CR, 8
  movs
  mov DR, 3240
  mov SR, __literal_string_3364
  mov CR, 8
  movs
  mov DR, 3256
  mov SR, __literal_string_3365
  mov CR, 8
  movs
  mov DR, 3272
  mov SR, __literal_string_3366
  mov CR, 7
  movs
  mov DR, 3288
  mov SR, __literal_string_3367
  mov CR, 11
  movs
  mov DR, 3304
  mov SR, __literal_string_3368
  mov CR, 9
  movs
  mov R0, 0
  mov [global_synth_arp_maj], R0
  mov R0, 4
  mov [3321], R0
  mov R0, 7
  mov [3322], R0
  mov R0, 0
  mov [global_synth_arp_min], R0
  mov R0, 3
  mov [3324], R0
  mov R0, 7
  mov [3325], R0
  mov R0, 0
  mov [global_synth_chord_iv], R0
  mov R0, 4
  mov [3327], R0
  mov R0, 7
  mov [3328], R0
  mov R0, -1
  mov [3329], R0
  mov R0, 0
  mov [3330], R0
  mov R0, 3
  mov [3331], R0
  mov R0, 7
  mov [3332], R0
  mov R0, -1
  mov [3333], R0
  mov R0, 0
  mov [3334], R0
  mov R0, 3
  mov [3335], R0
  mov R0, 6
  mov [3336], R0
  mov R0, -1
  mov [3337], R0
  mov R0, 0
  mov [3338], R0
  mov R0, 4
  mov [3339], R0
  mov R0, 8
  mov [3340], R0
  mov R0, -1
  mov [3341], R0
  mov R0, 0
  mov [3342], R0
  mov R0, 4
  mov [3343], R0
  mov R0, 7
  mov [3344], R0
  mov R0, 11
  mov [3345], R0
  mov R0, 0
  mov [3346], R0
  mov R0, 3
  mov [3347], R0
  mov R0, 7
  mov [3348], R0
  mov R0, 10
  mov [3349], R0
  mov R0, 0
  mov [3350], R0
  mov R0, 4
  mov [3351], R0
  mov R0, 7
  mov [3352], R0
  mov R0, 10
  mov [3353], R0
  mov R0, 0
  mov [3354], R0
  mov R0, 5
  mov [3355], R0
  mov R0, 7
  mov [3356], R0
  mov R0, -1
  mov [3357], R0
  mov R0, 0
  mov [3358], R0
  mov R0, 2
  mov [3359], R0
  mov R0, 7
  mov [3360], R0
  mov R0, -1
  mov [3361], R0
  mov R0, 0
  mov [3362], R0
  mov R0, 7
  mov [3363], R0
  mov R0, 12
  mov [3364], R0
  mov R0, -1
  mov [3365], R0
  mov SP, BP
  pop BP
  ret

__function_select_texture:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedTexture, R0
__function_select_texture_return:
  mov SP, BP
  pop BP
  ret

__function_get_selected_texture:
  push BP
  mov BP, SP
  in R0, GPU_SelectedTexture
__function_get_selected_texture_return:
  mov SP, BP
  pop BP
  ret

__function_select_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedRegion, R0
__function_select_region_return:
  mov SP, BP
  pop BP
  ret

__function_define_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
  mov R0, [BP+6]
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+7]
  out GPU_RegionHotSpotY, R0
__function_define_region_return:
  mov SP, BP
  pop BP
  ret

__function_get_drawing_point:
  push BP
  mov BP, SP
  push R1
  in R0, GPU_DrawingPointX
  mov R1, [BP+2]
  mov [R1], R0
  in R0, GPU_DrawingPointY
  mov R1, [BP+3]
  mov [R1], R0
__function_get_drawing_point_return:
  mov SP, BP
  pop BP
  ret

__function_clear_screen:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_ClearColor, R0
  out GPU_Command, GPUCommand_ClearScreen
__function_clear_screen_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegion
__function_draw_region_at_return:
  mov SP, BP
  pop BP
  ret

__function_print_at:
  push BP
  mov BP, SP
  isub SP, 4
  call __function_get_selected_texture
  mov [BP-1], R0
  mov R1, -1
  mov [SP], R1
  call __function_select_texture
  mov R0, [BP+2]
  mov [BP-2], R0
__while_361_start:
__while_361_continue:
  mov R0, [BP+4]
  mov R0, [R0]
  cib R0
  jf R0, __while_361_end
  mov R1, [BP+4]
  mov R1, [R1]
  mov [SP], R1
  call __function_select_region
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_at
  mov R0, [BP+2]
  iadd R0, 10
  mov [BP+2], R0
__if_374_start:
  mov R0, [BP+4]
  mov R0, [R0]
  ieq R0, 10
  jf R0, __if_374_end
  mov R0, [BP-2]
  mov [BP+2], R0
  mov R0, [BP+3]
  iadd R0, 20
  mov [BP+3], R0
__if_374_end:
  mov R0, [BP+4]
  iadd R0, 1
  mov [BP+4], R0
  jmp __while_361_start
__while_361_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_texture
__function_print_at_return:
  mov SP, BP
  pop BP
  ret

__function_select_gamepad:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out INP_SelectedGamepad, R0
__function_select_gamepad_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_left:
  push BP
  mov BP, SP
  in R0, INP_GamepadLeft
__function_gamepad_left_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_right:
  push BP
  mov BP, SP
  in R0, INP_GamepadRight
__function_gamepad_right_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_up:
  push BP
  mov BP, SP
  in R0, INP_GamepadUp
__function_gamepad_up_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_down:
  push BP
  mov BP, SP
  in R0, INP_GamepadDown
__function_gamepad_down_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_a:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonA
__function_gamepad_button_a_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_b:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonB
__function_gamepad_button_b_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_x:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonX
__function_gamepad_button_x_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_y:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonY
__function_gamepad_button_y_return:
  mov SP, BP
  pop BP
  ret

__function_get_frame_counter:
  push BP
  mov BP, SP
  in R0, TIM_FrameCounter
__function_get_frame_counter_return:
  mov SP, BP
  pop BP
  ret

__function_end_frame:
  push BP
  mov BP, SP
  wait
__function_end_frame_return:
  mov SP, BP
  pop BP
  ret

__function_select_sound:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedSound, R0
__function_select_sound_return:
  mov SP, BP
  pop BP
  ret

__function_select_channel:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
__function_select_channel_return:
  mov SP, BP
  pop BP
  ret

__function_set_sound_loop:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SoundPlayWithLoop, R0
__function_set_sound_loop_return:
  mov SP, BP
  pop BP
  ret

__function_set_sound_loop_start:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SoundLoopStart, R0
__function_set_sound_loop_start_return:
  mov SP, BP
  pop BP
  ret

__function_set_sound_loop_end:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SoundLoopEnd, R0
__function_set_sound_loop_end_return:
  mov SP, BP
  pop BP
  ret

__function_set_channel_volume:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_ChannelVolume, R0
__function_set_channel_volume_return:
  mov SP, BP
  pop BP
  ret

__function_set_channel_speed:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_ChannelSpeed, R0
__function_set_channel_speed_return:
  mov SP, BP
  pop BP
  ret

__function_assign_channel_sound:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
  mov R0, [BP+3]
  out SPU_ChannelAssignedSound, R0
__function_assign_channel_sound_return:
  mov SP, BP
  pop BP
  ret

__function_set_global_volume:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_GlobalVolume, R0
__function_set_global_volume_return:
  mov SP, BP
  pop BP
  ret

__function_play_channel:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
  out SPU_Command, SPUCommand_PlaySelectedChannel
__function_play_channel_return:
  mov SP, BP
  pop BP
  ret

__function_stop_channel:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out SPU_SelectedChannel, R0
  out SPU_Command, SPUCommand_StopSelectedChannel
__function_stop_channel_return:
  mov SP, BP
  pop BP
  ret

__function_fabs:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fabs R0
__function_fabs_return:
  mov SP, BP
  pop BP
  ret

__function_floor:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  flr R0
__function_floor_return:
  mov SP, BP
  pop BP
  ret

__function_sin:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  sin R0
__function_sin_return:
  mov SP, BP
  pop BP
  ret

__function_pow:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  pow R0, R1
  pop R1
__function_pow_return:
  mov SP, BP
  pop BP
  ret

__function_synth_lcg:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, [BP+2]
  imul R0, 1103515245
  iadd R0, 12345
  mov [BP-1], R0
  mov R0, [BP-1]
  and R0, 2147483647
__function_synth_lcg_return:
  mov SP, BP
  pop BP
  ret

__function_synth_build_tables:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, 0
  mov [BP-1], R0
__for_1102_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_1102_end
  mov R0, [BP-1]
  isub R0, 69
  cif R0
  fdiv R0, 12.000000
  mov [BP-2], R0
  mov R2, 2.000000
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_pow
  mov R1, R0
  fmul R1, 440.000000
  mov R0, R1
  mov [BP-3], R0
  mov R0, [BP-3]
  mov R1, global_synth_note_freq
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
  fmul R0, 2048.000000
  fdiv R0, 44100.000000
  mov R1, global_synth_note_speed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_1102_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1102_start
__for_1102_end:
__function_synth_build_tables_return:
  mov SP, BP
  pop BP
  ret

__function_synth_scheduler_clear:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 0
  mov [BP-1], R0
__for_1142_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_1142_end
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_1142_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1142_start
__for_1142_end:
__function_synth_scheduler_clear_return:
  mov SP, BP
  pop BP
  ret

__function_synth_init:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, [BP+2]
  mov [global_synth_wave_base], R0
  mov R0, 0.850000
  mov [global_synth_master], R0
  mov R0, 0
  mov [global_synth_transpose], R0
  mov R0, 8
  mov [global_synth_cur_row_frames], R0
  mov R0, 305441741
  mov [global_synth_rng], R0
  mov R0, 3
  mov [global_synth_echo_taps], R0
  mov R0, 8
  mov [global_synth_echo_delay], R0
  mov R0, 0.500000
  mov [global_synth_echo_feedback], R0
  call __function_synth_build_tables
  call __function_synth_scheduler_clear
  mov R0, 0
  mov [BP-1], R0
__for_1184_start:
  mov R0, [BP-1]
  ilt R0, 7
  jf R0, __for_1184_end
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [SP], R1
  call __function_select_sound
  mov R1, 1
  mov [SP], R1
  call __function_set_sound_loop
__for_1184_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1184_start
__for_1184_end:
  mov R0, 0
  mov [BP-1], R0
__for_1200_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_1200_end
  mov R0, 0
  mov R1, global_synth_v_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_level
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_amp
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_inst
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP-1]
  mov [SP], R1
  call __function_stop_channel
__for_1200_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1200_start
__for_1200_end:
  mov R1, 1.000000
  mov [SP], R1
  call __function_set_global_volume
__function_synth_init_return:
  mov SP, BP
  pop BP
  ret

__function_synth_base_speed:
  push BP
  mov BP, SP
  isub SP, 2
  push R1
  push R2
  push R3
  push R4
  isub SP, 2
  mov R0, [BP+2]
  mov R1, [global_synth_transpose]
  iadd R0, R1
  mov [BP-1], R0
__if_1276_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1276_end
  mov R0, 0
  mov [BP-1], R0
__if_1276_end:
__if_1283_start:
  mov R0, [BP-1]
  igt R0, 127
  jf R0, __if_1283_end
  mov R0, 127
  mov [BP-1], R0
__if_1283_end:
  mov R0, global_synth_note_speed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_1295_start:
  mov R1, [BP+3]
  iadd R1, 25
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_1295_end
  mov R1, [BP-2]
  mov R3, 2.000000
  mov [SP], R3
  mov R4, [BP+3]
  iadd R4, 25
  mov R3, [R4]
  fdiv R3, 12.000000
  mov [SP+1], R3
  call __function_pow
  mov R2, R0
  fmul R1, R2
  mov [BP-2], R1
  mov R0, R1
__if_1295_end:
  mov R0, [BP-2]
__function_synth_base_speed_return:
  iadd SP, 2
  pop R4
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_inst_sound:
  push BP
  mov BP, SP
  push R1
  push R2
__if_1314_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_1314_end
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  jmp __function_synth_inst_sound_return
__if_1314_end:
  mov R0, [global_synth_wave_base]
  mov R2, [BP+2]
  mov R1, [R2]
  iadd R0, R1
__function_synth_inst_sound_return:
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_alloc_voice:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  mov R0, 0
  mov [BP-3], R0
__for_1328_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1328_end
__if_1337_start:
  mov R0, global_synth_v_active
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1337_end
  mov R0, [BP-3]
  jmp __function_synth_alloc_voice_return
__if_1337_end:
__for_1328_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1328_start
__for_1328_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, [global_synth_v_amp]
  mov [BP-2], R0
  mov R0, 1
  mov [BP-3], R0
__for_1352_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1352_end
__if_1361_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-2]
  flt R0, R1
  jf R0, __if_1361_end
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP-3]
  mov [BP-1], R0
__if_1361_end:
__for_1352_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1352_start
__for_1352_end:
  mov R0, [BP-1]
__function_synth_alloc_voice_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_voice_begin:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 1
  mov R1, global_synth_v_active
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, global_synth_v_note
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, global_synth_v_basenote
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_synth_v_inst
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 1
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_level
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_age
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_relstart
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, global_synth_v_curspeed
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, global_synth_v_tgtspeed
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_vibphase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_tremphase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_lfophase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_shval
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R2, [global_synth_rng]
  mov R3, [BP+2]
  imul R3, 2749
  iadd R2, R3
  mov [SP], R2
  call __function_synth_lcg
  mov R1, R0
  mov R2, global_synth_v_shseed
  mov R3, [BP+2]
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
  mov R0, 0
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_arpstep
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_arptimer
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+3]
  iadd R1, 39
  mov R0, [R1]
  mov R1, global_synth_v_morphpos
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_bend
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, global_synth_v_vel
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__function_synth_voice_begin_return:
  mov SP, BP
  pop BP
  ret

__function_synth_morph_reset:
  push BP
  mov BP, SP
  isub SP, 2
__if_1518_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ilt R0, 0
  jf R0, __if_1518_end
  jmp __function_synth_morph_reset_return
__if_1518_end:
  mov R1, [BP+2]
  iadd R1, 39
  mov R0, [R1]
  cfi R0
  mov [BP-1], R0
__if_1529_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1529_end
  mov R0, 0
  mov [BP-1], R0
__if_1529_end:
__if_1536_start:
  mov R0, [BP-1]
  mov R2, [BP+2]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_1536_end
  mov R1, [BP+2]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_1536_end:
  mov R2, [BP+2]
  iadd R2, 37
  mov R1, [R2]
  mov [SP], R1
  call __function_select_sound
  mov R1, 1
  mov [SP], R1
  call __function_set_sound_loop
  mov R1, [BP-1]
  imul R1, 2048
  mov [SP], R1
  call __function_set_sound_loop_start
  mov R1, [BP-1]
  imul R1, 2048
  iadd R1, 2048
  mov [SP], R1
  call __function_set_sound_loop_end
__function_synth_morph_reset_return:
  mov SP, BP
  pop BP
  ret

__function_synth_note_on_channel:
  push BP
  mov BP, SP
  isub SP, 2
  push R1
  push R2
  isub SP, 5
__if_1567_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_1567_end
  mov R0, 0
  mov [BP+3], R0
__if_1567_end:
__if_1574_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_1574_end
  mov R0, 127
  mov [BP+3], R0
__if_1574_end:
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  call __function_synth_base_speed
  mov [BP-1], R0
  mov R1, [BP+5]
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  mov R1, [BP+3]
  mov [SP+2], R1
  mov R1, [BP+4]
  mov [SP+3], R1
  mov R1, [BP-1]
  mov [SP+4], R1
  call __function_synth_voice_begin
  mov R0, global_synth_note_freq
  mov R1, [BP+3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_freq
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+2]
  mov [SP], R1
  call __function_synth_morph_reset
  mov R1, [BP+5]
  mov [SP], R1
  call __function_stop_channel
  mov R2, [BP+2]
  mov [SP], R2
  call __function_synth_inst_sound
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP+5]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_assign_channel_sound
  mov R1, [BP+5]
  mov [SP], R1
  call __function_select_channel
  mov R1, 0.000000
  mov [SP], R1
  call __function_set_channel_volume
  mov R1, [BP-1]
  mov [SP], R1
  call __function_set_channel_speed
  mov R1, [BP+5]
  mov [SP], R1
  call __function_play_channel
  mov R0, [BP+5]
__function_synth_note_on_channel_return:
  iadd SP, 5
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_note_on:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  isub SP, 4
  call __function_synth_alloc_voice
  mov [BP-1], R0
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP-1]
  mov [SP+3], R1
  call __function_synth_note_on_channel
__function_synth_note_on_return:
  iadd SP, 4
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_play_timed:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  push R2
  isub SP, 3
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  call __function_synth_note_on
  mov [BP-1], R0
  mov R0, [BP+5]
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-1]
__function_synth_play_timed_return:
  iadd SP, 3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_note_retrigger:
  push BP
  mov BP, SP
  isub SP, 4
__if_1709_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_1714
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_1714:
  jf R0, __if_1709_end
  jmp __function_synth_note_retrigger_return
__if_1709_end:
__if_1718_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1718_end
  jmp __function_synth_note_retrigger_return
__if_1718_end:
  mov R0, global_synth_v_inst
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_1729_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_1729_end
  mov R0, 0
  mov [BP+3], R0
__if_1729_end:
__if_1736_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_1736_end
  mov R0, 127
  mov [BP+3], R0
__if_1736_end:
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, [BP-1]
  mov [SP+1], R1
  call __function_synth_base_speed
  mov [BP-2], R0
  mov R0, [BP-2]
  mov R1, global_synth_v_tgtspeed
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_synth_v_note
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_synth_v_basenote
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_note_freq
  mov R1, [BP+3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_freq
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_1770_start:
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_1770_else
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_1770_end
__if_1770_else:
  mov R0, [BP-2]
  mov R1, global_synth_v_curspeed
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_1770_end:
__function_synth_note_retrigger_return:
  mov SP, BP
  pop BP
  ret

__function_synth_note_off:
  push BP
  mov BP, SP
__if_1794_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_1799
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_1799:
  jf R0, __if_1794_end
  jmp __function_synth_note_off_return
__if_1794_end:
__if_1803_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1803_end
  jmp __function_synth_note_off_return
__if_1803_end:
__if_1809_start:
  mov R0, global_synth_v_phase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 5
  jt R0, __LogicalOr_ShortCircuit_1818
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  ieq R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_1818:
  jf R0, __if_1809_end
  jmp __function_synth_note_off_return
__if_1809_end:
  mov R0, global_synth_v_level
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_relstart
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 5
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__function_synth_note_off_return:
  mov SP, BP
  pop BP
  ret

__function_synth_voice_kill:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 0
  mov R1, global_synth_v_active
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_level
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_amp
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+2]
  mov [SP], R1
  call __function_stop_channel
__function_synth_voice_kill_return:
  mov SP, BP
  pop BP
  ret

__function_synth_lfo_value:
  push BP
  mov BP, SP
  isub SP, 6
  push R1
  push R2
  push R3
  isub SP, 1
__if_1951_start:
  mov R0, global_synth_v_age
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP+3]
  iadd R2, 16
  mov R1, [R2]
  ilt R0, R1
  jf R0, __if_1951_end
  mov R0, 0.000000
  jmp __function_synth_lfo_value_return
__if_1951_end:
__if_1962_start:
  mov R1, [BP+3]
  iadd R1, 18
  mov R0, [R1]
  cib R0
  jf R0, __if_1962_else
  mov R0, [global_synth_cur_row_frames]
  mov [BP-6], R0
__if_1969_start:
  mov R0, [BP-6]
  ilt R0, 1
  jf R0, __if_1969_end
  mov R0, 1
  mov [BP-6], R0
__if_1969_end:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  mov R1, [BP-6]
  cif R1
  fdiv R0, R1
  mov [BP-1], R0
  jmp __if_1962_end
__if_1962_else:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  fdiv R0, 60.000000
  mov [BP-1], R0
__if_1962_end:
  mov R0, global_synth_v_lfophase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP-2]
  mov R1, [BP-1]
  fadd R0, R1
  mov R1, global_synth_v_lfophase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+3]
  iadd R1, 13
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, global_synth_v_lfophase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-4], R0
  mov R1, [BP-4]
  mov R3, [BP-4]
  mov [SP], R3
  call __function_floor
  mov R2, R0
  fsub R1, R2
  mov R0, R1
  mov [BP-5], R0
__if_2015_start:
  mov R0, [BP-3]
  ieq R0, 0
  jf R0, __if_2015_end
  mov R1, [BP-5]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_synth_lfo_value_return
__if_2015_end:
__if_2024_start:
  mov R0, [BP-3]
  ieq R0, 1
  jf R0, __if_2024_end
  mov R2, [BP-5]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_synth_lfo_value_return
__if_2024_end:
__if_2037_start:
  mov R0, [BP-3]
  ieq R0, 2
  jf R0, __if_2037_end
  mov R0, [BP-5]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2037_end:
__if_2047_start:
  mov R0, [BP-3]
  ieq R0, 3
  jf R0, __if_2047_end
__if_2052_start:
  mov R0, [BP-5]
  flt R0, 0.500000
  jf R0, __if_2052_end
  mov R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2052_end:
  mov R0, -1.000000
  jmp __function_synth_lfo_value_return
__if_2047_end:
__if_2061_start:
  mov R0, [BP-4]
  cfi R0
  mov R1, [BP-2]
  cfi R1
  ine R0, R1
  jf R0, __if_2061_end
  mov R2, global_synth_v_shseed
  mov R3, [BP+2]
  iadd R2, R3
  mov R2, [R2]
  mov [SP], R2
  call __function_synth_lcg
  mov R1, R0
  mov R2, global_synth_v_shseed
  mov R3, [BP+2]
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
  mov R0, global_synth_v_shseed
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  cif R0
  fdiv R0, 1073741824.000000
  fsub R0, 1.000000
  mov R1, global_synth_v_shval
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2061_end:
  mov R0, global_synth_v_shval
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
__function_synth_lfo_value_return:
  iadd SP, 1
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_step_modenv:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
__if_2094_start:
  mov R1, [BP+3]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 0
  jt R0, __LogicalOr_ShortCircuit_2101
  mov R2, [BP+3]
  iadd R2, 21
  mov R1, [R2]
  feq R1, 0.000000
  or R0, R1
__LogicalOr_ShortCircuit_2101:
  jf R0, __if_2094_end
  mov R0, 0.000000
  jmp __function_synth_step_modenv_return
__if_2094_end:
  mov R0, global_synth_v_menvstage
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, 0.000000
  mov [BP-3], R0
__if_2119_start:
  mov R0, [BP-1]
  ieq R0, 0
  jf R0, __if_2119_else
__if_2124_start:
  mov R1, [BP+3]
  iadd R1, 19
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2124_else
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 1
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2124_end
__if_2124_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 19
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2151_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2151_else
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 1
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2151_end
__if_2151_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2151_end:
__if_2124_end:
  jmp __if_2119_end
__if_2119_else:
__if_2174_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2174_end
__if_2179_start:
  mov R1, [BP+3]
  iadd R1, 20
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2179_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2179_end
__if_2179_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 20
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  fsgn R0
  fadd R0, 1.000000
  mov [BP-3], R0
__if_2203_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jf R0, __if_2203_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2203_end
__if_2203_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2203_end:
__if_2179_end:
__if_2174_end:
__if_2119_end:
  mov R0, [BP-3]
__function_synth_step_modenv_return:
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_step_envelope:
  push BP
  mov BP, SP
  isub SP, 5
  push R1
  push R2
  push R3
  isub SP, 2
  mov R0, global_synth_v_phase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
  mov R0, global_synth_v_frames
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, global_synth_v_level
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-3], R0
__if_2241_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2241_else
__if_2246_start:
  mov R1, [BP+3]
  iadd R1, 2
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2246_else
  mov R0, 1.000000
  mov [BP-3], R0
  jmp __if_2246_end
__if_2246_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 2
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2246_end:
__if_2261_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2261_end
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2274_start:
  mov R1, [BP+3]
  iadd R1, 3
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2274_else
  mov R0, 2
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2274_end
__if_2274_else:
  mov R0, 3
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2274_end:
__if_2261_end:
  jmp __if_2241_end
__if_2241_else:
__if_2289_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_2289_else
  mov R0, 1.000000
  mov [BP-3], R0
__if_2297_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 3
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2297_end
  mov R0, 3
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2297_end:
  jmp __if_2289_end
__if_2289_else:
__if_2313_start:
  mov R0, [BP-1]
  ieq R0, 3
  jf R0, __if_2313_else
  mov R0, 0
  mov [BP-4], R0
__if_2321_start:
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2321_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
  jmp __if_2321_end
__if_2321_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-5], R0
__if_2342_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2342_end
  mov R2, [BP-5]
  mov [SP], R2
  mov R3, [BP+3]
  iadd R3, 7
  mov R2, [R3]
  mov [SP+1], R2
  call __function_pow
  mov R1, R0
  mov [BP-5], R1
  mov R0, R1
__if_2342_end:
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  fsgn R0
  fadd R0, 1.000000
  mov R1, [BP-5]
  fmul R0, R1
  fsgn R0
  fadd R0, 1.000000
  mov [BP-3], R0
__if_2364_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2364_end
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
__if_2364_end:
__if_2321_end:
__if_2377_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_2377_end
__if_2380_start:
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  fle R0, 0.001000
  jf R0, __if_2380_else
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2380_end
__if_2380_else:
  mov R0, 4
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2380_end:
__if_2377_end:
  jmp __if_2313_end
__if_2313_else:
__if_2401_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_2401_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  jmp __if_2401_end
__if_2401_else:
__if_2410_start:
  mov R0, [BP-1]
  ieq R0, 5
  jf R0, __if_2410_end
__if_2415_start:
  mov R1, [BP+3]
  iadd R1, 6
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2415_else
  mov R0, 0.000000
  mov [BP-3], R0
  jmp __if_2415_end
__if_2415_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 6
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-4], R0
__if_2431_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2431_end
  mov R2, [BP-4]
  mov [SP], R2
  mov R3, [BP+3]
  iadd R3, 7
  mov R2, [R3]
  mov [SP+1], R2
  call __function_pow
  mov R1, R0
  mov [BP-4], R1
  mov R0, R1
__if_2431_end:
  mov R0, global_synth_v_relstart
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-4]
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-3], R0
__if_2415_end:
__if_2452_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jt R0, __LogicalOr_ShortCircuit_2457
  mov R1, [BP-2]
  mov R3, [BP+3]
  iadd R3, 6
  mov R2, [R3]
  ige R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_2457:
  jf R0, __if_2452_end
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2452_end:
__if_2410_end:
__if_2401_end:
__if_2313_end:
__if_2289_end:
__if_2241_end:
  mov R0, [BP-3]
  mov R1, global_synth_v_level
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
__function_synth_step_envelope_return:
  iadd SP, 2
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_step_arp:
  push BP
  mov BP, SP
  isub SP, 6
__if_2480_start:
  mov R0, global_synth_v_arptimer
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2480_end
  mov R0, global_synth_v_arptimer
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_arptimer
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __function_synth_step_arp_return
__if_2480_end:
  mov R1, [BP+3]
  iadd R1, 35
  mov R0, [R1]
  mov [BP-1], R0
__if_2497_start:
  mov R0, [BP-1]
  ilt R0, 1
  jf R0, __if_2497_end
  mov R0, 1
  mov [BP-1], R0
__if_2497_end:
  mov R0, global_synth_v_arpstep
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP+3]
  iadd R0, 27
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-3], R0
  mov R0, global_synth_v_basenote
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-3]
  iadd R0, R1
  mov [BP-4], R0
__if_2522_start:
  mov R0, [BP-4]
  ilt R0, 0
  jf R0, __if_2522_end
  mov R0, 0
  mov [BP-4], R0
__if_2522_end:
__if_2529_start:
  mov R0, [BP-4]
  igt R0, 127
  jf R0, __if_2529_end
  mov R0, 127
  mov [BP-4], R0
__if_2529_end:
  mov R2, [BP-4]
  mov [SP], R2
  mov R2, [BP+3]
  mov [SP+1], R2
  call __function_synth_base_speed
  mov R1, R0
  mov R2, global_synth_v_curspeed
  mov R3, [BP+2]
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
  mov R0, [BP-4]
  mov R1, global_synth_v_note
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_note_freq
  mov R1, [BP-4]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_freq
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-2]
  iadd R0, 1
  mov R1, [BP-1]
  imod R0, R1
  mov R1, global_synth_v_arpstep
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+3]
  iadd R1, 36
  mov R0, [R1]
  mov R1, global_synth_v_arptimer
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__function_synth_step_arp_return:
  mov SP, BP
  pop BP
  ret

__function_synth_apply_morph:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, [BP+4]
  cfi R0
  mov [BP-1], R0
__if_2579_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_2579_end
  mov R0, 0
  mov [BP-1], R0
__if_2579_end:
__if_2586_start:
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2586_end
  mov R1, [BP+3]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_2586_end:
  mov R2, [BP+3]
  iadd R2, 37
  mov R1, [R2]
  mov [SP], R1
  call __function_select_sound
  mov R1, [BP-1]
  imul R1, 2048
  mov [SP], R1
  call __function_set_sound_loop_start
  mov R1, [BP-1]
  imul R1, 2048
  iadd R1, 2048
  mov [SP], R1
  call __function_set_sound_loop_end
  mov R0, [BP+4]
  mov R1, global_synth_v_morphpos
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__function_synth_apply_morph_return:
  mov SP, BP
  pop BP
  ret

__function_synth_update:
  push BP
  mov BP, SP
  isub SP, 12
  call __function_synth_scheduler_update
  mov R0, 0
  mov [BP-1], R0
__for_2618_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_2618_end
__if_2628_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2628_end
  jmp __for_2618_continue
__if_2628_end:
  mov R0, global_synth_v_inst
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_synth_step_envelope
  mov [BP-3], R0
__if_2644_start:
  mov R0, global_synth_v_phase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2644_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_voice_kill
  jmp __for_2618_continue
__if_2644_end:
__if_2654_start:
  mov R1, [BP-2]
  iadd R1, 26
  mov R0, [R1]
  cib R0
  jf R0, __if_2654_else
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_synth_step_arp
  jmp __if_2654_end
__if_2654_else:
__if_2660_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2660_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  fsub R0, R1
  mov [BP-9], R0
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-9]
  mov R2, global_synth_v_glideframes
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  cif R2
  fdiv R1, R2
  fadd R0, R1
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_glideframes
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2690_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2690_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2690_end:
__if_2660_end:
__if_2654_end:
  mov R0, 0.000000
  mov [BP-4], R0
__if_2706_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_2713
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  fne R1, 0.000000
  and R0, R1
__LogicalAnd_ShortCircuit_2713:
  jf R0, __if_2706_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_lfo_value
  mov R1, R0
  mov [BP-4], R1
  mov R0, R1
__if_2706_end:
  mov R0, 0.000000
  mov [BP-5], R0
__if_2724_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ine R0, 0
  jf R0, __if_2724_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_step_modenv
  mov R1, R0
  mov [BP-5], R1
  mov R0, R1
__if_2724_end:
  mov R0, [BP-3]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  fmul R0, R1
  mov R1, global_synth_v_vel
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  fmul R0, R1
  mov R1, [global_synth_master]
  fmul R0, R1
  mov [BP-6], R0
__if_2746_start:
  mov R1, [BP-2]
  iadd R1, 11
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __if_2746_end
  mov R0, global_synth_v_tremphase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP-2]
  iadd R2, 12
  mov R1, [R2]
  fdiv R1, 60.000000
  fadd R0, R1
  mov R1, global_synth_v_tremphase
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R2, global_synth_v_tremphase
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  fmul R2, 6.283185
  mov [SP], R2
  call __function_sin
  mov R1, R0
  fmul R1, 0.500000
  fadd R1, 0.500000
  mov R0, R1
  mov [BP-9], R0
  mov R0, [BP-6]
  mov R2, [BP-2]
  iadd R2, 11
  mov R1, [R2]
  mov R2, [BP-9]
  fmul R1, R2
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-6], R0
__if_2746_end:
__if_2783_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 2
  jf R0, __if_2783_end
  mov R0, [BP-4]
  fmul R0, 0.500000
  fadd R0, 0.500000
  mov [BP-9], R0
  mov R0, [BP-6]
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  mov R2, [BP-9]
  fmul R1, R2
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-6], R0
__if_2783_end:
  mov R0, [BP-6]
  mov R1, global_synth_v_amp
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_v_bend
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-7], R0
__if_2817_start:
  mov R1, [BP-2]
  iadd R1, 23
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_2817_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 23
  mov R1, [R2]
  mov R2, global_synth_v_age
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  cif R2
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_2817_end:
__if_2830_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_2830_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_2830_end:
__if_2841_start:
  mov R1, [BP-2]
  iadd R1, 8
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_2849
  mov R1, global_synth_v_age
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov R3, [BP-2]
  iadd R3, 10
  mov R2, [R3]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_2849:
  jf R0, __if_2841_end
  mov R0, global_synth_v_vibphase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP-2]
  iadd R2, 9
  mov R1, [R2]
  fdiv R1, 60.000000
  fadd R0, R1
  mov R1, global_synth_v_vibphase
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP-7]
  mov R3, [BP-2]
  iadd R3, 8
  mov R2, [R3]
  mov R4, global_synth_v_vibphase
  mov R5, [BP-1]
  iadd R4, R5
  mov R4, [R4]
  fmul R4, 6.283185
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-7], R1
  mov R0, R1
__if_2841_end:
__if_2873_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_2873_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  mov R2, [BP-4]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_2873_end:
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
__if_2889_start:
  mov R0, [BP-7]
  fne R0, 0.000000
  jf R0, __if_2889_end
  mov R1, [BP-8]
  mov R3, 2.000000
  mov [SP], R3
  mov R3, [BP-7]
  fdiv R3, 12.000000
  mov [SP+1], R3
  call __function_pow
  mov R2, R0
  fmul R1, R2
  mov [BP-8], R1
  mov R0, R1
__if_2889_end:
__if_2902_start:
  mov R1, [BP-2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_2902_end
  mov R1, [BP-2]
  iadd R1, 39
  mov R0, [R1]
  mov [BP-9], R0
__if_2912_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_2912_end
  mov R0, [BP-9]
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  mov R2, [BP-4]
  fmul R2, 0.500000
  fadd R2, 0.500000
  fmul R1, R2
  fadd R0, R1
  mov [BP-9], R0
__if_2912_end:
__if_2928_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_2928_end
  mov R0, [BP-9]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-9], R0
__if_2928_end:
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, [BP-9]
  mov [SP+2], R1
  call __function_synth_apply_morph
__if_2902_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_channel
  mov R1, [BP-6]
  mov [SP], R1
  call __function_set_channel_volume
  mov R1, [BP-8]
  mov [SP], R1
  call __function_set_channel_speed
  mov R0, global_synth_v_frames
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_frames
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_v_age
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_age
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2959_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2959_end
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2971_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2971_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2971_end:
__if_2959_end:
__for_2618_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_2618_start
__for_2618_end:
__function_synth_update_return:
  mov SP, BP
  pop BP
  ret

__function_synth_patch:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, [BP+2]
  iadd R1, 4
  mov [R1], R0
  mov R0, [BP+7]
  mov R1, [BP+2]
  iadd R1, 5
  mov [R1], R0
  mov R0, [BP+8]
  mov R1, [BP+2]
  iadd R1, 6
  mov [R1], R0
  mov R0, 1.000000
  mov R1, [BP+2]
  iadd R1, 7
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 8
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 9
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 10
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 11
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 12
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 13
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 14
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 15
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 16
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 17
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 18
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 19
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 20
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 21
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 22
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 23
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 24
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 25
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 26
  mov [R1], R0
  mov R0, 1
  mov R1, [BP+2]
  iadd R1, 35
  mov [R1], R0
  mov R0, 3
  mov R1, [BP+2]
  iadd R1, 36
  mov [R1], R0
  mov R0, -1
  mov R1, [BP+2]
  iadd R1, 37
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 38
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 39
  mov [R1], R0
__function_synth_patch_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_vibrato:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 8
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 9
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 10
  mov [R1], R0
__function_synth_set_vibrato_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_tremolo:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 11
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 12
  mov [R1], R0
__function_synth_set_tremolo_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_lfo:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 13
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 14
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 15
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, [BP+2]
  iadd R1, 16
  mov [R1], R0
  mov R0, [BP+7]
  mov R1, [BP+2]
  iadd R1, 17
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 18
  mov [R1], R0
__function_synth_set_lfo_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_lfo_sync:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 18
  mov [R1], R0
__function_synth_set_lfo_sync_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_modenv:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 19
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 20
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 21
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, [BP+2]
  iadd R1, 22
  mov [R1], R0
__function_synth_set_modenv_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_pitch_env:
  push BP
  mov BP, SP
  isub SP, 5
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP+3]
  mov [SP+3], R1
  mov R1, 1
  mov [SP+4], R1
  call __function_synth_set_modenv
__function_synth_set_pitch_env_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_glide:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 24
  mov [R1], R0
__function_synth_set_glide_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_arp:
  push BP
  mov BP, SP
  isub SP, 1
__if_3255_start:
  mov R0, [BP+4]
  ilt R0, 1
  jf R0, __if_3255_end
  mov R0, 1
  mov [BP+4], R0
__if_3255_end:
__if_3262_start:
  mov R0, [BP+4]
  igt R0, 8
  jf R0, __if_3262_end
  mov R0, 8
  mov [BP+4], R0
__if_3262_end:
  mov R0, 1
  mov R1, [BP+2]
  iadd R1, 26
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 35
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 36
  mov [R1], R0
  mov R0, 0
  mov [BP-1], R0
__for_3281_start:
  mov R0, [BP-1]
  mov R1, [BP+4]
  ilt R0, R1
  jf R0, __for_3281_end
  mov R0, [BP+3]
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP+2]
  iadd R1, 27
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_3281_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3281_start
__for_3281_end:
__function_synth_set_arp_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_morph:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 37
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 38
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 39
  mov [R1], R0
__function_synth_set_morph_return:
  mov SP, BP
  pop BP
  ret

__function_synth_preset:
  push BP
  mov BP, SP
  push R1
  mov R0, global_synth_preset_bank
  mov R1, [BP+2]
  imul R1, 40
  iadd R0, R1
__function_synth_preset_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_load_presets:
  push BP
  mov BP, SP
  isub SP, 8
  mov R0, global_synth_preset_bank
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 1
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.550000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.250000
  mov [SP+1], R1
  mov R1, 6.000000
  mov [SP+2], R1
  mov R1, 14
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1120
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 4
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 1
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.500000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.300000
  mov [SP+1], R1
  mov R1, 6.500000
  mov [SP+2], R1
  mov R1, 12
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1160
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 1
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.600000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.200000
  mov [SP+1], R1
  mov R1, 5.500000
  mov [SP+2], R1
  mov R1, 16
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1200
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  mov R1, 2
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.600000
  mov [SP+5], R1
  mov R1, 14
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.250000
  mov [SP+1], R1
  mov R1, 5.000000
  mov [SP+2], R1
  mov R1, 20
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1240
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 5
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 4
  mov [SP+4], R1
  mov R1, 0.500000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.400000
  mov [SP+1], R1
  mov R1, 7.000000
  mov [SP+2], R1
  mov R1, 8
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1280
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.340000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 4
  mov [SP+4], R1
  mov R1, 0.900000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1320
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.320000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 3
  mov [SP+4], R1
  mov R1, 0.850000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1360
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 4
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1400
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.260000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 5
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  call __function_synth_set_glide
  mov R0, 1440
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.320000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1480
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 12
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1520
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 14
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1560
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  mov R1, 1
  mov [SP+3], R1
  mov R1, 18
  mov [SP+4], R1
  mov R1, 0.250000
  mov [SP+5], R1
  mov R1, 16
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.600000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1600
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.260000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 20
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 24
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1640
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.300000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.400000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 1680
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.160000
  mov [SP+2], R1
  mov R1, 24
  mov [SP+3], R1
  mov R1, 30
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 40
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.150000
  mov [SP+1], R1
  mov R1, 4.000000
  mov [SP+2], R1
  mov R1, 30
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1720
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.150000
  mov [SP+2], R1
  mov R1, 20
  mov [SP+3], R1
  mov R1, 20
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 36
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1760
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 28
  mov [SP+3], R1
  mov R1, 20
  mov [SP+4], R1
  mov R1, 0.750000
  mov [SP+5], R1
  mov R1, 44
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.120000
  mov [SP+1], R1
  mov R1, 3.500000
  mov [SP+2], R1
  mov R1, 40
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1800
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.160000
  mov [SP+2], R1
  mov R1, 18
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.800000
  mov [SP+5], R1
  mov R1, 30
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.250000
  mov [SP+1], R1
  mov R1, 5.000000
  mov [SP+2], R1
  mov R1, 24
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1840
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 1.000000
  mov [SP+5], R1
  mov R1, 4
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1880
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 2
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 0.900000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 1920
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.750000
  mov [SP+5], R1
  mov R1, 12
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.200000
  mov [SP+1], R1
  mov R1, 5.000000
  mov [SP+2], R1
  mov R1, 18
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 1960
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.260000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 30
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 40
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.400000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 2000
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 40
  mov [SP+4], R1
  mov R1, 0.100000
  mov [SP+5], R1
  mov R1, 50
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0.300000
  mov [SP+1], R1
  mov R1, 4.000000
  mov [SP+2], R1
  call __function_synth_set_tremolo
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 2040
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 24.000000
  mov [SP+1], R1
  mov R1, 8
  mov [SP+2], R1
  call __function_synth_set_pitch_env
  mov R0, 2080
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, -1.200000
  mov R1, [BP-1]
  iadd R1, 23
  mov [R1], R0
  mov R0, 2120
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 0.900000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2.000000
  mov [SP+1], R1
  mov R1, 3.000000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  call __function_synth_set_vibrato
  mov R0, 2160
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.280000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 20
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, -0.600000
  mov R1, [BP-1]
  iadd R1, 23
  mov [R1], R0
  mov R0, 2200
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.360000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, -0.900000
  mov R1, [BP-1]
  iadd R1, 23
  mov [R1], R0
  mov R0, 2240
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 6
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 2280
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 6
  mov [SP+1], R1
  mov R1, 0.160000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 3
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 3
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 2320
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 6
  mov [SP+1], R1
  mov R1, 0.160000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 12
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 14
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 2360
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.300000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 10
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, -0.400000
  mov R1, [BP-1]
  iadd R1, 23
  mov [R1], R0
  mov R0, 2400
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 6
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 2440
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 2480
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 4
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.500000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, global_synth_arp_maj
  mov [SP+1], R1
  mov R1, 3
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  call __function_synth_set_arp
  mov R0, 2520
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.500000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, global_synth_arp_min
  mov [SP+1], R1
  mov R1, 3
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  call __function_synth_set_arp
  mov R0, 2560
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 2
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.800000
  mov [SP+5], R1
  mov R1, 10
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 4.000000
  mov [SP+2], R1
  mov R1, 0.600000
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 2
  mov [SP+5], R1
  call __function_synth_set_lfo
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  call __function_synth_set_lfo_sync
  mov R0, 2600
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 12
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0.500000
  mov R1, [BP-1]
  iadd R1, 7
  mov [R1], R0
  mov R0, 2640
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  mov R1, 0.220000
  mov [SP+2], R1
  mov R1, 2
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 12
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [global_synth_wave_base]
  iadd R1, 7
  mov [SP+1], R1
  mov R1, 8
  mov [SP+2], R1
  mov R1, 0.000000
  mov [SP+3], R1
  call __function_synth_set_morph
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 1.500000
  mov [SP+2], R1
  mov R1, 7
  cif R1
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 3
  mov [SP+5], R1
  call __function_synth_set_lfo
__function_synth_load_presets_return:
  mov SP, BP
  pop BP
  ret

__function_synth_schedule_alloc:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  mov R0, 0
  mov [BP-1], R0
__for_4280_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4280_end
__if_4289_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4289_end
  mov R0, [BP-1]
  jmp __function_synth_schedule_alloc_return
__if_4289_end:
__for_4280_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4280_start
__for_4280_end:
  mov R0, -1
__function_synth_schedule_alloc_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_schedule_note:
  push BP
  mov BP, SP
  isub SP, 1
  call __function_synth_schedule_alloc
  mov [BP-1], R0
__if_4308_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_4308_end
  jmp __function_synth_schedule_note_return
__if_4308_end:
  mov R0, 1
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, global_synth_ev_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+2]
  mov R1, global_synth_ev_inst
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_synth_ev_note
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, global_synth_ev_vel
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+6]
  mov R1, global_synth_ev_dur
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__function_synth_schedule_note_return:
  mov SP, BP
  pop BP
  ret

__function_synth_scheduler_update:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, 0
  mov [BP-1], R0
__for_4344_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4344_end
__if_4354_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4354_end
  jmp __for_4344_continue
__if_4354_end:
__if_4360_start:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ile R0, 0
  jf R0, __if_4360_else
__if_4367_start:
  mov R0, global_synth_ev_dur
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_4367_else
  mov R1, global_synth_ev_inst
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP], R1
  mov R1, global_synth_ev_note
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+1], R1
  mov R1, global_synth_ev_vel
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+2], R1
  mov R1, global_synth_ev_dur
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+3], R1
  call __function_synth_play_timed
  jmp __if_4367_end
__if_4367_else:
  mov R1, global_synth_ev_inst
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP], R1
  mov R1, global_synth_ev_note
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+1], R1
  mov R1, global_synth_ev_vel
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+2], R1
  call __function_synth_note_on
__if_4367_end:
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  jmp __if_4360_end
__if_4360_else:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_ev_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_4360_end:
__for_4344_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4344_start
__for_4344_end:
__function_synth_scheduler_update_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_echo:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  mov [global_synth_echo_taps], R0
  mov R0, [BP+3]
  mov [global_synth_echo_delay], R0
  mov R0, [BP+4]
  mov [global_synth_echo_feedback], R0
__function_synth_set_echo_return:
  mov SP, BP
  pop BP
  ret

__function_synth_play_echo:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  isub SP, 5
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP+5]
  mov [SP+3], R1
  call __function_synth_play_timed
  mov [BP-1], R0
  mov R0, [BP+4]
  mov [BP-2], R0
  mov R0, 1
  mov [BP-3], R0
__for_4437_start:
  mov R0, [BP-3]
  mov R1, [BP+6]
  ile R0, R1
  jf R0, __for_4437_end
  mov R0, [BP-2]
  mov R1, [BP+8]
  fmul R0, R1
  mov [BP-2], R0
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  mov R1, [BP-3]
  mov R2, [BP+7]
  imul R1, R2
  mov [SP+3], R1
  mov R1, [BP+5]
  mov [SP+4], R1
  call __function_synth_schedule_note
__for_4437_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4437_start
__for_4437_end:
  mov R0, [BP-1]
__function_synth_play_echo_return:
  iadd SP, 5
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_note_echo:
  push BP
  mov BP, SP
  push R1
  isub SP, 7
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP+5]
  mov [SP+3], R1
  mov R1, [global_synth_echo_taps]
  mov [SP+4], R1
  mov R1, [global_synth_echo_delay]
  mov [SP+5], R1
  mov R1, [global_synth_echo_feedback]
  mov [SP+6], R1
  call __function_synth_play_echo
__function_synth_note_echo_return:
  iadd SP, 7
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_seq_stop:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov [global_synth_seq_playing], R0
  mov R0, 0
  mov [BP-1], R0
__for_4551_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_4551_end
__if_4560_start:
  mov R0, global_synth_seq_voice
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_4560_end
  mov R1, global_synth_seq_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_4560_end:
__for_4551_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4551_start
__for_4551_end:
__function_synth_seq_stop_return:
  mov SP, BP
  pop BP
  ret

__function_synth_seq_trigger_row:
  push BP
  mov BP, SP
  isub SP, 11
  mov R0, [global_synth_seq_song]
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_4602_start:
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 40
  mov R1, [R2]
  ilt R0, R1
  jf R0, __for_4602_end
  mov R0, [BP-1]
  mov R1, [BP-2]
  imul R1, 5
  iadd R0, R1
  mov [BP-3], R0
  mov R2, [BP-3]
  iadd R2, 1
  mov R0, [R2]
  mov R1, [global_synth_seq_row]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-4], R0
__if_4626_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_4626_end
  jmp __for_4602_continue
__if_4626_end:
__if_4631_start:
  mov R0, [BP-4]
  ieq R0, -2
  jf R0, __if_4631_end
  jmp __for_4602_continue
__if_4631_end:
  mov R0, global_synth_seq_voice
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
__if_4642_start:
  mov R0, [BP-4]
  ieq R0, -1
  jf R0, __if_4642_end
__if_4648_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_4648_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_4648_end:
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  jmp __for_4602_continue
__if_4642_end:
  mov R0, [BP-4]
  mov R2, [BP-1]
  iadd R2, 44
  mov R1, [R2]
  iadd R0, R1
  mov [BP-6], R0
__if_4667_start:
  mov R1, [BP-3]
  iadd R1, 3
  mov R0, [R1]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_4670
  mov R1, [BP-5]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_4670:
  jf R0, __LogicalAnd_ShortCircuit_4677
  mov R1, global_synth_v_active
  mov R2, [BP-5]
  iadd R1, R2
  mov R1, [R1]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_4677:
  jf R0, __if_4667_end
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [BP-6]
  mov [SP+1], R1
  call __function_synth_note_retrigger
__if_4682_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_4682_end
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  mov R1, global_synth_v_timer
  mov R2, [BP-5]
  iadd R1, R2
  mov [R1], R0
__if_4682_end:
  jmp __for_4602_continue
__if_4667_end:
__if_4694_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_4694_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_4694_end:
__if_4702_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_4702_else
  mov R3, [BP-3]
  mov R2, [R3]
  mov [SP], R2
  mov R2, [BP-6]
  mov [SP+1], R2
  mov R3, [BP-3]
  iadd R3, 2
  mov R2, [R3]
  mov [SP+2], R2
  mov R3, [BP-3]
  iadd R3, 4
  mov R2, [R3]
  mov [SP+3], R2
  call __function_synth_play_timed
  mov R1, R0
  mov [BP-7], R1
  mov R0, R1
  jmp __if_4702_end
__if_4702_else:
  mov R3, [BP-3]
  mov R2, [R3]
  mov [SP], R2
  mov R2, [BP-6]
  mov [SP+1], R2
  mov R3, [BP-3]
  iadd R3, 2
  mov R2, [R3]
  mov [SP+2], R2
  call __function_synth_note_on
  mov R1, R0
  mov [BP-7], R1
  mov R0, R1
__if_4702_end:
  mov R0, [BP-7]
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__for_4602_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_4602_start
__for_4602_end:
__function_synth_seq_trigger_row_return:
  mov SP, BP
  pop BP
  ret

__function_rising:
  push BP
  mov BP, SP
  push R1
__if_4801_start:
  mov R0, [BP+2]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_4806
  mov R1, [BP+3]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_4806:
  jf R0, __if_4801_end
  mov R0, 1
  jmp __function_rising_return
__if_4801_end:
  mov R0, 0
__function_rising_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_falling:
  push BP
  mov BP, SP
  push R1
__if_4816_start:
  mov R0, [BP+2]
  ile R0, 0
  jf R0, __LogicalAnd_ShortCircuit_4821
  mov R1, [BP+3]
  igt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_4821:
  jf R0, __if_4816_end
  mov R0, 1
  jmp __function_falling_return
__if_4816_end:
  mov R0, 0
__function_falling_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_main:
  push BP
  mov BP, SP
  isub SP, 15
  mov R1, 0
  mov [SP], R1
  call __function_synth_init
  call __function_synth_load_presets
  mov R1, global_pad
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.160000
  mov [SP+2], R1
  mov R1, 24
  mov [SP+3], R1
  mov R1, 30
  mov [SP+4], R1
  mov R1, 0.700000
  mov [SP+5], R1
  mov R1, 40
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, global_pad
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, 3.000000
  mov [SP+2], R1
  mov R1, 0.500000
  mov [SP+3], R1
  mov R1, 0
  mov [SP+4], R1
  mov R1, 2
  mov [SP+5], R1
  call __function_synth_set_lfo
  mov R1, global_zap
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  mov R1, 0.240000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 8
  mov [SP+4], R1
  mov R1, 0.000000
  mov [SP+5], R1
  mov R1, 6
  mov [SP+6], R1
  call __function_synth_patch
  mov R1, global_zap
  mov [SP], R1
  mov R1, 24.000000
  mov [SP+1], R1
  mov R1, 8
  mov [SP+2], R1
  call __function_synth_set_pitch_env
  mov R1, global_arp
  mov [SP], R1
  mov R1, 4
  mov [SP+1], R1
  mov R1, 0.200000
  mov [SP+2], R1
  mov R1, 0
  mov [SP+3], R1
  mov R1, 6
  mov [SP+4], R1
  mov R1, 0.500000
  mov [SP+5], R1
  mov R1, 8
  mov [SP+6], R1
  call __function_synth_patch
  mov R0, 0
  mov [BP-3], R0
  mov R0, 4
  mov [BP-2], R0
  mov R0, 7
  mov [BP-1], R0
  mov R1, global_arp
  mov [SP], R1
  lea R1, [BP-3]
  mov [SP+1], R1
  mov R1, 3
  mov [SP+2], R1
  mov R1, 4
  mov [SP+3], R1
  call __function_synth_set_arp
  mov R1, 4
  mov [SP], R1
  mov R1, 6
  mov [SP+1], R1
  mov R1, 0.600000
  mov [SP+2], R1
  call __function_synth_set_echo
  mov R0, 0
  mov [global_prev_a], R0
  mov R0, 0
  mov [global_prev_b], R0
  mov R0, 0
  mov [global_prev_x], R0
  mov R0, 0
  mov [global_prev_y], R0
  mov R0, -1
  mov [global_voice_a], R0
  mov R0, -1
  mov [global_voice_b], R0
__while_4909_start:
__while_4909_continue:
  mov R0, 1
  jf R0, __while_4909_end
  mov R1, 0
  mov [SP], R1
  call __function_select_gamepad
  call __function_gamepad_button_a
  mov [BP-4], R0
  call __function_gamepad_button_b
  mov [BP-5], R0
  call __function_gamepad_button_x
  mov [BP-6], R0
  call __function_gamepad_button_y
  mov [BP-7], R0
__if_4926_start:
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [global_prev_a]
  mov [SP+1], R1
  call __function_rising
  cib R0
  jf R0, __if_4926_end
  mov R2, global_pad
  mov [SP], R2
  mov R2, 48
  mov [SP+1], R2
  mov R2, 0.900000
  mov [SP+2], R2
  call __function_synth_note_on
  mov R1, R0
  mov [global_voice_a], R1
  mov R0, R1
__if_4926_end:
__if_4937_start:
  mov R2, [BP-4]
  mov [SP], R2
  mov R2, [global_prev_a]
  mov [SP+1], R2
  call __function_falling
  mov R1, R0
  cib R1
  jf R1, __LogicalAnd_ShortCircuit_4941
  mov R2, [global_voice_a]
  ige R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_4941:
  mov R0, R1
  jf R0, __if_4937_end
  mov R1, [global_voice_a]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov [global_voice_a], R0
__if_4937_end:
__if_4952_start:
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [global_prev_b]
  mov [SP+1], R1
  call __function_rising
  cib R0
  jf R0, __if_4952_end
  mov R2, global_arp
  mov [SP], R2
  mov R2, 60
  mov [SP+1], R2
  mov R2, 1.000000
  mov [SP+2], R2
  call __function_synth_note_on
  mov R1, R0
  mov [global_voice_b], R1
  mov R0, R1
__if_4952_end:
__if_4963_start:
  mov R2, [BP-5]
  mov [SP], R2
  mov R2, [global_prev_b]
  mov [SP+1], R2
  call __function_falling
  mov R1, R0
  cib R1
  jf R1, __LogicalAnd_ShortCircuit_4967
  mov R2, [global_voice_b]
  ige R2, 0
  and R1, R2
__LogicalAnd_ShortCircuit_4967:
  mov R0, R1
  jf R0, __if_4963_end
  mov R1, [global_voice_b]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov [global_voice_b], R0
__if_4963_end:
__if_4978_start:
  mov R1, [BP-6]
  mov [SP], R1
  mov R1, [global_prev_x]
  mov [SP+1], R1
  call __function_rising
  cib R0
  jf R0, __if_4978_end
  mov R1, global_zap
  mov [SP], R1
  mov R1, 72
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  mov R1, 10
  mov [SP+3], R1
  call __function_synth_play_timed
__if_4978_end:
__if_4988_start:
  mov R1, [BP-7]
  mov [SP], R1
  mov R1, [global_prev_y]
  mov [SP+1], R1
  call __function_rising
  cib R0
  jf R0, __if_4988_end
  mov R2, 13
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [BP-8], R1
  mov R1, [BP-8]
  mov [SP], R1
  mov R1, 72
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  mov R1, 10
  mov [SP+3], R1
  call __function_synth_note_echo
__if_4988_end:
  mov R0, [BP-4]
  mov [global_prev_a], R0
  mov R0, [BP-5]
  mov [global_prev_b], R0
  mov R0, [BP-6]
  mov [global_prev_x], R0
  mov R0, [BP-7]
  mov [global_prev_y], R0
  call __function_synth_update
  mov R1, -16777216
  mov [SP], R1
  call __function_clear_screen
  call __function_end_frame
  jmp __while_4909_start
__while_4909_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

__literal_string_3329:
  string "SQ LEAD"
__literal_string_3330:
  string "PLS LEAD"
__literal_string_3331:
  string "SAW LEAD"
__literal_string_3332:
  string "SINE LEAD"
__literal_string_3333:
  string "CHIP LEAD"
__literal_string_3334:
  string "SUB BASS"
__literal_string_3335:
  string "TRI BASS"
__literal_string_3336:
  string "SQ BASS"
__literal_string_3337:
  string "SAW BASS"
__literal_string_3338:
  string "PLUCK BASS"
__literal_string_3339:
  string "SQ PLUCK"
__literal_string_3340:
  string "SAW PLUCK"
__literal_string_3341:
  string "E-PIANO"
__literal_string_3342:
  string "HARP"
__literal_string_3343:
  string "MARIMBA"
__literal_string_3344:
  string "SAW PAD"
__literal_string_3345:
  string "SQ PAD"
__literal_string_3346:
  string "WARM PAD"
__literal_string_3347:
  string "STRINGS"
__literal_string_3348:
  string "ORGAN"
__literal_string_3349:
  string "SOFT ORGAN"
__literal_string_3350:
  string "BRASS"
__literal_string_3351:
  string "BELL"
__literal_string_3352:
  string "CHIME"
__literal_string_3353:
  string "ZAP"
__literal_string_3354:
  string "LASER"
__literal_string_3355:
  string "SIREN"
__literal_string_3356:
  string "DROP"
__literal_string_3357:
  string "KICK"
__literal_string_3358:
  string "SNARE"
__literal_string_3359:
  string "CL HAT"
__literal_string_3360:
  string "OP HAT"
__literal_string_3361:
  string "TOM"
__literal_string_3362:
  string "CLAP"
__literal_string_3363:
  string "COWBELL"
__literal_string_3364:
  string "MAJ ARP"
__literal_string_3365:
  string "MIN ARP"
__literal_string_3366:
  string "WOBBLE"
__literal_string_3367:
  string "ECHO PLUCK"
__literal_string_3368:
  string "PWM LEAD"
