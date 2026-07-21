; program start section
  call __global_scope_initialization
  call __function_main
  hlt

; location of global variables
  %define global_synth_wave_base 0
  %define global_synth_channel_base 1
  %define global_synth_master 2
  %define global_synth_transpose 3
  %define global_synth_cur_row_frames 4
  %define global_synth_rng 5
  %define global_synth_note_speed 6
  %define global_synth_note_freq 134
  %define global_synth_v_active 262
  %define global_synth_v_note 278
  %define global_synth_v_basenote 294
  %define global_synth_v_phase 310
  %define global_synth_v_level 326
  %define global_synth_v_frames 342
  %define global_synth_v_age 358
  %define global_synth_v_relstart 374
  %define global_synth_v_curspeed 390
  %define global_synth_v_tgtspeed 406
  %define global_synth_v_glideframes 422
  %define global_synth_v_vibphase 438
  %define global_synth_v_tremphase 454
  %define global_synth_v_lfophase 470
  %define global_synth_v_shval 486
  %define global_synth_v_shseed 502
  %define global_synth_v_menvstage 518
  %define global_synth_v_menvframes 534
  %define global_synth_v_arpstep 550
  %define global_synth_v_arptimer 566
  %define global_synth_v_morphpos 582
  %define global_synth_v_bend 598
  %define global_synth_v_vel 614
  %define global_synth_v_freq 630
  %define global_synth_v_amp 646
  %define global_synth_v_timer 662
  %define global_synth_v_inst 678
  %define global_synth_ev_active 694
  %define global_synth_ev_timer 758
  %define global_synth_ev_note 822
  %define global_synth_ev_vel 886
  %define global_synth_ev_dur 950
  %define global_synth_ev_inst 1014
  %define global_synth_echo_taps 1078
  %define global_synth_echo_delay 1079
  %define global_synth_echo_feedback 1080
  %define global_synth_preset_bank 1081
  %define global_synth_preset_name 2681
  %define global_synth_arp_maj 3321
  %define global_synth_arp_min 3324
  %define global_synth_chord_iv 3327
  %define global_synth_seq_song 3367
  %define global_synth_seq_row 3368
  %define global_synth_seq_timer 3369
  %define global_synth_seq_playing 3370
  %define global_synth_seq_voice 3371
  %define global_t_lead 3379
  %define global_t_bass 3411
  %define global_t_arp 3443
  %define global_t_kick 3475
  %define global_t_hat 3507
  %define global_song 3539
  %define global_chord_root 3585
  %define global_arp0 3589
  %define global_arp1 3593
  %define global_arp2 3597
  %define global_lead_line 3601
  %define global_scale_notes 3617
  %define global_btn_prev 3623
  %define global_btn_voice 3629
  %define global_manual_preset 3635
  %define global_frame_count 3636
  %define global_note_level 3637
  %define global_hud_title 3765
  %define global_hud_preset 3797
  %define global_hud_keys 3813
  %define global_updown_prev 3877
  %define global_leftright_prev 3878
  %define global_start_prev 3879

