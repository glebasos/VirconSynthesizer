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
  %define global_t_lead 3378
  %define global_t_bass 3410
  %define global_t_arp 3442
  %define global_t_kick 3474
  %define global_t_hat 3506
  %define global_song 3538
  %define global_chord_root 3584
  %define global_arp0 3588
  %define global_arp1 3592
  %define global_arp2 3596
  %define global_lead_line 3600
  %define global_scale_notes 3616
  %define global_btn_prev 3622
  %define global_btn_voice 3628
  %define global_manual_preset 3634
  %define global_frame_count 3635
  %define global_note_level 3636
  %define global_hud_title 3764
  %define global_hud_preset 3796
  %define global_hud_keys 3812
  %define global_updown_prev 3876
  %define global_leftright_prev 3877
  %define global_start_prev 3878

__global_scope_initialization:
  push BP
  mov BP, SP
  mov DR, global_synth_preset_name
  mov SR, __literal_string_3799
  mov CR, 8
  movs
  mov DR, 2696
  mov SR, __literal_string_3800
  mov CR, 9
  movs
  mov DR, 2712
  mov SR, __literal_string_3801
  mov CR, 9
  movs
  mov DR, 2728
  mov SR, __literal_string_3802
  mov CR, 10
  movs
  mov DR, 2744
  mov SR, __literal_string_3803
  mov CR, 10
  movs
  mov DR, 2760
  mov SR, __literal_string_3804
  mov CR, 9
  movs
  mov DR, 2776
  mov SR, __literal_string_3805
  mov CR, 9
  movs
  mov DR, 2792
  mov SR, __literal_string_3806
  mov CR, 8
  movs
  mov DR, 2808
  mov SR, __literal_string_3807
  mov CR, 9
  movs
  mov DR, 2824
  mov SR, __literal_string_3808
  mov CR, 11
  movs
  mov DR, 2840
  mov SR, __literal_string_3809
  mov CR, 9
  movs
  mov DR, 2856
  mov SR, __literal_string_3810
  mov CR, 10
  movs
  mov DR, 2872
  mov SR, __literal_string_3811
  mov CR, 8
  movs
  mov DR, 2888
  mov SR, __literal_string_3812
  mov CR, 5
  movs
  mov DR, 2904
  mov SR, __literal_string_3813
  mov CR, 8
  movs
  mov DR, 2920
  mov SR, __literal_string_3814
  mov CR, 8
  movs
  mov DR, 2936
  mov SR, __literal_string_3815
  mov CR, 7
  movs
  mov DR, 2952
  mov SR, __literal_string_3816
  mov CR, 9
  movs
  mov DR, 2968
  mov SR, __literal_string_3817
  mov CR, 8
  movs
  mov DR, 2984
  mov SR, __literal_string_3818
  mov CR, 6
  movs
  mov DR, 3000
  mov SR, __literal_string_3819
  mov CR, 11
  movs
  mov DR, 3016
  mov SR, __literal_string_3820
  mov CR, 6
  movs
  mov DR, 3032
  mov SR, __literal_string_3821
  mov CR, 5
  movs
  mov DR, 3048
  mov SR, __literal_string_3822
  mov CR, 6
  movs
  mov DR, 3064
  mov SR, __literal_string_3823
  mov CR, 4
  movs
  mov DR, 3080
  mov SR, __literal_string_3824
  mov CR, 6
  movs
  mov DR, 3096
  mov SR, __literal_string_3825
  mov CR, 6
  movs
  mov DR, 3112
  mov SR, __literal_string_3826
  mov CR, 5
  movs
  mov DR, 3128
  mov SR, __literal_string_3827
  mov CR, 5
  movs
  mov DR, 3144
  mov SR, __literal_string_3828
  mov CR, 6
  movs
  mov DR, 3160
  mov SR, __literal_string_3829
  mov CR, 7
  movs
  mov DR, 3176
  mov SR, __literal_string_3830
  mov CR, 7
  movs
  mov DR, 3192
  mov SR, __literal_string_3831
  mov CR, 4
  movs
  mov DR, 3208
  mov SR, __literal_string_3832
  mov CR, 5
  movs
  mov DR, 3224
  mov SR, __literal_string_3833
  mov CR, 8
  movs
  mov DR, 3240
  mov SR, __literal_string_3834
  mov CR, 8
  movs
  mov DR, 3256
  mov SR, __literal_string_3835
  mov CR, 8
  movs
  mov DR, 3272
  mov SR, __literal_string_3836
  mov CR, 7
  movs
  mov DR, 3288
  mov SR, __literal_string_3837
  mov CR, 11
  movs
  mov DR, 3304
  mov SR, __literal_string_3838
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
  mov R0, 45
  mov [global_chord_root], R0
  mov R0, 41
  mov [3585], R0
  mov R0, 48
  mov [3586], R0
  mov R0, 43
  mov [3587], R0
  mov R0, 57
  mov [global_arp0], R0
  mov R0, 53
  mov [3589], R0
  mov R0, 60
  mov [3590], R0
  mov R0, 55
  mov [3591], R0
  mov R0, 60
  mov [global_arp1], R0
  mov R0, 57
  mov [3593], R0
  mov R0, 64
  mov [3594], R0
  mov R0, 59
  mov [3595], R0
  mov R0, 64
  mov [global_arp2], R0
  mov R0, 60
  mov [3597], R0
  mov R0, 67
  mov [3598], R0
  mov R0, 62
  mov [3599], R0
  mov R0, 69
  mov [global_lead_line], R0
  mov R0, 72
  mov [3601], R0
  mov R0, 76
  mov [3602], R0
  mov R0, 74
  mov [3603], R0
  mov R0, 72
  mov [3604], R0
  mov R0, 69
  mov [3605], R0
  mov R0, 65
  mov [3606], R0
  mov R0, 67
  mov [3607], R0
  mov R0, 64
  mov [3608], R0
  mov R0, 67
  mov [3609], R0
  mov R0, 72
  mov [3610], R0
  mov R0, 71
  mov [3611], R0
  mov R0, 67
  mov [3612], R0
  mov R0, 62
  mov [3613], R0
  mov R0, 67
  mov [3614], R0
  mov R0, 74
  mov [3615], R0
  mov R0, 60
  mov [global_scale_notes], R0
  mov R0, 64
  mov [3617], R0
  mov R0, 67
  mov [3618], R0
  mov R0, 69
  mov [3619], R0
  mov R0, 72
  mov [3620], R0
  mov R0, 76
  mov [3621], R0
  mov DR, global_hud_title
  mov SR, __literal_string_6448
  mov CR, 21
  movs
  mov DR, global_hud_preset
  mov SR, __literal_string_6452
  mov CR, 8
  movs
  mov DR, global_hud_keys
  mov SR, __literal_string_6456
  mov CR, 51
  movs
  mov SP, BP
  pop BP
  ret

__function_make_color_rgb:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+4]
  shl R0, 16
  or R0, -16777216
  mov R1, [BP+3]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_color_rgb_return:
  pop R1
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

__function_set_multiply_color:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_MultiplyColor, R0
__function_set_multiply_color_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_scale:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingScaleX, R0
  mov R0, [BP+3]
  out GPU_DrawingScaleY, R0
__function_set_drawing_scale_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_angle:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingAngle, R0
__function_set_drawing_angle_return:
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

__function_draw_region_zoomed_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionZoomed
__function_draw_region_zoomed_at_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_rotozoomed_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionRotozoomed
__function_draw_region_rotozoomed_at_return:
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

__function_gamepad_button_l:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonL
__function_gamepad_button_l_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_r:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonR
__function_gamepad_button_r_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_start:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonStart
__function_gamepad_button_start_return:
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

__function_min:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imin R0, R1
  pop R1
__function_min_return:
  mov SP, BP
  pop BP
  ret

__function_max:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imax R0, R1
  pop R1
__function_max_return:
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

__function_ceil:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  ceil R0
__function_ceil_return:
  mov SP, BP
  pop BP
  ret

__function_round:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  round R0
__function_round_return:
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

__function_cos:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fadd R0, 1.570796
  sin R0
__function_cos_return:
  mov SP, BP
  pop BP
  ret

__function_atan2:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  atan2 R0, R1
  pop R1
__function_atan2_return:
  mov SP, BP
  pop BP
  ret

__function_sqrt:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, 0.5
  pow R0, R1
  pop R1
__function_sqrt_return:
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

__function_draw_horizontal_line:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, [BP+4]
  mov R2, [BP+2]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_horizontal_line_return:
  mov SP, BP
  pop BP
  ret

__function_draw_line:
  push BP
  mov BP, SP
  isub SP, 6
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
__if_840_start:
  mov R0, [BP+2]
  mov R1, [BP+4]
  ieq R0, R1
  jf R0, __LogicalAnd_ShortCircuit_845
  mov R1, [BP+3]
  mov R2, [BP+5]
  ieq R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_845:
  jf R0, __if_840_end
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_at
  jmp __function_draw_line_return
__if_840_end:
  mov R0, [BP+4]
  mov R1, [BP+2]
  isub R0, R1
  mov [BP-1], R0
  mov R0, [BP+5]
  mov R1, [BP+3]
  isub R0, R1
  mov [BP-2], R0
  mov R2, [BP-1]
  mov R3, [BP-1]
  imul R2, R3
  mov R3, [BP-2]
  mov R4, [BP-2]
  imul R3, R4
  iadd R2, R3
  cif R2
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  fadd R1, 1.000000
  mov R0, R1
  mov [BP-3], R0
  mov R1, [BP-2]
  cif R1
  mov [SP], R1
  mov R1, [BP-1]
  cif R1
  mov [SP+1], R1
  call __function_atan2
  mov [BP-4], R0
  mov R1, [BP-4]
  mov [SP], R1
  call __function_set_drawing_angle
  mov R1, [BP-3]
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_rotozoomed_at
__function_draw_line_return:
  mov SP, BP
  pop BP
  ret

__function_draw_filled_rectangle:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, [BP+4]
  mov R2, [BP+2]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP], R1
  mov R1, [BP+5]
  mov R2, [BP+3]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_filled_rectangle_return:
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
__for_1572_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_1572_end
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
__for_1572_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1572_start
__for_1572_end:
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
__for_1612_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_1612_end
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_1612_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1612_start
__for_1612_end:
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
__for_1654_start:
  mov R0, [BP-1]
  ilt R0, 7
  jf R0, __for_1654_end
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [SP], R1
  call __function_select_sound
  mov R1, 1
  mov [SP], R1
  call __function_set_sound_loop
__for_1654_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1654_start
__for_1654_end:
  mov R0, 0
  mov [BP-1], R0
__for_1670_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_1670_end
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
__for_1670_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1670_start
__for_1670_end:
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
__if_1746_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1746_end
  mov R0, 0
  mov [BP-1], R0
__if_1746_end:
__if_1753_start:
  mov R0, [BP-1]
  igt R0, 127
  jf R0, __if_1753_end
  mov R0, 127
  mov [BP-1], R0
__if_1753_end:
  mov R0, global_synth_note_speed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_1765_start:
  mov R1, [BP+3]
  iadd R1, 25
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_1765_end
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
__if_1765_end:
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
__if_1784_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_1784_end
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  jmp __function_synth_inst_sound_return
__if_1784_end:
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
__for_1798_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1798_end
__if_1807_start:
  mov R0, global_synth_v_active
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1807_end
  mov R0, [BP-3]
  jmp __function_synth_alloc_voice_return
__if_1807_end:
__for_1798_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1798_start
__for_1798_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, [global_synth_v_amp]
  mov [BP-2], R0
  mov R0, 1
  mov [BP-3], R0
__for_1822_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1822_end
__if_1831_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-2]
  flt R0, R1
  jf R0, __if_1831_end
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP-3]
  mov [BP-1], R0
__if_1831_end:
__for_1822_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1822_start
__for_1822_end:
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
__if_1988_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ilt R0, 0
  jf R0, __if_1988_end
  jmp __function_synth_morph_reset_return
__if_1988_end:
  mov R1, [BP+2]
  iadd R1, 39
  mov R0, [R1]
  cfi R0
  mov [BP-1], R0
__if_1999_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1999_end
  mov R0, 0
  mov [BP-1], R0
__if_1999_end:
__if_2006_start:
  mov R0, [BP-1]
  mov R2, [BP+2]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2006_end
  mov R1, [BP+2]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_2006_end:
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
__if_2037_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_2037_end
  mov R0, 0
  mov [BP+3], R0
__if_2037_end:
__if_2044_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_2044_end
  mov R0, 127
  mov [BP+3], R0
__if_2044_end:
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
__if_2179_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_2184
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_2184:
  jf R0, __if_2179_end
  jmp __function_synth_note_retrigger_return
__if_2179_end:
__if_2188_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2188_end
  jmp __function_synth_note_retrigger_return
__if_2188_end:
  mov R0, global_synth_v_inst
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_2199_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_2199_end
  mov R0, 0
  mov [BP+3], R0
__if_2199_end:
__if_2206_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_2206_end
  mov R0, 127
  mov [BP+3], R0
__if_2206_end:
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
__if_2240_start:
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2240_else
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2240_end
__if_2240_else:
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
__if_2240_end:
__function_synth_note_retrigger_return:
  mov SP, BP
  pop BP
  ret

__function_synth_note_off:
  push BP
  mov BP, SP
__if_2264_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_2269
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_2269:
  jf R0, __if_2264_end
  jmp __function_synth_note_off_return
__if_2264_end:
__if_2273_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2273_end
  jmp __function_synth_note_off_return
__if_2273_end:
__if_2279_start:
  mov R0, global_synth_v_phase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 5
  jt R0, __LogicalOr_ShortCircuit_2288
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  ieq R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_2288:
  jf R0, __if_2279_end
  jmp __function_synth_note_off_return
__if_2279_end:
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
__if_2421_start:
  mov R0, global_synth_v_age
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP+3]
  iadd R2, 16
  mov R1, [R2]
  ilt R0, R1
  jf R0, __if_2421_end
  mov R0, 0.000000
  jmp __function_synth_lfo_value_return
__if_2421_end:
__if_2432_start:
  mov R1, [BP+3]
  iadd R1, 18
  mov R0, [R1]
  cib R0
  jf R0, __if_2432_else
  mov R0, [global_synth_cur_row_frames]
  mov [BP-6], R0
__if_2439_start:
  mov R0, [BP-6]
  ilt R0, 1
  jf R0, __if_2439_end
  mov R0, 1
  mov [BP-6], R0
__if_2439_end:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  mov R1, [BP-6]
  cif R1
  fdiv R0, R1
  mov [BP-1], R0
  jmp __if_2432_end
__if_2432_else:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  fdiv R0, 60.000000
  mov [BP-1], R0
__if_2432_end:
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
__if_2485_start:
  mov R0, [BP-3]
  ieq R0, 0
  jf R0, __if_2485_end
  mov R1, [BP-5]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_synth_lfo_value_return