__global_scope_initialization:
  push BP
  mov BP, SP
  mov DR, global_synth_preset_name
  mov SR, __literal_string_3821
  mov CR, 8
  movs
  mov DR, 2697
  mov SR, __literal_string_3822
  mov CR, 9
  movs
  mov DR, 2713
  mov SR, __literal_string_3823
  mov CR, 9
  movs
  mov DR, 2729
  mov SR, __literal_string_3824
  mov CR, 10
  movs
  mov DR, 2745
  mov SR, __literal_string_3825
  mov CR, 10
  movs
  mov DR, 2761
  mov SR, __literal_string_3826
  mov CR, 9
  movs
  mov DR, 2777
  mov SR, __literal_string_3827
  mov CR, 9
  movs
  mov DR, 2793
  mov SR, __literal_string_3828
  mov CR, 8
  movs
  mov DR, 2809
  mov SR, __literal_string_3829
  mov CR, 9
  movs
  mov DR, 2825
  mov SR, __literal_string_3830
  mov CR, 11
  movs
  mov DR, 2841
  mov SR, __literal_string_3831
  mov CR, 9
  movs
  mov DR, 2857
  mov SR, __literal_string_3832
  mov CR, 10
  movs
  mov DR, 2873
  mov SR, __literal_string_3833
  mov CR, 8
  movs
  mov DR, 2889
  mov SR, __literal_string_3834
  mov CR, 5
  movs
  mov DR, 2905
  mov SR, __literal_string_3835
  mov CR, 8
  movs
  mov DR, 2921
  mov SR, __literal_string_3836
  mov CR, 8
  movs
  mov DR, 2937
  mov SR, __literal_string_3837
  mov CR, 7
  movs
  mov DR, 2953
  mov SR, __literal_string_3838
  mov CR, 9
  movs
  mov DR, 2969
  mov SR, __literal_string_3839
  mov CR, 8
  movs
  mov DR, 2985
  mov SR, __literal_string_3840
  mov CR, 6
  movs
  mov DR, 3001
  mov SR, __literal_string_3841
  mov CR, 11
  movs
  mov DR, 3017
  mov SR, __literal_string_3842
  mov CR, 6
  movs
  mov DR, 3033
  mov SR, __literal_string_3843
  mov CR, 5
  movs
  mov DR, 3049
  mov SR, __literal_string_3844
  mov CR, 6
  movs
  mov DR, 3065
  mov SR, __literal_string_3845
  mov CR, 4
  movs
  mov DR, 3081
  mov SR, __literal_string_3846
  mov CR, 6
  movs
  mov DR, 3097
  mov SR, __literal_string_3847
  mov CR, 6
  movs
  mov DR, 3113
  mov SR, __literal_string_3848
  mov CR, 5
  movs
  mov DR, 3129
  mov SR, __literal_string_3849
  mov CR, 5
  movs
  mov DR, 3145
  mov SR, __literal_string_3850
  mov CR, 6
  movs
  mov DR, 3161
  mov SR, __literal_string_3851
  mov CR, 7
  movs
  mov DR, 3177
  mov SR, __literal_string_3852
  mov CR, 7
  movs
  mov DR, 3193
  mov SR, __literal_string_3853
  mov CR, 4
  movs
  mov DR, 3209
  mov SR, __literal_string_3854
  mov CR, 5
  movs
  mov DR, 3225
  mov SR, __literal_string_3855
  mov CR, 8
  movs
  mov DR, 3241
  mov SR, __literal_string_3856
  mov CR, 8
  movs
  mov DR, 3257
  mov SR, __literal_string_3857
  mov CR, 8
  movs
  mov DR, 3273
  mov SR, __literal_string_3858
  mov CR, 7
  movs
  mov DR, 3289
  mov SR, __literal_string_3859
  mov CR, 11
  movs
  mov DR, 3305
  mov SR, __literal_string_3860
  mov CR, 9
  movs
  mov R0, 0
  mov [global_synth_arp_maj], R0
  mov R0, 4
  mov [3322], R0
  mov R0, 7
  mov [3323], R0
  mov R0, 0
  mov [global_synth_arp_min], R0
  mov R0, 3
  mov [3325], R0
  mov R0, 7
  mov [3326], R0
  mov R0, 0
  mov [global_synth_chord_iv], R0
  mov R0, 4
  mov [3328], R0
  mov R0, 7
  mov [3329], R0
  mov R0, -1
  mov [3330], R0
  mov R0, 0
  mov [3331], R0
  mov R0, 3
  mov [3332], R0
  mov R0, 7
  mov [3333], R0
  mov R0, -1
  mov [3334], R0
  mov R0, 0
  mov [3335], R0
  mov R0, 3
  mov [3336], R0
  mov R0, 6
  mov [3337], R0
  mov R0, -1
  mov [3338], R0
  mov R0, 0
  mov [3339], R0
  mov R0, 4
  mov [3340], R0
  mov R0, 8
  mov [3341], R0
  mov R0, -1
  mov [3342], R0
  mov R0, 0
  mov [3343], R0
  mov R0, 4
  mov [3344], R0
  mov R0, 7
  mov [3345], R0
  mov R0, 11
  mov [3346], R0
  mov R0, 0
  mov [3347], R0
  mov R0, 3
  mov [3348], R0
  mov R0, 7
  mov [3349], R0
  mov R0, 10
  mov [3350], R0
  mov R0, 0
  mov [3351], R0
  mov R0, 4
  mov [3352], R0
  mov R0, 7
  mov [3353], R0
  mov R0, 10
  mov [3354], R0
  mov R0, 0
  mov [3355], R0
  mov R0, 5
  mov [3356], R0
  mov R0, 7
  mov [3357], R0
  mov R0, -1
  mov [3358], R0
  mov R0, 0
  mov [3359], R0
  mov R0, 2
  mov [3360], R0
  mov R0, 7
  mov [3361], R0
  mov R0, -1
  mov [3362], R0
  mov R0, 0
  mov [3363], R0
  mov R0, 7
  mov [3364], R0
  mov R0, 12
  mov [3365], R0
  mov R0, -1
  mov [3366], R0
  mov R0, 45
  mov [global_chord_root], R0
  mov R0, 41
  mov [3586], R0
  mov R0, 48
  mov [3587], R0
  mov R0, 43
  mov [3588], R0
  mov R0, 57
  mov [global_arp0], R0
  mov R0, 53
  mov [3590], R0
  mov R0, 60
  mov [3591], R0
  mov R0, 55
  mov [3592], R0
  mov R0, 60
  mov [global_arp1], R0
  mov R0, 57
  mov [3594], R0
  mov R0, 64
  mov [3595], R0
  mov R0, 59
  mov [3596], R0
  mov R0, 64
  mov [global_arp2], R0
  mov R0, 60
  mov [3598], R0
  mov R0, 67
  mov [3599], R0
  mov R0, 62
  mov [3600], R0
  mov R0, 69
  mov [global_lead_line], R0
  mov R0, 72
  mov [3602], R0
  mov R0, 76
  mov [3603], R0
  mov R0, 74
  mov [3604], R0
  mov R0, 72
  mov [3605], R0
  mov R0, 69
  mov [3606], R0
  mov R0, 65
  mov [3607], R0
  mov R0, 67
  mov [3608], R0
  mov R0, 64
  mov [3609], R0
  mov R0, 67
  mov [3610], R0
  mov R0, 72
  mov [3611], R0
  mov R0, 71
  mov [3612], R0
  mov R0, 67
  mov [3613], R0
  mov R0, 62
  mov [3614], R0
  mov R0, 67
  mov [3615], R0
  mov R0, 74
  mov [3616], R0
  mov R0, 60
  mov [global_scale_notes], R0
  mov R0, 64
  mov [3618], R0
  mov R0, 67
  mov [3619], R0
  mov R0, 69
  mov [3620], R0
  mov R0, 72
  mov [3621], R0
  mov R0, 76
  mov [3622], R0
  mov DR, global_hud_title
  mov SR, __literal_string_6470
  mov CR, 21
  movs
  mov DR, global_hud_preset
  mov SR, __literal_string_6474
  mov CR, 8
  movs
  mov DR, global_hud_keys
  mov SR, __literal_string_6478
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

__function_synth_ch:
  push BP
  mov BP, SP
  push R1
  mov R0, [global_synth_channel_base]
  mov R1, [BP+2]
  iadd R0, R1
__function_synth_ch_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_build_tables:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, 0
  mov [BP-1], R0
__for_1580_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_1580_end
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
__for_1580_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1580_start
__for_1580_end:
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
__for_1620_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_1620_end
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_1620_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1620_start
__for_1620_end:
__function_synth_scheduler_clear_return:
  mov SP, BP
  pop BP
  ret

__function_synth_init:
  push BP
  mov BP, SP
  isub SP, 3
  mov R0, [BP+2]
  mov [global_synth_wave_base], R0
  mov R0, 0
  mov [global_synth_channel_base], R0
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
__for_1665_start:
  mov R0, [BP-1]
  ilt R0, 7
  jf R0, __for_1665_end
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [SP], R1
  call __function_select_sound
  mov R1, 1
  mov [SP], R1
  call __function_set_sound_loop
__for_1665_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1665_start
__for_1665_end:
  mov R0, 0
  mov [BP-1], R0
__for_1681_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_1681_end
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
  mov R2, [BP-1]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
  mov [SP], R1
  call __function_stop_channel
__for_1681_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1681_start
__for_1681_end:
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
__if_1758_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1758_end
  mov R0, 0
  mov [BP-1], R0
__if_1758_end:
__if_1765_start:
  mov R0, [BP-1]
  igt R0, 127
  jf R0, __if_1765_end
  mov R0, 127
  mov [BP-1], R0
__if_1765_end:
  mov R0, global_synth_note_speed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_1777_start:
  mov R1, [BP+3]
  iadd R1, 25
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_1777_end
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
__if_1777_end:
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
__if_1796_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_1796_end
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  jmp __function_synth_inst_sound_return
__if_1796_end:
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
__for_1810_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1810_end
__if_1819_start:
  mov R0, global_synth_v_active
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1819_end
  mov R0, [BP-3]
  jmp __function_synth_alloc_voice_return