__if_2485_end:
__if_2494_start:
  mov R0, [BP-3]
  ieq R0, 1
  jf R0, __if_2494_end
  mov R2, [BP-5]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_synth_lfo_value_return
__if_2494_end:
__if_2507_start:
  mov R0, [BP-3]
  ieq R0, 2
  jf R0, __if_2507_end
  mov R0, [BP-5]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2507_end:
__if_2517_start:
  mov R0, [BP-3]
  ieq R0, 3
  jf R0, __if_2517_end
__if_2522_start:
  mov R0, [BP-5]
  flt R0, 0.500000
  jf R0, __if_2522_end
  mov R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2522_end:
  mov R0, -1.000000
  jmp __function_synth_lfo_value_return
__if_2517_end:
__if_2531_start:
  mov R0, [BP-4]
  cfi R0
  mov R1, [BP-2]
  cfi R1
  ine R0, R1
  jf R0, __if_2531_end
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
__if_2531_end:
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
__if_2564_start:
  mov R1, [BP+3]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 0
  jt R0, __LogicalOr_ShortCircuit_2571
  mov R2, [BP+3]
  iadd R2, 21
  mov R1, [R2]
  feq R1, 0.000000
  or R0, R1
__LogicalOr_ShortCircuit_2571:
  jf R0, __if_2564_end
  mov R0, 0.000000
  jmp __function_synth_step_modenv_return
__if_2564_end:
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
__if_2589_start:
  mov R0, [BP-1]
  ieq R0, 0
  jf R0, __if_2589_else
__if_2594_start:
  mov R1, [BP+3]
  iadd R1, 19
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2594_else
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
  jmp __if_2594_end
__if_2594_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 19
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2621_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2621_else
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
  jmp __if_2621_end
__if_2621_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2621_end:
__if_2594_end:
  jmp __if_2589_end
__if_2589_else:
__if_2644_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2644_end
__if_2649_start:
  mov R1, [BP+3]
  iadd R1, 20
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2649_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2649_end
__if_2649_else:
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
__if_2673_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jf R0, __if_2673_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2673_end
__if_2673_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2673_end:
__if_2649_end:
__if_2644_end:
__if_2589_end:
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
__if_2711_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2711_else
__if_2716_start:
  mov R1, [BP+3]
  iadd R1, 2
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2716_else
  mov R0, 1.000000
  mov [BP-3], R0
  jmp __if_2716_end
__if_2716_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 2
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2716_end:
__if_2731_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2731_end
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2744_start:
  mov R1, [BP+3]
  iadd R1, 3
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2744_else
  mov R0, 2
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2744_end
__if_2744_else:
  mov R0, 3
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2744_end:
__if_2731_end:
  jmp __if_2711_end
__if_2711_else:
__if_2759_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_2759_else
  mov R0, 1.000000
  mov [BP-3], R0
__if_2767_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 3
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2767_end
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
__if_2767_end:
  jmp __if_2759_end
__if_2759_else:
__if_2783_start:
  mov R0, [BP-1]
  ieq R0, 3
  jf R0, __if_2783_else
  mov R0, 0
  mov [BP-4], R0
__if_2791_start:
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2791_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
  jmp __if_2791_end
__if_2791_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-5], R0
__if_2812_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2812_end
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
__if_2812_end:
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
__if_2834_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2834_end
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
__if_2834_end:
__if_2791_end:
__if_2847_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_2847_end
__if_2850_start:
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  fle R0, 0.001000
  jf R0, __if_2850_else
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2850_end
__if_2850_else:
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
__if_2850_end:
__if_2847_end:
  jmp __if_2783_end
__if_2783_else:
__if_2871_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_2871_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  jmp __if_2871_end
__if_2871_else:
__if_2880_start:
  mov R0, [BP-1]
  ieq R0, 5
  jf R0, __if_2880_end
__if_2885_start:
  mov R1, [BP+3]
  iadd R1, 6
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2885_else
  mov R0, 0.000000
  mov [BP-3], R0
  jmp __if_2885_end
__if_2885_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 6
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-4], R0
__if_2901_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2901_end
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
__if_2901_end:
  mov R0, global_synth_v_relstart
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-4]
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-3], R0
__if_2885_end:
__if_2922_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jt R0, __LogicalOr_ShortCircuit_2927
  mov R1, [BP-2]
  mov R3, [BP+3]
  iadd R3, 6
  mov R2, [R3]
  ige R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_2927:
  jf R0, __if_2922_end
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2922_end:
__if_2880_end:
__if_2871_end:
__if_2783_end:
__if_2759_end:
__if_2711_end:
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
__if_2950_start:
  mov R0, global_synth_v_arptimer
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2950_end
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
__if_2950_end:
  mov R1, [BP+3]
  iadd R1, 35
  mov R0, [R1]
  mov [BP-1], R0
__if_2967_start:
  mov R0, [BP-1]
  ilt R0, 1
  jf R0, __if_2967_end
  mov R0, 1
  mov [BP-1], R0
__if_2967_end:
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
__if_2992_start:
  mov R0, [BP-4]
  ilt R0, 0
  jf R0, __if_2992_end
  mov R0, 0
  mov [BP-4], R0
__if_2992_end:
__if_2999_start:
  mov R0, [BP-4]
  igt R0, 127
  jf R0, __if_2999_end
  mov R0, 127
  mov [BP-4], R0
__if_2999_end:
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
__if_3049_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_3049_end
  mov R0, 0
  mov [BP-1], R0
__if_3049_end:
__if_3056_start:
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_3056_end
  mov R1, [BP+3]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_3056_end:
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
__for_3088_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_3088_end
__if_3098_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_3098_end
  jmp __for_3088_continue
__if_3098_end:
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
__if_3114_start:
  mov R0, global_synth_v_phase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3114_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_voice_kill
  jmp __for_3088_continue
__if_3114_end:
__if_3124_start:
  mov R1, [BP-2]
  iadd R1, 26
  mov R0, [R1]
  cib R0
  jf R0, __if_3124_else
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_synth_step_arp
  jmp __if_3124_end
__if_3124_else:
__if_3130_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_3130_end
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
__if_3160_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3160_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3160_end:
__if_3130_end:
__if_3124_end:
  mov R0, 0.000000
  mov [BP-4], R0
__if_3176_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_3183
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  fne R1, 0.000000
  and R0, R1
__LogicalAnd_ShortCircuit_3183:
  jf R0, __if_3176_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_lfo_value
  mov R1, R0
  mov [BP-4], R1
  mov R0, R1
__if_3176_end:
  mov R0, 0.000000
  mov [BP-5], R0
__if_3194_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ine R0, 0
  jf R0, __if_3194_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_step_modenv
  mov R1, R0
  mov [BP-5], R1
  mov R0, R1
__if_3194_end:
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
__if_3216_start:
  mov R1, [BP-2]
  iadd R1, 11
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __if_3216_end
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
__if_3216_end:
__if_3253_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 2
  jf R0, __if_3253_end
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
__if_3253_end:
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
__if_3287_start:
  mov R1, [BP-2]
  iadd R1, 23
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_3287_end
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
__if_3287_end:
__if_3300_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_3300_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_3300_end:
__if_3311_start:
  mov R1, [BP-2]
  iadd R1, 8
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_3319
  mov R1, global_synth_v_age
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov R3, [BP-2]
  iadd R3, 10
  mov R2, [R3]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_3319:
  jf R0, __if_3311_end
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
__if_3311_end:
__if_3343_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_3343_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  mov R2, [BP-4]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_3343_end:
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
__if_3359_start:
  mov R0, [BP-7]
  fne R0, 0.000000
  jf R0, __if_3359_end
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
__if_3359_end:
__if_3372_start:
  mov R1, [BP-2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_3372_end
  mov R1, [BP-2]
  iadd R1, 39
  mov R0, [R1]
  mov [BP-9], R0
__if_3382_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_3382_end
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
__if_3382_end:
__if_3398_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_3398_end
  mov R0, [BP-9]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-9], R0