__if_1819_end:
__for_1810_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1810_start
__for_1810_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, [global_synth_v_amp]
  mov [BP-2], R0
  mov R0, 1
  mov [BP-3], R0
__for_1834_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1834_end
__if_1843_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-2]
  flt R0, R1
  jf R0, __if_1843_end
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP-3]
  mov [BP-1], R0
__if_1843_end:
__for_1834_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1834_start
__for_1834_end:
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
__if_2000_start:
  mov R1, [BP+2]
  iadd R1, 37
  mov R0, [R1]
  ilt R0, 0
  jf R0, __if_2000_end
  jmp __function_synth_morph_reset_return
__if_2000_end:
  mov R1, [BP+2]
  iadd R1, 39
  mov R0, [R1]
  cfi R0
  mov [BP-1], R0
__if_2011_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_2011_end
  mov R0, 0
  mov [BP-1], R0
__if_2011_end:
__if_2018_start:
  mov R0, [BP-1]
  mov R2, [BP+2]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2018_end
  mov R1, [BP+2]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_2018_end:
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
  isub SP, 3
  push R1
  push R2
  isub SP, 5
__if_2049_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_2049_end
  mov R0, 0
  mov [BP+3], R0
__if_2049_end:
__if_2056_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_2056_end
  mov R0, 127
  mov [BP+3], R0
__if_2056_end:
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
  mov R2, [BP+5]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
  mov [SP], R1
  call __function_stop_channel
  mov R2, [BP+2]
  mov [SP], R2
  call __function_synth_inst_sound
  mov R1, R0
  mov [BP-2], R1
  mov R2, [BP+5]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-3], R1
  mov R1, [BP-3]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_assign_channel_sound
  mov R2, [BP+5]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
  mov [SP], R1
  call __function_select_channel
  mov R1, 0.000000
  mov [SP], R1
  call __function_set_channel_volume
  mov R1, [BP-1]
  mov [SP], R1
  call __function_set_channel_speed
  mov R2, [BP+5]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-2], R1
  mov R1, [BP-2]
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
__if_2199_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_2204
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_2204:
  jf R0, __if_2199_end
  jmp __function_synth_note_retrigger_return
__if_2199_end:
__if_2208_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2208_end
  jmp __function_synth_note_retrigger_return
__if_2208_end:
  mov R0, global_synth_v_inst
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_2219_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_2219_end
  mov R0, 0
  mov [BP+3], R0
__if_2219_end:
__if_2226_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_2226_end
  mov R0, 127
  mov [BP+3], R0
__if_2226_end:
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
__if_2260_start:
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2260_else
  mov R1, [BP-1]
  iadd R1, 24
  mov R0, [R1]
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2260_end
__if_2260_else:
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
__if_2260_end:
__function_synth_note_retrigger_return:
  mov SP, BP
  pop BP
  ret

__function_synth_note_off:
  push BP
  mov BP, SP
__if_2284_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_2289
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_2289:
  jf R0, __if_2284_end
  jmp __function_synth_note_off_return
__if_2284_end:
__if_2293_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2293_end
  jmp __function_synth_note_off_return
__if_2293_end:
__if_2299_start:
  mov R0, global_synth_v_phase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 5
  jt R0, __LogicalOr_ShortCircuit_2308
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  ieq R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_2308:
  jf R0, __if_2299_end
  jmp __function_synth_note_off_return
__if_2299_end:
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
  isub SP, 2
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
  mov R2, [BP+2]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-1], R1
  mov R1, [BP-1]
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
__if_2442_start:
  mov R0, global_synth_v_age
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP+3]
  iadd R2, 16
  mov R1, [R2]
  ilt R0, R1
  jf R0, __if_2442_end
  mov R0, 0.000000
  jmp __function_synth_lfo_value_return
__if_2442_end:
__if_2453_start:
  mov R1, [BP+3]
  iadd R1, 18
  mov R0, [R1]
  cib R0
  jf R0, __if_2453_else
  mov R0, [global_synth_cur_row_frames]
  mov [BP-6], R0
__if_2460_start:
  mov R0, [BP-6]
  ilt R0, 1
  jf R0, __if_2460_end
  mov R0, 1
  mov [BP-6], R0
__if_2460_end:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  mov R1, [BP-6]
  cif R1
  fdiv R0, R1
  mov [BP-1], R0
  jmp __if_2453_end
__if_2453_else:
  mov R1, [BP+3]
  iadd R1, 14
  mov R0, [R1]
  fdiv R0, 60.000000
  mov [BP-1], R0
__if_2453_end:
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
__if_2506_start:
  mov R0, [BP-3]
  ieq R0, 0
  jf R0, __if_2506_end
  mov R1, [BP-5]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_synth_lfo_value_return
__if_2506_end:
__if_2515_start:
  mov R0, [BP-3]
  ieq R0, 1
  jf R0, __if_2515_end
  mov R2, [BP-5]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_synth_lfo_value_return
__if_2515_end:
__if_2528_start:
  mov R0, [BP-3]
  ieq R0, 2
  jf R0, __if_2528_end
  mov R0, [BP-5]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2528_end:
__if_2538_start:
  mov R0, [BP-3]
  ieq R0, 3
  jf R0, __if_2538_end
__if_2543_start:
  mov R0, [BP-5]
  flt R0, 0.500000
  jf R0, __if_2543_end
  mov R0, 1.000000
  jmp __function_synth_lfo_value_return
__if_2543_end:
  mov R0, -1.000000
  jmp __function_synth_lfo_value_return
__if_2538_end:
__if_2552_start:
  mov R0, [BP-4]
  cfi R0
  mov R1, [BP-2]
  cfi R1
  ine R0, R1
  jf R0, __if_2552_end
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
__if_2552_end:
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
__if_2585_start:
  mov R1, [BP+3]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 0
  jt R0, __LogicalOr_ShortCircuit_2592
  mov R2, [BP+3]
  iadd R2, 21
  mov R1, [R2]
  feq R1, 0.000000
  or R0, R1
__LogicalOr_ShortCircuit_2592:
  jf R0, __if_2585_end
  mov R0, 0.000000
  jmp __function_synth_step_modenv_return
__if_2585_end:
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
__if_2610_start:
  mov R0, [BP-1]
  ieq R0, 0
  jf R0, __if_2610_else
__if_2615_start:
  mov R1, [BP+3]
  iadd R1, 19
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2615_else
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
  jmp __if_2615_end