__if_3398_end:
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, [BP-9]
  mov [SP+2], R1
  call __function_synth_apply_morph
__if_3372_end:
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
__if_3429_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_3429_end
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3441_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3441_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3441_end:
__if_3429_end:
__for_3088_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3088_start
__for_3088_end:
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
__if_3725_start:
  mov R0, [BP+4]
  ilt R0, 1
  jf R0, __if_3725_end
  mov R0, 1
  mov [BP+4], R0
__if_3725_end:
__if_3732_start:
  mov R0, [BP+4]
  igt R0, 8
  jf R0, __if_3732_end
  mov R0, 8
  mov [BP+4], R0
__if_3732_end:
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
__for_3751_start:
  mov R0, [BP-1]
  mov R1, [BP+4]
  ilt R0, R1
  jf R0, __for_3751_end
  mov R0, [BP+3]
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP+2]
  iadd R1, 27
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_3751_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3751_start
__for_3751_end:
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

__function_synth_preset_get_name:
  push BP
  mov BP, SP
  push R1
  mov R0, global_synth_preset_name
  mov R1, [BP+2]
  imul R1, 16
  iadd R0, R1
__function_synth_preset_get_name_return:
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
__for_4750_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4750_end
__if_4759_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4759_end
  mov R0, [BP-1]
  jmp __function_synth_schedule_alloc_return
__if_4759_end:
__for_4750_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4750_start
__for_4750_end:
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
__if_4778_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_4778_end
  jmp __function_synth_schedule_note_return
__if_4778_end:
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
__for_4814_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4814_end
__if_4824_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4824_end
  jmp __for_4814_continue
__if_4824_end:
__if_4830_start:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ile R0, 0
  jf R0, __if_4830_else
__if_4837_start:
  mov R0, global_synth_ev_dur
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_4837_else
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
  jmp __if_4837_end
__if_4837_else:
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
__if_4837_end:
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  jmp __if_4830_end
__if_4830_else:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_ev_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_4830_end:
__for_4814_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4814_start
__for_4814_end:
__function_synth_scheduler_update_return:
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
__for_4907_start:
  mov R0, [BP-3]
  mov R1, [BP+6]
  ile R0, R1
  jf R0, __for_4907_end
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
__for_4907_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4907_start
__for_4907_end:
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

__function_synth_seq_play:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, [BP+2]
  mov [global_synth_seq_song], R0
  mov R0, 0
  mov [global_synth_seq_row], R0
  mov R0, 0
  mov [global_synth_seq_timer], R0
  mov R0, 1
  mov [global_synth_seq_playing], R0
  mov R1, [BP+2]
  iadd R1, 42
  mov R0, [R1]
  mov [global_synth_cur_row_frames], R0
  mov R0, 0
  mov [BP-1], R0
__for_5002_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_5002_end
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_5002_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5002_start
__for_5002_end:
__function_synth_seq_play_return:
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
__for_5021_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_5021_end
__if_5030_start:
  mov R0, global_synth_seq_voice
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_5030_end
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
__if_5030_end:
__for_5021_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5021_start
__for_5021_end:
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
__for_5072_start:
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 40
  mov R1, [R2]
  ilt R0, R1
  jf R0, __for_5072_end
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
__if_5096_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_5096_end
  jmp __for_5072_continue
__if_5096_end:
__if_5101_start:
  mov R0, [BP-4]
  ieq R0, -2
  jf R0, __if_5101_end
  jmp __for_5072_continue
__if_5101_end:
  mov R0, global_synth_seq_voice
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
__if_5112_start:
  mov R0, [BP-4]
  ieq R0, -1
  jf R0, __if_5112_end
__if_5118_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_5118_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_5118_end:
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  jmp __for_5072_continue
__if_5112_end:
  mov R0, [BP-4]
  mov R2, [BP-1]
  iadd R2, 44
  mov R1, [R2]
  iadd R0, R1
  mov [BP-6], R0
__if_5137_start:
  mov R1, [BP-3]
  iadd R1, 3
  mov R0, [R1]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_5140
  mov R1, [BP-5]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5140:
  jf R0, __LogicalAnd_ShortCircuit_5147
  mov R1, global_synth_v_active
  mov R2, [BP-5]
  iadd R1, R2
  mov R1, [R1]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_5147:
  jf R0, __if_5137_end
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [BP-6]
  mov [SP+1], R1
  call __function_synth_note_retrigger
__if_5152_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_5152_end
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  mov R1, global_synth_v_timer
  mov R2, [BP-5]
  iadd R1, R2
  mov [R1], R0
__if_5152_end:
  jmp __for_5072_continue
__if_5137_end:
__if_5164_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_5164_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_5164_end:
__if_5172_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_5172_else
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
  jmp __if_5172_end
__if_5172_else:
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
__if_5172_end:
  mov R0, [BP-7]
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__for_5072_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_5072_start
__for_5072_end:
__function_synth_seq_trigger_row_return:
  mov SP, BP
  pop BP
  ret

__function_synth_seq_update:
  push BP
  mov BP, SP
  isub SP, 2
__if_5201_start:
  mov R0, [global_synth_seq_playing]
  bnot R0
  jf R0, __if_5201_end
  jmp __function_synth_seq_update_return
__if_5201_end:
  mov R0, [global_synth_seq_song]
  mov [BP-1], R0
__if_5208_start:
  mov R0, [global_synth_seq_timer]
  ile R0, 0
  jf R0, __if_5208_end
  call __function_synth_seq_trigger_row
  mov R1, [BP-1]
  iadd R1, 42
  mov R0, [R1]
  mov [BP-2], R0
__if_5218_start:
  mov R1, [BP-1]
  iadd R1, 45
  mov R0, [R1]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5227
  mov R1, [global_synth_seq_row]
  and R1, 1
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_5227:
  jf R0, __if_5218_end
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 45
  mov R1, [R2]
  iadd R0, R1
  mov [BP-2], R0
__if_5218_end:
  mov R0, [BP-2]
  mov [global_synth_seq_timer], R0
  mov R0, [global_synth_seq_row]
  iadd R0, 1
  mov [global_synth_seq_row], R0
__if_5238_start:
  mov R0, [global_synth_seq_row]
  mov R2, [BP-1]
  iadd R2, 41
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_5238_end
__if_5244_start:
  mov R1, [BP-1]
  iadd R1, 43
  mov R0, [R1]
  cib R0
  jf R0, __if_5244_else
  mov R0, 0
  mov [global_synth_seq_row], R0
  jmp __if_5244_end
__if_5244_else:
  call __function_synth_seq_stop
__if_5244_end:
__if_5238_end:
__if_5208_end:
  mov R0, [global_synth_seq_timer]
  isub R0, 1
  mov [global_synth_seq_timer], R0
__function_synth_seq_update_return:
  mov SP, BP
  pop BP
  ret

__function_fill_rest:
  push BP
  mov BP, SP
  isub SP, 1
  mov R0, 0
  mov [BP-1], R0
__for_5348_start:
  mov R0, [BP-1]
  ilt R0, 32
  jf R0, __for_5348_end
  mov R0, -2
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_5348_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5348_start
__for_5348_end:
__function_fill_rest_return:
  mov SP, BP
  pop BP
  ret

__function_setup_song:
  push BP
  mov BP, SP
  isub SP, 7
  mov R1, global_t_lead
  mov [SP], R1
  call __function_fill_rest
  mov R1, global_t_bass
  mov [SP], R1
  call __function_fill_rest
  mov R1, global_t_arp
  mov [SP], R1
  call __function_fill_rest
  mov R1, global_t_kick
  mov [SP], R1
  call __function_fill_rest
  mov R1, global_t_hat
  mov [SP], R1
  call __function_fill_rest
  mov R0, 0
  mov [BP-1], R0
__for_5374_start:
  mov R0, [BP-1]
  ilt R0, 4
  jf R0, __for_5374_end
  mov R0, [BP-1]
  imul R0, 8
  mov [BP-2], R0
  mov R0, 0
  mov [BP-3], R0
__for_5389_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_5389_end
__if_5399_start:
  mov R0, [BP-3]
  and R0, 1
  ieq R0, 0
  jf R0, __if_5399_else
  mov R0, global_chord_root
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_bass
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
  jmp __if_5399_end
__if_5399_else:
  mov R0, 0
  mov R1, global_t_bass
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
__if_5399_end:
__for_5389_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_5389_start
__for_5389_end:
  mov R0, 0
  mov [BP-3], R0
__for_5422_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_5422_end
  mov R0, [BP-3]
  imod R0, 3
  mov [BP-4], R0
__if_5437_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_5437_else
  mov R0, global_arp0
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_arp
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
  jmp __if_5437_end
__if_5437_else:
__if_5450_start:
  mov R0, [BP-4]
  ieq R0, 1
  jf R0, __if_5450_else
  mov R0, global_arp1
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_arp
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
  jmp __if_5450_end
__if_5450_else:
  mov R0, global_arp2
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_arp
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
__if_5450_end:
__if_5437_end:
__for_5422_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_5422_start
__for_5422_end:
  mov R0, 36
  mov R1, global_t_kick
  mov R2, [BP-2]
  iadd R2, 0
  iadd R1, R2
  mov [R1], R0
  mov R0, 36
  mov R1, global_t_kick
  mov R2, [BP-2]
  iadd R2, 4
  iadd R1, R2
  mov [R1], R0
  mov R0, 72
  mov R1, global_t_hat
  mov R2, [BP-2]
  iadd R2, 2
  iadd R1, R2
  mov [R1], R0
  mov R0, 72
  mov R1, global_t_hat
  mov R2, [BP-2]
  iadd R2, 6
  iadd R1, R2
  mov [R1], R0
__for_5374_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5374_start
__for_5374_end:
  mov R0, 0
  mov [BP-1], R0
__for_5500_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_5500_end
  mov R0, global_lead_line
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_lead
  mov R2, [BP-1]
  imul R2, 2
  iadd R1, R2
  mov [R1], R0
__for_5500_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5500_start
__for_5500_end:
  mov R0, 5
  mov [3578], R0
  mov R0, 32
  mov [3579], R0
  mov R0, 8
  mov [3580], R0
  mov R0, 1
  mov [3581], R0
  mov R0, 0
  mov [3582], R0
  mov R0, 1
  mov [3583], R0
  mov R2, 1
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [global_song], R1
  mov R0, R1
  mov R0, global_t_lead
  mov [3539], R0
  mov R0, 0.900000
  mov [3540], R0
  mov R0, 0
  mov [3541], R0
  mov R0, 7
  mov [3542], R0
  mov R2, 8
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3543], R1
  mov R0, R1
  mov R0, global_t_bass
  mov [3544], R0
  mov R0, 1.000000
  mov [3545], R0
  mov R0, 1
  mov [3546], R0
  mov R0, 0
  mov [3547], R0
  mov R2, 10
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3548], R1
  mov R0, R1
  mov R0, global_t_arp
  mov [3549], R0
  mov R0, 0.600000
  mov [3550], R0
  mov R0, 0
  mov [3551], R0
  mov R0, 0
  mov [3552], R0
  mov R2, 28
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3553], R1
  mov R0, R1
  mov R0, global_t_kick
  mov [3554], R0
  mov R0, 1.000000
  mov [3555], R0
  mov R0, 0
  mov [3556], R0
  mov R0, 0
  mov [3557], R0
  mov R2, 30
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3558], R1
  mov R0, R1
  mov R0, global_t_hat
  mov [3559], R0
  mov R0, 0.500000
  mov [3560], R0
  mov R0, 0
  mov [3561], R0
  mov R0, 0
  mov [3562], R0
  mov R2, 8
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [BP-5], R1
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, 3
  mov [SP+1], R1
  call __function_synth_set_glide
__function_setup_song_return:
  mov SP, BP
  pop BP
  ret

__function_wave_shape:
  push BP
  mov BP, SP
  isub SP, 2
  push R1
  push R2
  push R3
  isub SP, 1
  mov R1, [BP+3]
  mov R3, [BP+3]
  mov [SP], R3
  call __function_floor
  mov R2, R0
  fsub R1, R2
  mov R0, R1
  mov [BP-1], R0
__if_5735_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_5735_end
  mov R1, [BP-1]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_wave_shape_return
__if_5735_end:
__if_5744_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_5744_end
  mov R2, [BP-1]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_wave_shape_return
__if_5744_end:
__if_5757_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_5757_end
  mov R0, [BP-1]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_wave_shape_return
__if_5757_end:
__if_5767_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_5767_end
__if_5772_start:
  mov R0, [BP-1]
  flt R0, 0.500000
  jf R0, __if_5772_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5772_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5767_end:
__if_5781_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_5781_end
__if_5786_start:
  mov R0, [BP-1]
  flt R0, 0.250000
  jf R0, __if_5786_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5786_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5781_end:
__if_5795_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_5795_end
__if_5800_start:
  mov R0, [BP-1]
  flt R0, 0.125000
  jf R0, __if_5800_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5800_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5795_end:
  mov R2, [BP-1]
  fmul R2, 127.099998
  mov R3, [BP+3]
  fmul R3, 13.000000
  fadd R2, R3
  mov [SP], R2
  call __function_sin
  mov R1, R0
  fmul R1, 43758.500000
  mov R0, R1
  mov [BP-2], R0
  mov R1, [BP-2]
  mov R3, [BP-2]
  mov [SP], R3
  call __function_floor
  mov R2, R0
  fsub R1, R2
  fmul R1, 2.000000
  fsub R1, 1.000000
  mov R0, R1
__function_wave_shape_return:
  iadd SP, 1
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_draw_scope:
  push BP
  mov BP, SP
  isub SP, 18
  mov R1, -13617088
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 20
  mov [SP], R1
  mov R1, 30
  mov [SP+1], R1
  mov R1, 620
  mov [SP+2], R1
  mov R1, 170
  mov [SP+3], R1
  call __function_draw_filled_rectangle
  mov R1, -14663640
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 24
  mov [SP], R1
  mov R1, 100
  mov [SP+1], R1
  mov R1, 616
  mov [SP+2], R1
  call __function_draw_horizontal_line
  mov R0, 0.020000
  mov [BP-1], R0
  mov R0, [global_frame_count]
  cif R0
  mov R1, [BP-1]
  fmul R0, R1
  mov [BP-2], R0
  mov R0, 4.000000
  mov [BP-3], R0
  mov R0, 24
  mov [BP-4], R0
  mov R0, 100
  mov [BP-5], R0
  mov R0, 0
  mov [BP-6], R0
  mov R1, -16711936
  mov [SP], R1
  call __function_set_multiply_color
  mov R0, 0
  mov [BP-7], R0