__if_2615_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 19
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2642_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2642_else
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
  jmp __if_2642_end
__if_2642_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2642_end:
__if_2615_end:
  jmp __if_2610_end
__if_2610_else:
__if_2665_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2665_end
__if_2670_start:
  mov R1, [BP+3]
  iadd R1, 20
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2670_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2670_end
__if_2670_else:
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
__if_2694_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jf R0, __if_2694_else
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_menvstage
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2694_end
__if_2694_else:
  mov R0, global_synth_v_menvframes
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  iadd R0, 1
  mov R1, global_synth_v_menvframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2694_end:
__if_2670_end:
__if_2665_end:
__if_2610_end:
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
__if_2732_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2732_else
__if_2737_start:
  mov R1, [BP+3]
  iadd R1, 2
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2737_else
  mov R0, 1.000000
  mov [BP-3], R0
  jmp __if_2737_end
__if_2737_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 2
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2737_end:
__if_2752_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2752_end
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2765_start:
  mov R1, [BP+3]
  iadd R1, 3
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2765_else
  mov R0, 2
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2765_end
__if_2765_else:
  mov R0, 3
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2765_end:
__if_2752_end:
  jmp __if_2732_end
__if_2732_else:
__if_2780_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_2780_else
  mov R0, 1.000000
  mov [BP-3], R0
__if_2788_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 3
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2788_end
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
__if_2788_end:
  jmp __if_2780_end
__if_2780_else:
__if_2804_start:
  mov R0, [BP-1]
  ieq R0, 3
  jf R0, __if_2804_else
  mov R0, 0
  mov [BP-4], R0
__if_2812_start:
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2812_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
  jmp __if_2812_end
__if_2812_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-5], R0
__if_2833_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2833_end
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
__if_2833_end:
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
__if_2855_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 4
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2855_end
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
__if_2855_end:
__if_2812_end:
__if_2868_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_2868_end
__if_2871_start:
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  fle R0, 0.001000
  jf R0, __if_2871_else
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2871_end
__if_2871_else:
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
__if_2871_end:
__if_2868_end:
  jmp __if_2804_end
__if_2804_else:
__if_2892_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_2892_else
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  mov [BP-3], R0
  jmp __if_2892_end
__if_2892_else:
__if_2901_start:
  mov R0, [BP-1]
  ieq R0, 5
  jf R0, __if_2901_end
__if_2906_start:
  mov R1, [BP+3]
  iadd R1, 6
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2906_else
  mov R0, 0.000000
  mov [BP-3], R0
  jmp __if_2906_end
__if_2906_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 6
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-4], R0
__if_2922_start:
  mov R1, [BP+3]
  iadd R1, 7
  mov R0, [R1]
  fne R0, 1.000000
  jf R0, __if_2922_end
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
__if_2922_end:
  mov R0, global_synth_v_relstart
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-4]
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-3], R0
__if_2906_end:
__if_2943_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jt R0, __LogicalOr_ShortCircuit_2948
  mov R1, [BP-2]
  mov R3, [BP+3]
  iadd R3, 6
  mov R2, [R3]
  ige R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_2948:
  jf R0, __if_2943_end
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2943_end:
__if_2901_end:
__if_2892_end:
__if_2804_end:
__if_2780_end:
__if_2732_end:
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
__if_2971_start:
  mov R0, global_synth_v_arptimer
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2971_end
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
__if_2971_end:
  mov R1, [BP+3]
  iadd R1, 35
  mov R0, [R1]
  mov [BP-1], R0
__if_2988_start:
  mov R0, [BP-1]
  ilt R0, 1
  jf R0, __if_2988_end
  mov R0, 1
  mov [BP-1], R0
__if_2988_end:
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
__if_3013_start:
  mov R0, [BP-4]
  ilt R0, 0
  jf R0, __if_3013_end
  mov R0, 0
  mov [BP-4], R0
__if_3013_end:
__if_3020_start:
  mov R0, [BP-4]
  igt R0, 127
  jf R0, __if_3020_end
  mov R0, 127
  mov [BP-4], R0
__if_3020_end:
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
__if_3070_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_3070_end
  mov R0, 0
  mov [BP-1], R0
__if_3070_end:
__if_3077_start:
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 38
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_3077_end
  mov R1, [BP+3]
  iadd R1, 38
  mov R0, [R1]
  isub R0, 1
  mov [BP-1], R0
__if_3077_end:
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
  isub SP, 13
  call __function_synth_scheduler_update
  mov R0, 0
  mov [BP-1], R0
__for_3109_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_3109_end
__if_3119_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_3119_end
  jmp __for_3109_continue
__if_3119_end:
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
__if_3135_start:
  mov R0, global_synth_v_phase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3135_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_voice_kill
  jmp __for_3109_continue
__if_3135_end:
__if_3145_start:
  mov R1, [BP-2]
  iadd R1, 26
  mov R0, [R1]
  cib R0
  jf R0, __if_3145_else
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_synth_step_arp
  jmp __if_3145_end
__if_3145_else:
__if_3151_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_3151_end
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
__if_3181_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3181_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3181_end:
__if_3151_end:
__if_3145_end:
  mov R0, 0.000000
  mov [BP-4], R0
__if_3197_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_3204
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  fne R1, 0.000000
  and R0, R1
__LogicalAnd_ShortCircuit_3204:
  jf R0, __if_3197_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_lfo_value
  mov R1, R0
  mov [BP-4], R1
  mov R0, R1
__if_3197_end:
  mov R0, 0.000000
  mov [BP-5], R0
__if_3215_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ine R0, 0
  jf R0, __if_3215_end
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, [BP-2]
  mov [SP+1], R2
  call __function_synth_step_modenv
  mov R1, R0
  mov [BP-5], R1
  mov R0, R1
__if_3215_end:
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
__if_3237_start:
  mov R1, [BP-2]
  iadd R1, 11
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __if_3237_end
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
__if_3237_end:
__if_3274_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 2
  jf R0, __if_3274_end
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
__if_3274_end:
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
__if_3308_start:
  mov R1, [BP-2]
  iadd R1, 23
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_3308_end
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
__if_3308_end:
__if_3321_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_3321_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_3321_end:
__if_3332_start:
  mov R1, [BP-2]
  iadd R1, 8
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_3340
  mov R1, global_synth_v_age
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  mov R3, [BP-2]
  iadd R3, 10
  mov R2, [R3]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_3340:
  jf R0, __if_3332_end
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
__if_3332_end:
__if_3364_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 1
  jf R0, __if_3364_end
  mov R0, [BP-7]
  mov R2, [BP-2]
  iadd R2, 15
  mov R1, [R2]
  mov R2, [BP-4]
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
__if_3364_end:
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-8], R0
__if_3380_start:
  mov R0, [BP-7]
  fne R0, 0.000000
  jf R0, __if_3380_end
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
__if_3380_end:
__if_3393_start:
  mov R1, [BP-2]
  iadd R1, 37
  mov R0, [R1]
  ige R0, 0
  jf R0, __if_3393_end
  mov R1, [BP-2]
  iadd R1, 39
  mov R0, [R1]
  mov [BP-9], R0