__for_5885_start:
  mov R0, [BP-7]
  ile R0, 148
  jf R0, __for_5885_end
  mov R0, [BP-7]
  cif R0
  fdiv R0, 148.000000
  mov [BP-8], R0
  mov R0, [BP-2]
  mov R1, [BP-8]
  mov R2, [BP-1]
  fmul R1, R2
  fadd R0, R1
  mov [BP-9], R0
  mov R0, 0.000000
  mov [BP-10], R0
  mov R0, 0
  mov [BP-13], R0
__for_5911_start:
  mov R0, [BP-13]
  ilt R0, 16
  jf R0, __for_5911_end
__if_5921_start:
  mov R0, global_synth_v_active
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_5921_end
  jmp __for_5911_continue
__if_5921_end:
__if_5927_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  fle R0, 0.000000
  jf R0, __if_5927_end
  jmp __for_5911_continue
__if_5927_end:
  mov R0, global_synth_v_freq
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-9]
  fmul R0, R1
  mov [BP-14], R0
  mov R1, [BP-10]
  mov R2, global_synth_v_amp
  mov R3, [BP-13]
  iadd R2, R3
  mov R2, [R2]
  mov R5, global_synth_v_inst
  mov R6, [BP-13]
  iadd R5, R6
  mov R5, [R5]
  mov R4, [R5]
  mov [SP], R4
  mov R4, [BP-14]
  mov [SP+1], R4
  call __function_wave_shape
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-10], R1
  mov R0, R1
__for_5911_continue:
  mov R0, [BP-13]
  iadd R0, 1
  mov [BP-13], R0
  jmp __for_5911_start
__for_5911_end:
  mov R0, [BP-10]
  fmul R0, 64.000000
  fmul R0, 1.600000
  cfi R0
  isgn R0
  iadd R0, 100
  mov [BP-11], R0
__if_5964_start:
  mov R0, [BP-11]
  ilt R0, 36
  jf R0, __if_5964_end
  mov R0, 36
  mov [BP-11], R0
__if_5964_end:
__if_5975_start:
  mov R0, [BP-11]
  igt R0, 164
  jf R0, __if_5975_end
  mov R0, 164
  mov [BP-11], R0
__if_5975_end:
  mov R0, [BP-7]
  cif R0
  mov R1, [BP-3]
  fmul R0, R1
  cfi R0
  iadd R0, 24
  mov [BP-12], R0
__if_5995_start:
  mov R0, [BP-6]
  cib R0
  jf R0, __if_5995_end
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  mov R1, [BP-12]
  mov [SP+2], R1
  mov R1, [BP-11]
  mov [SP+3], R1
  call __function_draw_line
__if_5995_end:
  mov R0, [BP-12]
  mov [BP-4], R0
  mov R0, [BP-11]
  mov [BP-5], R0
  mov R0, 1
  mov [BP-6], R0
__for_5885_continue:
  mov R0, [BP-7]
  iadd R0, 1
  mov [BP-7], R0
  jmp __for_5885_start
__for_5885_end:
__function_draw_scope_return:
  mov SP, BP
  pop BP
  ret

__function_is_black:
  push BP
  mov BP, SP
  push R1
__if_6013_start:
  mov R0, [BP+2]
  ieq R0, 1
  jt R0, __LogicalOr_ShortCircuit_6018
  mov R1, [BP+2]
  ieq R1, 3
  or R0, R1
__LogicalOr_ShortCircuit_6018:
  jt R0, __LogicalOr_ShortCircuit_6022
  mov R1, [BP+2]
  ieq R1, 6
  or R0, R1
__LogicalOr_ShortCircuit_6022:
  jt R0, __LogicalOr_ShortCircuit_6026
  mov R1, [BP+2]
  ieq R1, 8
  or R0, R1
__LogicalOr_ShortCircuit_6026:
  jt R0, __LogicalOr_ShortCircuit_6030
  mov R1, [BP+2]
  ieq R1, 10
  or R0, R1
__LogicalOr_ShortCircuit_6030:
  jf R0, __if_6013_end
  mov R0, 1
  jmp __function_is_black_return
__if_6013_end:
  mov R0, 0
__function_is_black_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_white_index:
  push BP
  mov BP, SP
__if_6039_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_6039_end
  mov R0, 0
  jmp __function_white_index_return
__if_6039_end:
__if_6045_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_6045_end
  mov R0, 1
  jmp __function_white_index_return
__if_6045_end:
__if_6051_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_6051_end
  mov R0, 2
  jmp __function_white_index_return
__if_6051_end:
__if_6057_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_6057_end
  mov R0, 3
  jmp __function_white_index_return
__if_6057_end:
__if_6063_start:
  mov R0, [BP+2]
  ieq R0, 7
  jf R0, __if_6063_end
  mov R0, 4
  jmp __function_white_index_return
__if_6063_end:
__if_6069_start:
  mov R0, [BP+2]
  ieq R0, 9
  jf R0, __if_6069_end
  mov R0, 5
  jmp __function_white_index_return
__if_6069_end:
__if_6075_start:
  mov R0, [BP+2]
  ieq R0, 11
  jf R0, __if_6075_end
  mov R0, 6
  jmp __function_white_index_return
__if_6075_end:
  mov R0, -1
__function_white_index_return:
  mov SP, BP
  pop BP
  ret

__function_compute_note_levels:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov [BP-1], R0
__for_6088_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_6088_end
  mov R0, 0.000000
  mov R1, global_note_level
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_6088_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6088_start
__for_6088_end:
  mov R0, 0
  mov [BP-1], R0
__for_6102_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_6102_end
__if_6111_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_6111_end
  mov R0, global_synth_v_note
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_6121_start:
  mov R0, [BP-2]
  ige R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6126
  mov R1, [BP-2]
  ilt R1, 128
  and R0, R1
__LogicalAnd_ShortCircuit_6126:
  jf R0, __if_6121_end
__if_6129_start:
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov R1, [R1]
  fgt R0, R1
  jf R0, __if_6129_end
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__if_6129_end:
__if_6121_end:
__if_6111_end:
__for_6102_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6102_start
__for_6102_end:
__function_compute_note_levels_return:
  mov SP, BP
  pop BP
  ret

__function_draw_key_lit:
  push BP
  mov BP, SP
  isub SP, 6
__if_6151_start:
  mov R0, [BP+7]
  fle R0, 0.020000
  jf R0, __if_6151_end
  mov R1, [BP+6]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP+5]
  mov [SP+3], R1
  call __function_draw_filled_rectangle
  jmp __function_draw_key_lit_return
__if_6151_end:
  mov R0, [BP+7]
  fmul R0, 127.000000
  cfi R0
  iadd R0, 128
  mov [BP-1], R0
__if_6173_start:
  mov R0, [BP-1]
  igt R0, 255
  jf R0, __if_6173_end
  mov R0, 255
  mov [BP-1], R0
__if_6173_end:
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, [BP+7]
  fmul R2, 120.000000
  cfi R2
  iadd R2, 60
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  mov R1, [BP+4]
  mov [SP+2], R1
  mov R1, [BP+5]
  mov [SP+3], R1
  call __function_draw_filled_rectangle
__function_draw_key_lit_return:
  mov SP, BP
  pop BP
  ret