__if_3403_start:
  mov R1, [BP-2]
  iadd R1, 17
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_3403_end
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
__if_3403_end:
__if_3419_start:
  mov R1, [BP-2]
  iadd R1, 22
  mov R0, [R1]
  ieq R0, 3
  jf R0, __if_3419_end
  mov R0, [BP-9]
  mov R2, [BP-2]
  iadd R2, 21
  mov R1, [R2]
  mov R2, [BP-5]
  fmul R1, R2
  fadd R0, R1
  mov [BP-9], R0
__if_3419_end:
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, [BP-9]
  mov [SP+2], R1
  call __function_synth_apply_morph
__if_3393_end:
  mov R2, [BP-1]
  mov [SP], R2
  call __function_synth_ch
  mov R1, R0
  mov [BP-10], R1
  mov R1, [BP-10]
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
__if_3451_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_3451_end
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3463_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_3463_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_3463_end:
__if_3451_end:
__for_3109_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3109_start
__for_3109_end:
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
__if_3747_start:
  mov R0, [BP+4]
  ilt R0, 1
  jf R0, __if_3747_end
  mov R0, 1
  mov [BP+4], R0
__if_3747_end:
__if_3754_start:
  mov R0, [BP+4]
  igt R0, 8
  jf R0, __if_3754_end
  mov R0, 8
  mov [BP+4], R0
__if_3754_end:
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
__for_3773_start:
  mov R0, [BP-1]
  mov R1, [BP+4]
  ilt R0, R1
  jf R0, __for_3773_end
  mov R0, [BP+3]
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP+2]
  iadd R1, 27
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_3773_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3773_start
__for_3773_end:
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
  mov R0, 1121
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
  mov R0, 1161
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
  mov R0, 1201
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
  mov R0, 1241
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
  mov R0, 1281
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
  mov R0, 1321
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
  mov R0, 1361
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
  mov R0, 1401
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
  mov R0, 1441
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
  mov R0, 1481
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
  mov R0, 1521
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
  mov R0, 1561
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
  mov R0, 1601
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
  mov R0, 1641
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
  mov R0, 1681
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
  mov R0, 1721
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
  mov R0, 1761
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
  mov R0, 1801
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
  mov R0, 1841
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
  mov R0, 1881
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
  mov R0, 1921
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
  mov R0, 1961
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
  mov R0, 2001
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
  mov R0, 2041
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
  mov R0, 2081
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
  mov R0, 2121
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
  mov R0, 2161
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
  mov R0, 2201
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
  mov R0, 2241
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
  mov R0, 2281
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
  mov R0, 2321
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
  mov R0, 2361
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
  mov R0, 2401
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
  mov R0, 2441
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
  mov R0, 2481
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
  mov R0, 2521
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
  mov R0, 2561
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
  mov R0, 2601
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
  mov R0, 2641
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
__for_4772_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4772_end
__if_4781_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4781_end
  mov R0, [BP-1]
  jmp __function_synth_schedule_alloc_return
__if_4781_end:
__for_4772_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4772_start
__for_4772_end:
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
__if_4800_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_4800_end
  jmp __function_synth_schedule_note_return
__if_4800_end:
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
__for_4836_start:
  mov R0, [BP-1]
  ilt R0, 64
  jf R0, __for_4836_end
__if_4846_start:
  mov R0, global_synth_ev_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4846_end
  jmp __for_4836_continue
__if_4846_end:
__if_4852_start:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ile R0, 0
  jf R0, __if_4852_else
__if_4859_start:
  mov R0, global_synth_ev_dur
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_4859_else
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
  jmp __if_4859_end
__if_4859_else:
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
__if_4859_end:
  mov R0, 0
  mov R1, global_synth_ev_active
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  jmp __if_4852_end
__if_4852_else:
  mov R0, global_synth_ev_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_ev_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_4852_end:
__for_4836_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4836_start
__for_4836_end:
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
__for_4929_start:
  mov R0, [BP-3]
  mov R1, [BP+6]
  ile R0, R1
  jf R0, __for_4929_end
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
__for_4929_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4929_start
__for_4929_end:
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
__for_5024_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_5024_end
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_5024_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5024_start
__for_5024_end:
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
__for_5043_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_5043_end
__if_5052_start:
  mov R0, global_synth_seq_voice
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_5052_end
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
__if_5052_end:
__for_5043_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5043_start
__for_5043_end:
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
__for_5094_start:
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 40
  mov R1, [R2]
  ilt R0, R1
  jf R0, __for_5094_end
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
__if_5118_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_5118_end
  jmp __for_5094_continue
__if_5118_end:
__if_5123_start:
  mov R0, [BP-4]
  ieq R0, -2
  jf R0, __if_5123_end
  jmp __for_5094_continue
__if_5123_end:
  mov R0, global_synth_seq_voice
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
__if_5134_start:
  mov R0, [BP-4]
  ieq R0, -1
  jf R0, __if_5134_end
__if_5140_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_5140_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_5140_end:
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  jmp __for_5094_continue
__if_5134_end:
  mov R0, [BP-4]
  mov R2, [BP-1]
  iadd R2, 44
  mov R1, [R2]
  iadd R0, R1
  mov [BP-6], R0
__if_5159_start:
  mov R1, [BP-3]
  iadd R1, 3
  mov R0, [R1]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_5162
  mov R1, [BP-5]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5162:
  jf R0, __LogicalAnd_ShortCircuit_5169
  mov R1, global_synth_v_active
  mov R2, [BP-5]
  iadd R1, R2
  mov R1, [R1]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_5169:
  jf R0, __if_5159_end
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [BP-6]
  mov [SP+1], R1
  call __function_synth_note_retrigger
__if_5174_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_5174_end
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  mov R1, global_synth_v_timer
  mov R2, [BP-5]
  iadd R1, R2
  mov [R1], R0
__if_5174_end:
  jmp __for_5094_continue
__if_5159_end:
__if_5186_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_5186_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_5186_end:
__if_5194_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_5194_else
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
  jmp __if_5194_end
__if_5194_else:
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
__if_5194_end:
  mov R0, [BP-7]
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__for_5094_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_5094_start
__for_5094_end:
__function_synth_seq_trigger_row_return:
  mov SP, BP
  pop BP
  ret

__function_synth_seq_update:
  push BP
  mov BP, SP
  isub SP, 2
__if_5223_start:
  mov R0, [global_synth_seq_playing]
  bnot R0
  jf R0, __if_5223_end
  jmp __function_synth_seq_update_return
__if_5223_end:
  mov R0, [global_synth_seq_song]
  mov [BP-1], R0
__if_5230_start:
  mov R0, [global_synth_seq_timer]
  ile R0, 0
  jf R0, __if_5230_end
  call __function_synth_seq_trigger_row
  mov R1, [BP-1]
  iadd R1, 42
  mov R0, [R1]
  mov [BP-2], R0
__if_5240_start:
  mov R1, [BP-1]
  iadd R1, 45
  mov R0, [R1]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5249
  mov R1, [global_synth_seq_row]
  and R1, 1
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_5249:
  jf R0, __if_5240_end
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 45
  mov R1, [R2]
  iadd R0, R1
  mov [BP-2], R0
__if_5240_end:
  mov R0, [BP-2]
  mov [global_synth_seq_timer], R0
  mov R0, [global_synth_seq_row]
  iadd R0, 1
  mov [global_synth_seq_row], R0
__if_5260_start:
  mov R0, [global_synth_seq_row]
  mov R2, [BP-1]
  iadd R2, 41
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_5260_end
__if_5266_start:
  mov R1, [BP-1]
  iadd R1, 43
  mov R0, [R1]
  cib R0
  jf R0, __if_5266_else
  mov R0, 0
  mov [global_synth_seq_row], R0
  jmp __if_5266_end
__if_5266_else:
  call __function_synth_seq_stop
__if_5266_end:
__if_5260_end:
__if_5230_end:
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
__for_5370_start:
  mov R0, [BP-1]
  ilt R0, 32
  jf R0, __for_5370_end
  mov R0, -2
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_5370_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5370_start
__for_5370_end:
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
__for_5396_start:
  mov R0, [BP-1]
  ilt R0, 4
  jf R0, __for_5396_end
  mov R0, [BP-1]
  imul R0, 8
  mov [BP-2], R0
  mov R0, 0
  mov [BP-3], R0
__for_5411_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_5411_end
__if_5421_start:
  mov R0, [BP-3]
  and R0, 1
  ieq R0, 0
  jf R0, __if_5421_else
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
  jmp __if_5421_end
__if_5421_else:
  mov R0, 0
  mov R1, global_t_bass
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
__if_5421_end:
__for_5411_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_5411_start
__for_5411_end:
  mov R0, 0
  mov [BP-3], R0
__for_5444_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_5444_end
  mov R0, [BP-3]
  imod R0, 3
  mov [BP-4], R0
__if_5459_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_5459_else
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
  jmp __if_5459_end
__if_5459_else:
__if_5472_start:
  mov R0, [BP-4]
  ieq R0, 1
  jf R0, __if_5472_else
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
  jmp __if_5472_end
__if_5472_else:
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
__if_5472_end:
__if_5459_end:
__for_5444_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_5444_start
__for_5444_end:
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
__for_5396_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5396_start
__for_5396_end:
  mov R0, 0
  mov [BP-1], R0
__for_5522_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_5522_end
  mov R0, global_lead_line
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_lead
  mov R2, [BP-1]
  imul R2, 2
  iadd R1, R2
  mov [R1], R0
__for_5522_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5522_start
__for_5522_end:
  mov R0, 5
  mov [3579], R0
  mov R0, 32
  mov [3580], R0
  mov R0, 8
  mov [3581], R0
  mov R0, 1
  mov [3582], R0
  mov R0, 0
  mov [3583], R0
  mov R0, 1
  mov [3584], R0
  mov R2, 1
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [global_song], R1
  mov R0, R1
  mov R0, global_t_lead
  mov [3540], R0
  mov R0, 0.900000
  mov [3541], R0
  mov R0, 0
  mov [3542], R0
  mov R0, 7
  mov [3543], R0
  mov R2, 8
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3544], R1
  mov R0, R1
  mov R0, global_t_bass
  mov [3545], R0
  mov R0, 1.000000
  mov [3546], R0
  mov R0, 1
  mov [3547], R0
  mov R0, 0
  mov [3548], R0
  mov R2, 10
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3549], R1
  mov R0, R1
  mov R0, global_t_arp
  mov [3550], R0
  mov R0, 0.600000
  mov [3551], R0
  mov R0, 0
  mov [3552], R0
  mov R0, 0
  mov [3553], R0
  mov R2, 28
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3554], R1
  mov R0, R1
  mov R0, global_t_kick
  mov [3555], R0
  mov R0, 1.000000
  mov [3556], R0
  mov R0, 0
  mov [3557], R0
  mov R0, 0
  mov [3558], R0
  mov R2, 30
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [3559], R1
  mov R0, R1
  mov R0, global_t_hat
  mov [3560], R0
  mov R0, 0.500000
  mov [3561], R0
  mov R0, 0
  mov [3562], R0
  mov R0, 0
  mov [3563], R0
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
__if_5757_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_5757_end
  mov R1, [BP-1]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_wave_shape_return
__if_5757_end:
__if_5766_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_5766_end
  mov R2, [BP-1]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_wave_shape_return
__if_5766_end:
__if_5779_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_5779_end
  mov R0, [BP-1]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_wave_shape_return
__if_5779_end:
__if_5789_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_5789_end
__if_5794_start:
  mov R0, [BP-1]
  flt R0, 0.500000
  jf R0, __if_5794_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5794_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5789_end:
__if_5803_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_5803_end
__if_5808_start:
  mov R0, [BP-1]
  flt R0, 0.250000
  jf R0, __if_5808_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5808_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5803_end:
__if_5817_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_5817_end
__if_5822_start:
  mov R0, [BP-1]
  flt R0, 0.125000
  jf R0, __if_5822_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_5822_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_5817_end:
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
__for_5907_start:
  mov R0, [BP-7]
  ile R0, 148
  jf R0, __for_5907_end
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
__for_5933_start:
  mov R0, [BP-13]
  ilt R0, 16
  jf R0, __for_5933_end
__if_5943_start:
  mov R0, global_synth_v_active
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_5943_end
  jmp __for_5933_continue