__function_draw_keyboard:
  push BP
  mov BP, SP
  isub SP, 15
  mov R0, 0
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_6200_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_6200_end
  mov R0, 0
  mov [BP-3], R0
__for_6209_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_6209_end
__if_6219_start:
  mov R1, [BP-3]
  mov [SP], R1
  call __function_is_black
  cib R0
  jf R0, __if_6219_end
  jmp __for_6209_continue
__if_6219_end:
  mov R0, [BP-2]
  imul R0, 12
  iadd R0, 48
  mov R1, [BP-3]
  iadd R0, R1
  mov [BP-4], R0
  mov R0, [BP-1]
  imul R0, 40
  iadd R0, 40
  mov [BP-5], R0
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, 196
  mov [SP+1], R1
  mov R1, [BP-5]
  iadd R1, 40
  isub R1, 2
  mov [SP+2], R1
  mov R1, 280
  mov [SP+3], R1
  mov R1, -2039584
  mov [SP+4], R1
  mov R1, global_note_level
  mov R2, [BP-4]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+5], R1
  call __function_draw_key_lit
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
__for_6209_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_6209_start
__for_6209_end:
__for_6200_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_6200_start
__for_6200_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_6260_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_6260_end
  mov R0, 0
  mov [BP-3], R0
__for_6269_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_6269_end
  mov R1, [BP-3]
  mov [SP], R1
  call __function_white_index
  mov [BP-4], R0
__if_6283_start:
  mov R0, [BP-4]
  ige R0, 0
  jf R0, __if_6283_end
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6269_continue
__if_6283_end:
  mov R0, [BP-2]
  imul R0, 12
  iadd R0, 48
  mov R1, [BP-3]
  iadd R0, R1
  mov [BP-5], R0
  mov R0, [BP-1]
  imul R0, 40
  iadd R0, 40
  mov [BP-6], R0
  mov R0, [BP-6]
  isub R0, 13
  mov [BP-7], R0
  mov R0, global_note_level
  mov R1, [BP-5]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
__if_6320_start:
  mov R0, [BP-8]
  fgt R0, 0.020000
  jf R0, __if_6320_else
  mov R2, [BP-8]
  fmul R2, 200.000000
  cfi R2
  iadd R2, 40
  mov [SP], R2
  mov R2, 255
  mov [SP+1], R2
  mov R2, 40
  mov [SP+2], R2
  call __function_make_color_rgb
  mov R1, R0
  mov [BP-9], R1
  mov R1, [BP-9]
  mov [SP], R1
  call __function_set_multiply_color
  jmp __if_6320_end
__if_6320_else:
  mov R1, -14671840
  mov [SP], R1
  call __function_set_multiply_color
__if_6320_end:
  mov R1, [BP-7]
  mov [SP], R1
  mov R1, 196
  mov [SP+1], R1
  mov R1, [BP-7]
  iadd R1, 26
  mov [SP+2], R1
  mov R1, 246
  mov [SP+3], R1
  call __function_draw_filled_rectangle
__for_6269_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_6269_start
__for_6269_end:
__for_6260_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_6260_start
__for_6260_end:
__function_draw_keyboard_return:
  mov SP, BP
  pop BP
  ret

__function_phase_color:
  push BP
  mov BP, SP
__if_6358_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_6358_end
  mov R0, -16711936
  jmp __function_phase_color_return
__if_6358_end:
__if_6364_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_6364_end
  mov R0, -256
  jmp __function_phase_color_return
__if_6364_end:
__if_6370_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_6370_end
  mov R0, -12533505
  jmp __function_phase_color_return
__if_6370_end:
__if_6376_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_6376_end
  mov R0, -16744193
  jmp __function_phase_color_return
__if_6376_end:
  mov R0, -13619152
__function_phase_color_return:
  mov SP, BP
  pop BP
  ret

__function_draw_meters:
  push BP
  mov BP, SP
  isub SP, 9
  mov R0, 0
  mov [BP-1], R0
__for_6385_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_6385_end
  mov R0, [BP-1]
  imul R0, 36
  iadd R0, 40
  mov [BP-2], R0
  mov R0, [BP-2]
  iadd R0, 30
  mov [BP-3], R0
  mov R1, -15198184
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, 284
  mov [SP+1], R1
  mov R1, [BP-3]
  mov [SP+2], R1
  mov R1, 340
  mov [SP+3], R1
  call __function_draw_filled_rectangle
__if_6419_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_6419_end
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  fmul R0, 56.000000
  cfi R0
  mov [BP-4], R0
  mov R2, global_synth_v_phase
  mov R3, [BP-1]
  iadd R2, R3
  mov R2, [R2]
  mov [SP], R2
  call __function_phase_color
  mov R1, R0
  mov [BP-5], R1
  mov R1, [BP-5]
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-4]
  isgn R1
  iadd R1, 340
  mov [SP+1], R1
  mov R1, [BP-3]
  mov [SP+2], R1
  mov R1, 340
  mov [SP+3], R1
  call __function_draw_filled_rectangle
__if_6419_end:
__for_6385_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6385_start
__for_6385_end:
__function_draw_meters_return:
  mov SP, BP
  pop BP
  ret

__function_draw_hud:
  push BP
  mov BP, SP
  isub SP, 4
  mov R1, -1
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 24
  mov [SP], R1
  mov R1, 10
  mov [SP+1], R1
  mov R1, global_hud_title
  mov [SP+2], R1
  call __function_print_at
  mov R1, -4144960
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 360
  mov [SP], R1
  mov R1, 10
  mov [SP+1], R1
  mov R1, global_hud_preset
  mov [SP+2], R1
  call __function_print_at
  mov R1, -16711681
  mov [SP], R1
  call __function_set_multiply_color
  mov R2, [global_manual_preset]
  mov [SP], R2
  call __function_synth_preset_get_name
  mov R1, R0
  mov [BP-1], R1
  mov R1, 430
  mov [SP], R1
  mov R1, 10
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_print_at
  mov R1, -8355712
  mov [SP], R1
  call __function_set_multiply_color
  mov R1, 24
  mov [SP], R1
  mov R1, 300
  mov [SP+1], R1
  mov R1, global_hud_keys
  mov [SP+2], R1
  call __function_print_at
__function_draw_hud_return:
  mov SP, BP
  pop BP
  ret