__if_5943_end:
__if_5949_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  fle R0, 0.000000
  jf R0, __if_5949_end
  jmp __for_5933_continue
__if_5949_end:
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
__for_5933_continue:
  mov R0, [BP-13]
  iadd R0, 1
  mov [BP-13], R0
  jmp __for_5933_start
__for_5933_end:
  mov R0, [BP-10]
  fmul R0, 64.000000
  fmul R0, 1.600000
  cfi R0
  isgn R0
  iadd R0, 100
  mov [BP-11], R0
__if_5986_start:
  mov R0, [BP-11]
  ilt R0, 36
  jf R0, __if_5986_end
  mov R0, 36
  mov [BP-11], R0
__if_5986_end:
__if_5997_start:
  mov R0, [BP-11]
  igt R0, 164
  jf R0, __if_5997_end
  mov R0, 164
  mov [BP-11], R0
__if_5997_end:
  mov R0, [BP-7]
  cif R0
  mov R1, [BP-3]
  fmul R0, R1
  cfi R0
  iadd R0, 24
  mov [BP-12], R0
__if_6017_start:
  mov R0, [BP-6]
  cib R0
  jf R0, __if_6017_end
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  mov R1, [BP-12]
  mov [SP+2], R1
  mov R1, [BP-11]
  mov [SP+3], R1
  call __function_draw_line
__if_6017_end:
  mov R0, [BP-12]
  mov [BP-4], R0
  mov R0, [BP-11]
  mov [BP-5], R0
  mov R0, 1
  mov [BP-6], R0
__for_5907_continue:
  mov R0, [BP-7]
  iadd R0, 1
  mov [BP-7], R0
  jmp __for_5907_start
__for_5907_end:
__function_draw_scope_return:
  mov SP, BP
  pop BP
  ret

__function_is_black:
  push BP
  mov BP, SP
  push R1
__if_6035_start:
  mov R0, [BP+2]
  ieq R0, 1
  jt R0, __LogicalOr_ShortCircuit_6040
  mov R1, [BP+2]
  ieq R1, 3
  or R0, R1
__LogicalOr_ShortCircuit_6040:
  jt R0, __LogicalOr_ShortCircuit_6044
  mov R1, [BP+2]
  ieq R1, 6
  or R0, R1
__LogicalOr_ShortCircuit_6044:
  jt R0, __LogicalOr_ShortCircuit_6048
  mov R1, [BP+2]
  ieq R1, 8
  or R0, R1
__LogicalOr_ShortCircuit_6048:
  jt R0, __LogicalOr_ShortCircuit_6052
  mov R1, [BP+2]
  ieq R1, 10
  or R0, R1
__LogicalOr_ShortCircuit_6052:
  jf R0, __if_6035_end
  mov R0, 1
  jmp __function_is_black_return
__if_6035_end:
  mov R0, 0
__function_is_black_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_white_index:
  push BP
  mov BP, SP
__if_6061_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_6061_end
  mov R0, 0
  jmp __function_white_index_return
__if_6061_end:
__if_6067_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_6067_end
  mov R0, 1
  jmp __function_white_index_return
__if_6067_end:
__if_6073_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_6073_end
  mov R0, 2
  jmp __function_white_index_return
__if_6073_end:
__if_6079_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_6079_end
  mov R0, 3
  jmp __function_white_index_return
__if_6079_end:
__if_6085_start:
  mov R0, [BP+2]
  ieq R0, 7
  jf R0, __if_6085_end
  mov R0, 4
  jmp __function_white_index_return
__if_6085_end:
__if_6091_start:
  mov R0, [BP+2]
  ieq R0, 9
  jf R0, __if_6091_end
  mov R0, 5
  jmp __function_white_index_return
__if_6091_end:
__if_6097_start:
  mov R0, [BP+2]
  ieq R0, 11
  jf R0, __if_6097_end
  mov R0, 6
  jmp __function_white_index_return
__if_6097_end:
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
__for_6110_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_6110_end
  mov R0, 0.000000
  mov R1, global_note_level
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_6110_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6110_start
__for_6110_end:
  mov R0, 0
  mov [BP-1], R0
__for_6124_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_6124_end
__if_6133_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_6133_end
  mov R0, global_synth_v_note
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_6143_start:
  mov R0, [BP-2]
  ige R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6148
  mov R1, [BP-2]
  ilt R1, 128
  and R0, R1
__LogicalAnd_ShortCircuit_6148:
  jf R0, __if_6143_end
__if_6151_start:
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov R1, [R1]
  fgt R0, R1
  jf R0, __if_6151_end
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__if_6151_end:
__if_6143_end:
__if_6133_end:
__for_6124_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6124_start
__for_6124_end:
__function_compute_note_levels_return:
  mov SP, BP
  pop BP
  ret

__function_draw_key_lit:
  push BP
  mov BP, SP
  isub SP, 6
__if_6173_start:
  mov R0, [BP+7]
  fle R0, 0.020000
  jf R0, __if_6173_end
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
__if_6173_end:
  mov R0, [BP+7]
  fmul R0, 127.000000
  cfi R0
  iadd R0, 128
  mov [BP-1], R0
__if_6195_start:
  mov R0, [BP-1]
  igt R0, 255
  jf R0, __if_6195_end
  mov R0, 255
  mov [BP-1], R0
__if_6195_end:
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
__for_6222_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_6222_end
  mov R0, 0
  mov [BP-3], R0
__for_6231_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_6231_end
__if_6241_start:
  mov R1, [BP-3]
  mov [SP], R1
  call __function_is_black
  cib R0
  jf R0, __if_6241_end
  jmp __for_6231_continue
__if_6241_end:
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
__for_6231_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_6231_start
__for_6231_end:
__for_6222_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_6222_start
__for_6222_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_6282_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_6282_end
  mov R0, 0
  mov [BP-3], R0
__for_6291_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_6291_end
  mov R1, [BP-3]
  mov [SP], R1
  call __function_white_index
  mov [BP-4], R0
__if_6305_start:
  mov R0, [BP-4]
  ige R0, 0
  jf R0, __if_6305_end
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6291_continue
__if_6305_end:
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
__if_6342_start:
  mov R0, [BP-8]
  fgt R0, 0.020000
  jf R0, __if_6342_else
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
  jmp __if_6342_end
__if_6342_else:
  mov R1, -14671840
  mov [SP], R1
  call __function_set_multiply_color
__if_6342_end:
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
__for_6291_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_6291_start
__for_6291_end:
__for_6282_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_6282_start
__for_6282_end:
__function_draw_keyboard_return:
  mov SP, BP
  pop BP
  ret