__function_handle_manual_note:
  push BP
  mov BP, SP
  isub SP, 6
  mov R0, global_btn_prev
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_6491_start:
  mov R0, [BP+3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6496
  mov R1, [BP-1]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6496:
  jf R0, __if_6491_else
__if_6500_start:
  mov R0, [global_manual_preset]
  ieq R0, 38
  jf R0, __if_6500_else
  mov R2, [global_manual_preset]
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, global_scale_notes
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  mov [SP+1], R1
  mov R1, 1.000000
  mov [SP+2], R1
  mov R1, 10
  mov [SP+3], R1
  call __function_synth_note_echo
  mov R0, -1
  mov R1, global_btn_voice
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_6500_end
__if_6500_else:
  mov R3, [global_manual_preset]
  mov [SP], R3
  call __function_synth_preset
  mov R2, R0
  mov [BP-2], R2
  mov R2, [BP-2]
  mov [SP], R2
  mov R2, global_scale_notes
  mov R3, [BP+2]
  iadd R2, R3
  mov R2, [R2]
  mov [SP+1], R2
  mov R2, 1.000000
  mov [SP+2], R2
  call __function_synth_note_on
  mov R1, R0
  mov R2, global_btn_voice
  mov R3, [BP+2]
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
__if_6500_end:
  jmp __if_6491_end
__if_6491_else:
__if_6530_start:
  mov R0, [BP+3]
  ile R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6535
  mov R1, [BP-1]
  igt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6535:
  jf R0, __if_6530_end
__if_6539_start:
  mov R0, global_btn_voice
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_6539_end
  mov R1, global_btn_voice
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_btn_voice
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_6539_end:
__if_6530_end:
__if_6491_end:
  mov R0, [BP+3]
  mov R1, global_btn_prev
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__function_handle_manual_note_return:
  mov SP, BP
  pop BP
  ret

__function_handle_input:
  push BP
  mov BP, SP
  isub SP, 7
  mov R1, 0
  mov [SP], R1
  call __function_select_gamepad
  call __function_gamepad_button_a
  mov R1, R0
  mov [BP-5], R1
  mov R1, 0
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  call __function_gamepad_button_b
  mov R1, R0
  mov [BP-5], R1
  mov R1, 1
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  call __function_gamepad_button_x
  mov R1, R0
  mov [BP-5], R1
  mov R1, 2
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  call __function_gamepad_button_y
  mov R1, R0
  mov [BP-5], R1
  mov R1, 3
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  call __function_gamepad_button_l
  mov R1, R0
  mov [BP-5], R1
  mov R1, 4
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  call __function_gamepad_button_r
  mov R1, R0
  mov [BP-5], R1
  mov R1, 5
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_handle_manual_note
  mov R0, 0
  mov [BP-1], R0
__if_6591_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6591_end
  mov R0, 1
  mov [BP-1], R0
__if_6591_end:
__if_6598_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6598_end
  mov R0, -1
  mov [BP-1], R0
__if_6598_end:
__if_6606_start:
  mov R0, [BP-1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6611
  mov R1, [global_updown_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6611:
  jf R0, __if_6606_end
  mov R0, [global_manual_preset]
  mov R1, [BP-1]
  iadd R0, R1
  mov [global_manual_preset], R0
__if_6618_start:
  mov R0, [global_manual_preset]
  ilt R0, 0
  jf R0, __if_6618_end
  mov R0, 39
  mov [global_manual_preset], R0
__if_6618_end:
__if_6627_start:
  mov R0, [global_manual_preset]
  ige R0, 40
  jf R0, __if_6627_end
  mov R0, 0
  mov [global_manual_preset], R0
__if_6627_end:
__if_6606_end:
  mov R0, [BP-1]
  mov [global_updown_prev], R0
  mov R0, 0
  mov [BP-2], R0
__if_6640_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6640_end
  mov R0, -1
  mov [BP-2], R0
__if_6640_end:
__if_6648_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6648_end
  mov R0, 1
  mov [BP-2], R0
__if_6648_end:
__if_6655_start:
  mov R0, [BP-2]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6660
  mov R1, [global_leftright_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6660:
  jf R0, __if_6655_end
  mov R0, [3580]
  mov R1, [BP-2]
  isub R0, R1
  mov [BP-4], R0
__if_6670_start:
  mov R0, [BP-4]
  ilt R0, 3
  jf R0, __if_6670_end
  mov R0, 3
  mov [BP-4], R0
__if_6670_end:
__if_6677_start:
  mov R0, [BP-4]
  igt R0, 20
  jf R0, __if_6677_end
  mov R0, 20
  mov [BP-4], R0
__if_6677_end:
  mov R0, [BP-4]
  mov [3580], R0
__if_6655_end:
  mov R0, [BP-2]
  mov [global_leftright_prev], R0
  call __function_gamepad_button_start
  mov [BP-3], R0
__if_6694_start:
  mov R0, [BP-3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6699
  mov R1, [global_start_prev]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6699:
  jf R0, __if_6694_end
__if_6703_start:
  mov R0, [global_synth_seq_playing]
  cib R0
  jf R0, __if_6703_else
  call __function_synth_seq_stop
  jmp __if_6703_end
__if_6703_else:
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__if_6703_end:
__if_6694_end:
  mov R0, [BP-3]
  mov [global_start_prev], R0
__function_handle_input_return:
  mov SP, BP
  pop BP
  ret

__function_main:
  push BP
  mov BP, SP
  isub SP, 2
  mov R1, 0
  mov [SP], R1
  call __function_synth_init
  call __function_synth_load_presets
  call __function_setup_song
  mov R0, 0
  mov [global_manual_preset], R0
  mov R0, 0
  mov [BP-1], R0
__for_6720_start:
  mov R0, [BP-1]
  ilt R0, 6
  jf R0, __for_6720_end
  mov R0, 0
  mov R1, global_btn_prev
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R0, -1
  mov R1, global_btn_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_6720_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6720_start
__for_6720_end:
  mov R0, 0
  mov [global_frame_count], R0
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__while_6747_start:
__while_6747_continue:
  mov R0, 1
  jf R0, __while_6747_end
  call __function_handle_input
  call __function_synth_seq_update
  call __function_synth_update
  call __function_compute_note_levels
  mov R1, -15724524
  mov [SP], R1
  call __function_clear_screen
  call __function_draw_scope
  call __function_draw_keyboard
  call __function_draw_meters
  call __function_draw_hud
  mov R0, [global_frame_count]
  iadd R0, 1
  mov [global_frame_count], R0
  call __function_end_frame
  jmp __while_6747_start
__while_6747_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

__literal_string_3799:
  string "SQ LEAD"
__literal_string_3800:
  string "PLS LEAD"
__literal_string_3801:
  string "SAW LEAD"
__literal_string_3802:
  string "SINE LEAD"
__literal_string_3803:
  string "CHIP LEAD"
__literal_string_3804:
  string "SUB BASS"
__literal_string_3805:
  string "TRI BASS"
__literal_string_3806:
  string "SQ BASS"
__literal_string_3807:
  string "SAW BASS"
__literal_string_3808:
  string "PLUCK BASS"
__literal_string_3809:
  string "SQ PLUCK"
__literal_string_3810:
  string "SAW PLUCK"
__literal_string_3811:
  string "E-PIANO"
__literal_string_3812:
  string "HARP"
__literal_string_3813:
  string "MARIMBA"
__literal_string_3814:
  string "SAW PAD"
__literal_string_3815:
  string "SQ PAD"
__literal_string_3816:
  string "WARM PAD"
__literal_string_3817:
  string "STRINGS"
__literal_string_3818:
  string "ORGAN"
__literal_string_3819:
  string "SOFT ORGAN"
__literal_string_3820:
  string "BRASS"
__literal_string_3821:
  string "BELL"
__literal_string_3822:
  string "CHIME"
__literal_string_3823:
  string "ZAP"
__literal_string_3824:
  string "LASER"
__literal_string_3825:
  string "SIREN"
__literal_string_3826:
  string "DROP"
__literal_string_3827:
  string "KICK"
__literal_string_3828:
  string "SNARE"
__literal_string_3829:
  string "CL HAT"
__literal_string_3830:
  string "OP HAT"
__literal_string_3831:
  string "TOM"
__literal_string_3832:
  string "CLAP"
__literal_string_3833:
  string "COWBELL"
__literal_string_3834:
  string "MAJ ARP"
__literal_string_3835:
  string "MIN ARP"
__literal_string_3836:
  string "WOBBLE"
__literal_string_3837:
  string "ECHO PLUCK"
__literal_string_3838:
  string "PWM LEAD"
__literal_string_6448:
  string "VIRCON32 SYNTHESIZER"
__literal_string_6452:
  string "PRESET:"
__literal_string_6456:
  string "A B X Y L R = PLAY   UP/DN = PRESET   START = SONG"