__function_phase_color:
  push BP
  mov BP, SP
__if_6380_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_6380_end
  mov R0, -16711936
  jmp __function_phase_color_return
__if_6380_end:
__if_6386_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_6386_end
  mov R0, -256
  jmp __function_phase_color_return
__if_6386_end:
__if_6392_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_6392_end
  mov R0, -12533505
  jmp __function_phase_color_return
__if_6392_end:
__if_6398_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_6398_end
  mov R0, -16744193
  jmp __function_phase_color_return
__if_6398_end:
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
__for_6407_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_6407_end
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
__if_6441_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_6441_end
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
__if_6441_end:
__for_6407_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6407_start
__for_6407_end:
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
__if_6513_start:
  mov R0, [BP+3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6518
  mov R1, [BP-1]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6518:
  jf R0, __if_6513_else
__if_6522_start:
  mov R0, [global_manual_preset]
  ieq R0, 38
  jf R0, __if_6522_else
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
  jmp __if_6522_end
__if_6522_else:
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
__if_6522_end:
  jmp __if_6513_end
__if_6513_else:
__if_6552_start:
  mov R0, [BP+3]
  ile R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6557
  mov R1, [BP-1]
  igt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6557:
  jf R0, __if_6552_end
__if_6561_start:
  mov R0, global_btn_voice
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_6561_end
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
__if_6561_end:
__if_6552_end:
__if_6513_end:
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
__if_6613_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6613_end
  mov R0, 1
  mov [BP-1], R0
__if_6613_end:
__if_6620_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6620_end
  mov R0, -1
  mov [BP-1], R0
__if_6620_end:
__if_6628_start:
  mov R0, [BP-1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6633
  mov R1, [global_updown_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6633:
  jf R0, __if_6628_end
  mov R0, [global_manual_preset]
  mov R1, [BP-1]
  iadd R0, R1
  mov [global_manual_preset], R0
__if_6640_start:
  mov R0, [global_manual_preset]
  ilt R0, 0
  jf R0, __if_6640_end
  mov R0, 39
  mov [global_manual_preset], R0
__if_6640_end:
__if_6649_start:
  mov R0, [global_manual_preset]
  ige R0, 40
  jf R0, __if_6649_end
  mov R0, 0
  mov [global_manual_preset], R0
__if_6649_end:
__if_6628_end:
  mov R0, [BP-1]
  mov [global_updown_prev], R0
  mov R0, 0
  mov [BP-2], R0
__if_6662_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6662_end
  mov R0, -1
  mov [BP-2], R0
__if_6662_end:
__if_6670_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_6670_end
  mov R0, 1
  mov [BP-2], R0
__if_6670_end:
__if_6677_start:
  mov R0, [BP-2]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6682
  mov R1, [global_leftright_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6682:
  jf R0, __if_6677_end
  mov R0, [3581]
  mov R1, [BP-2]
  isub R0, R1
  mov [BP-4], R0
__if_6692_start:
  mov R0, [BP-4]
  ilt R0, 3
  jf R0, __if_6692_end
  mov R0, 3
  mov [BP-4], R0
__if_6692_end:
__if_6699_start:
  mov R0, [BP-4]
  igt R0, 20
  jf R0, __if_6699_end
  mov R0, 20
  mov [BP-4], R0
__if_6699_end:
  mov R0, [BP-4]
  mov [3581], R0
__if_6677_end:
  mov R0, [BP-2]
  mov [global_leftright_prev], R0
  call __function_gamepad_button_start
  mov [BP-3], R0
__if_6716_start:
  mov R0, [BP-3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_6721
  mov R1, [global_start_prev]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_6721:
  jf R0, __if_6716_end
__if_6725_start:
  mov R0, [global_synth_seq_playing]
  cib R0
  jf R0, __if_6725_else
  call __function_synth_seq_stop
  jmp __if_6725_end
__if_6725_else:
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__if_6725_end:
__if_6716_end:
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
__for_6742_start:
  mov R0, [BP-1]
  ilt R0, 6
  jf R0, __for_6742_end
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
__for_6742_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_6742_start
__for_6742_end:
  mov R0, 0
  mov [global_frame_count], R0
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__while_6769_start:
__while_6769_continue:
  mov R0, 1
  jf R0, __while_6769_end
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
  jmp __while_6769_start
__while_6769_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

__literal_string_3821:
  string "SQ LEAD"
__literal_string_3822:
  string "PLS LEAD"
__literal_string_3823:
  string "SAW LEAD"
__literal_string_3824:
  string "SINE LEAD"
__literal_string_3825:
  string "CHIP LEAD"
__literal_string_3826:
  string "SUB BASS"
__literal_string_3827:
  string "TRI BASS"
__literal_string_3828:
  string "SQ BASS"
__literal_string_3829:
  string "SAW BASS"
__literal_string_3830:
  string "PLUCK BASS"
__literal_string_3831:
  string "SQ PLUCK"
__literal_string_3832:
  string "SAW PLUCK"
__literal_string_3833:
  string "E-PIANO"
__literal_string_3834:
  string "HARP"
__literal_string_3835:
  string "MARIMBA"
__literal_string_3836:
  string "SAW PAD"
__literal_string_3837:
  string "SQ PAD"
__literal_string_3838:
  string "WARM PAD"
__literal_string_3839:
  string "STRINGS"
__literal_string_3840:
  string "ORGAN"
__literal_string_3841:
  string "SOFT ORGAN"
__literal_string_3842:
  string "BRASS"
__literal_string_3843:
  string "BELL"
__literal_string_3844:
  string "CHIME"
__literal_string_3845:
  string "ZAP"
__literal_string_3846:
  string "LASER"
__literal_string_3847:
  string "SIREN"
__literal_string_3848:
  string "DROP"
__literal_string_3849:
  string "KICK"
__literal_string_3850:
  string "SNARE"
__literal_string_3851:
  string "CL HAT"
__literal_string_3852:
  string "OP HAT"
__literal_string_3853:
  string "TOM"
__literal_string_3854:
  string "CLAP"
__literal_string_3855:
  string "COWBELL"
__literal_string_3856:
  string "MAJ ARP"
__literal_string_3857:
  string "MIN ARP"
__literal_string_3858:
  string "WOBBLE"
__literal_string_3859:
  string "ECHO PLUCK"
__literal_string_3860:
  string "PWM LEAD"
__literal_string_6470:
  string "VIRCON32 SYNTHESIZER"
__literal_string_6474:
  string "PRESET:"
__literal_string_6478:
  string "A B X Y L R = PLAY   UP/DN = PRESET   START = SONG"
