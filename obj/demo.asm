; program start section
  call __global_scope_initialization
  call __function_main
  hlt

; location of global variables
  %define global_synth_wave_base 0
  %define global_synth_master 1
  %define global_synth_transpose 2
  %define global_synth_note_speed 3
  %define global_synth_note_freq 131
  %define global_synth_v_active 259
  %define global_synth_v_note 275
  %define global_synth_v_phase 291
  %define global_synth_v_level 307
  %define global_synth_v_frames 323
  %define global_synth_v_age 339
  %define global_synth_v_relstart 355
  %define global_synth_v_curspeed 371
  %define global_synth_v_tgtspeed 387
  %define global_synth_v_glideframes 403
  %define global_synth_v_vibphase 419
  %define global_synth_v_tremphase 435
  %define global_synth_v_bend 451
  %define global_synth_v_vel 467
  %define global_synth_v_freq 483
  %define global_synth_v_amp 499
  %define global_synth_v_timer 515
  %define global_synth_v_inst 531
  %define global_synth_preset_bank 547
  %define global_synth_preset_name 1107
  %define global_synth_chord_iv 1667
  %define global_synth_seq_song 1707
  %define global_synth_seq_row 1708
  %define global_synth_seq_timer 1709
  %define global_synth_seq_playing 1710
  %define global_synth_seq_voice 1711
  %define global_t_lead 1719
  %define global_t_bass 1751
  %define global_t_arp 1783
  %define global_t_kick 1815
  %define global_t_hat 1847
  %define global_song 1879
  %define global_chord_root 1925
  %define global_arp0 1929
  %define global_arp1 1933
  %define global_arp2 1937
  %define global_lead_line 1941
  %define global_scale_notes 1957
  %define global_btn_prev 1963
  %define global_btn_voice 1969
  %define global_manual_preset 1975
  %define global_frame_count 1976
  %define global_note_level 1977
  %define global_hud_title 2105
  %define global_hud_preset 2137
  %define global_hud_keys 2153
  %define global_updown_prev 2217
  %define global_leftright_prev 2218
  %define global_start_prev 2219

__global_scope_initialization:
  push BP
  mov BP, SP
  mov DR, global_synth_preset_name
  mov SR, __literal_string_2844
  mov CR, 8
  movs
  mov DR, 1123
  mov SR, __literal_string_2845
  mov CR, 9
  movs
  mov DR, 1139
  mov SR, __literal_string_2846
  mov CR, 9
  movs
  mov DR, 1155
  mov SR, __literal_string_2847
  mov CR, 10
  movs
  mov DR, 1171
  mov SR, __literal_string_2848
  mov CR, 10
  movs
  mov DR, 1187
  mov SR, __literal_string_2849
  mov CR, 9
  movs
  mov DR, 1203
  mov SR, __literal_string_2850
  mov CR, 9
  movs
  mov DR, 1219
  mov SR, __literal_string_2851
  mov CR, 8
  movs
  mov DR, 1235
  mov SR, __literal_string_2852
  mov CR, 9
  movs
  mov DR, 1251
  mov SR, __literal_string_2853
  mov CR, 11
  movs
  mov DR, 1267
  mov SR, __literal_string_2854
  mov CR, 9
  movs
  mov DR, 1283
  mov SR, __literal_string_2855
  mov CR, 10
  movs
  mov DR, 1299
  mov SR, __literal_string_2856
  mov CR, 8
  movs
  mov DR, 1315
  mov SR, __literal_string_2857
  mov CR, 5
  movs
  mov DR, 1331
  mov SR, __literal_string_2858
  mov CR, 8
  movs
  mov DR, 1347
  mov SR, __literal_string_2859
  mov CR, 8
  movs
  mov DR, 1363
  mov SR, __literal_string_2860
  mov CR, 7
  movs
  mov DR, 1379
  mov SR, __literal_string_2861
  mov CR, 9
  movs
  mov DR, 1395
  mov SR, __literal_string_2862
  mov CR, 8
  movs
  mov DR, 1411
  mov SR, __literal_string_2863
  mov CR, 6
  movs
  mov DR, 1427
  mov SR, __literal_string_2864
  mov CR, 11
  movs
  mov DR, 1443
  mov SR, __literal_string_2865
  mov CR, 6
  movs
  mov DR, 1459
  mov SR, __literal_string_2866
  mov CR, 5
  movs
  mov DR, 1475
  mov SR, __literal_string_2867
  mov CR, 6
  movs
  mov DR, 1491
  mov SR, __literal_string_2868
  mov CR, 4
  movs
  mov DR, 1507
  mov SR, __literal_string_2869
  mov CR, 6
  movs
  mov DR, 1523
  mov SR, __literal_string_2870
  mov CR, 6
  movs
  mov DR, 1539
  mov SR, __literal_string_2871
  mov CR, 5
  movs
  mov DR, 1555
  mov SR, __literal_string_2872
  mov CR, 5
  movs
  mov DR, 1571
  mov SR, __literal_string_2873
  mov CR, 6
  movs
  mov DR, 1587
  mov SR, __literal_string_2874
  mov CR, 7
  movs
  mov DR, 1603
  mov SR, __literal_string_2875
  mov CR, 7
  movs
  mov DR, 1619
  mov SR, __literal_string_2876
  mov CR, 4
  movs
  mov DR, 1635
  mov SR, __literal_string_2877
  mov CR, 5
  movs
  mov DR, 1651
  mov SR, __literal_string_2878
  mov CR, 8
  movs
  mov R0, 0
  mov [global_synth_chord_iv], R0
  mov R0, 4
  mov [1668], R0
  mov R0, 7
  mov [1669], R0
  mov R0, -1
  mov [1670], R0
  mov R0, 0
  mov [1671], R0
  mov R0, 3
  mov [1672], R0
  mov R0, 7
  mov [1673], R0
  mov R0, -1
  mov [1674], R0
  mov R0, 0
  mov [1675], R0
  mov R0, 3
  mov [1676], R0
  mov R0, 6
  mov [1677], R0
  mov R0, -1
  mov [1678], R0
  mov R0, 0
  mov [1679], R0
  mov R0, 4
  mov [1680], R0
  mov R0, 8
  mov [1681], R0
  mov R0, -1
  mov [1682], R0
  mov R0, 0
  mov [1683], R0
  mov R0, 4
  mov [1684], R0
  mov R0, 7
  mov [1685], R0
  mov R0, 11
  mov [1686], R0
  mov R0, 0
  mov [1687], R0
  mov R0, 3
  mov [1688], R0
  mov R0, 7
  mov [1689], R0
  mov R0, 10
  mov [1690], R0
  mov R0, 0
  mov [1691], R0
  mov R0, 4
  mov [1692], R0
  mov R0, 7
  mov [1693], R0
  mov R0, 10
  mov [1694], R0
  mov R0, 0
  mov [1695], R0
  mov R0, 5
  mov [1696], R0
  mov R0, 7
  mov [1697], R0
  mov R0, -1
  mov [1698], R0
  mov R0, 0
  mov [1699], R0
  mov R0, 2
  mov [1700], R0
  mov R0, 7
  mov [1701], R0
  mov R0, -1
  mov [1702], R0
  mov R0, 0
  mov [1703], R0
  mov R0, 7
  mov [1704], R0
  mov R0, 12
  mov [1705], R0
  mov R0, -1
  mov [1706], R0
  mov R0, 45
  mov [global_chord_root], R0
  mov R0, 41
  mov [1926], R0
  mov R0, 48
  mov [1927], R0
  mov R0, 43
  mov [1928], R0
  mov R0, 57
  mov [global_arp0], R0
  mov R0, 53
  mov [1930], R0
  mov R0, 60
  mov [1931], R0
  mov R0, 55
  mov [1932], R0
  mov R0, 60
  mov [global_arp1], R0
  mov R0, 57
  mov [1934], R0
  mov R0, 64
  mov [1935], R0
  mov R0, 59
  mov [1936], R0
  mov R0, 64
  mov [global_arp2], R0
  mov R0, 60
  mov [1938], R0
  mov R0, 67
  mov [1939], R0
  mov R0, 62
  mov [1940], R0
  mov R0, 69
  mov [global_lead_line], R0
  mov R0, 72
  mov [1942], R0
  mov R0, 76
  mov [1943], R0
  mov R0, 74
  mov [1944], R0
  mov R0, 72
  mov [1945], R0
  mov R0, 69
  mov [1946], R0
  mov R0, 65
  mov [1947], R0
  mov R0, 67
  mov [1948], R0
  mov R0, 64
  mov [1949], R0
  mov R0, 67
  mov [1950], R0
  mov R0, 72
  mov [1951], R0
  mov R0, 71
  mov [1952], R0
  mov R0, 67
  mov [1953], R0
  mov R0, 62
  mov [1954], R0
  mov R0, 67
  mov [1955], R0
  mov R0, 74
  mov [1956], R0
  mov R0, 60
  mov [global_scale_notes], R0
  mov R0, 64
  mov [1958], R0
  mov R0, 67
  mov [1959], R0
  mov R0, 69
  mov [1960], R0
  mov R0, 72
  mov [1961], R0
  mov R0, 76
  mov [1962], R0
  mov DR, global_hud_title
  mov SR, __literal_string_5125
  mov CR, 21
  movs
  mov DR, global_hud_preset
  mov SR, __literal_string_5129
  mov CR, 8
  movs
  mov DR, global_hud_keys
  mov SR, __literal_string_5133
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

__function_synth_build_tables:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, 0
  mov [BP-1], R0
__for_1460_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_1460_end
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
__for_1460_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1460_start
__for_1460_end:
__function_synth_build_tables_return:
  mov SP, BP
  pop BP
  ret

__function_synth_init:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, [BP+2]
  mov [global_synth_wave_base], R0
  mov R0, 1.000000
  mov [global_synth_master], R0
  mov R0, 0
  mov [global_synth_transpose], R0
  call __function_synth_build_tables
  mov R0, 0
  mov [BP-1], R0
__for_1511_start:
  mov R0, [BP-1]
  ilt R0, 7
  jf R0, __for_1511_end
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [SP], R1
  call __function_select_sound
  mov R1, 1
  mov [SP], R1
  call __function_set_sound_loop
__for_1511_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1511_start
__for_1511_end:
  mov R0, 0
  mov [BP-1], R0
__for_1527_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_1527_end
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
__for_1527_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_1527_start
__for_1527_end:
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
__if_1603_start:
  mov R0, [BP-1]
  ilt R0, 0
  jf R0, __if_1603_end
  mov R0, 0
  mov [BP-1], R0
__if_1603_end:
__if_1610_start:
  mov R0, [BP-1]
  igt R0, 127
  jf R0, __if_1610_end
  mov R0, 127
  mov [BP-1], R0
__if_1610_end:
  mov R0, global_synth_note_speed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_1622_start:
  mov R1, [BP+3]
  iadd R1, 15
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_1622_end
  mov R1, [BP-2]
  mov R3, 2.000000
  mov [SP], R3
  mov R4, [BP+3]
  iadd R4, 15
  mov R3, [R4]
  fdiv R3, 12.000000
  mov [SP+1], R3
  call __function_pow
  mov R2, R0
  fmul R1, R2
  mov [BP-2], R1
  mov R0, R1
__if_1622_end:
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

__function_synth_alloc_voice:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  mov R0, 0
  mov [BP-3], R0
__for_1640_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1640_end
__if_1649_start:
  mov R0, global_synth_v_active
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1649_end
  mov R0, [BP-3]
  jmp __function_synth_alloc_voice_return
__if_1649_end:
__for_1640_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1640_start
__for_1640_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, [global_synth_v_amp]
  mov [BP-2], R0
  mov R0, 1
  mov [BP-3], R0
__for_1664_start:
  mov R0, [BP-3]
  ilt R0, 16
  jf R0, __for_1664_end
__if_1673_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-2]
  flt R0, R1
  jf R0, __if_1673_end
  mov R0, global_synth_v_amp
  mov R1, [BP-3]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
  mov R0, [BP-3]
  mov [BP-1], R0
__if_1673_end:
__for_1664_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_1664_start
__for_1664_end:
  mov R0, [BP-1]
__function_synth_alloc_voice_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_note_on_channel:
  push BP
  mov BP, SP
  isub SP, 1
  push R1
  push R2
  push R3
  isub SP, 2
__if_1695_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_1695_end
  mov R0, 0
  mov [BP+3], R0
__if_1695_end:
__if_1702_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_1702_end
  mov R0, 127
  mov [BP+3], R0
__if_1702_end:
  mov R1, [BP+3]
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  call __function_synth_base_speed
  mov [BP-1], R0
  mov R0, 1
  mov R1, global_synth_v_active
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, global_synth_v_note
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+2]
  mov R1, global_synth_v_inst
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 1
  mov R1, global_synth_v_phase
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_level
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_age
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_relstart
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-1]
  mov R1, global_synth_v_curspeed
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-1]
  mov R1, global_synth_v_tgtspeed
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_glideframes
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_vibphase
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_tremphase
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, global_synth_v_bend
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, global_synth_v_vel
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, global_synth_note_freq
  mov R1, [BP+3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_freq
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP+5]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+5]
  mov [SP], R1
  mov R1, [global_synth_wave_base]
  mov R3, [BP+2]
  mov R2, [R3]
  iadd R1, R2
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
  iadd SP, 2
  pop R3
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
__if_1983_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_1988
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_1988:
  jf R0, __if_1983_end
  jmp __function_synth_note_retrigger_return
__if_1983_end:
__if_1992_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_1992_end
  jmp __function_synth_note_retrigger_return
__if_1992_end:
  mov R0, global_synth_v_inst
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_2003_start:
  mov R0, [BP+3]
  ilt R0, 0
  jf R0, __if_2003_end
  mov R0, 0
  mov [BP+3], R0
__if_2003_end:
__if_2010_start:
  mov R0, [BP+3]
  igt R0, 127
  jf R0, __if_2010_end
  mov R0, 127
  mov [BP+3], R0
__if_2010_end:
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
  mov R0, global_synth_note_freq
  mov R1, [BP+3]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_freq
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2039_start:
  mov R1, [BP-1]
  iadd R1, 14
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_2039_else
  mov R1, [BP-1]
  iadd R1, 14
  mov R0, [R1]
  mov R1, global_synth_v_glideframes
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2039_end
__if_2039_else:
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
__if_2039_end:
__function_synth_note_retrigger_return:
  mov SP, BP
  pop BP
  ret

__function_synth_note_off:
  push BP
  mov BP, SP
__if_2063_start:
  mov R0, [BP+2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_2068
  mov R1, [BP+2]
  ige R1, 16
  or R0, R1
__LogicalOr_ShortCircuit_2068:
  jf R0, __if_2063_end
  jmp __function_synth_note_off_return
__if_2063_end:
__if_2072_start:
  mov R0, global_synth_v_active
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2072_end
  jmp __function_synth_note_off_return
__if_2072_end:
__if_2078_start:
  mov R0, global_synth_v_phase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 4
  jt R0, __LogicalOr_ShortCircuit_2087
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  ieq R1, 0
  or R0, R1
__LogicalOr_ShortCircuit_2087:
  jf R0, __if_2078_end
  jmp __function_synth_note_off_return
__if_2078_end:
  mov R0, global_synth_v_level
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_relstart
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
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

__function_synth_step_envelope:
  push BP
  mov BP, SP
  isub SP, 5
  push R1
  push R2
  push R3
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
__if_2234_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2234_else
__if_2239_start:
  mov R1, [BP+3]
  iadd R1, 2
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2239_else
  mov R0, 1.000000
  mov [BP-3], R0
  jmp __if_2239_end
__if_2239_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 2
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-3], R0
__if_2239_end:
__if_2254_start:
  mov R0, [BP-3]
  fge R0, 1.000000
  jf R0, __if_2254_end
  mov R0, 1.000000
  mov [BP-3], R0
  mov R0, 2
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, 0
  mov R1, global_synth_v_frames
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2254_end:
  jmp __if_2234_end
__if_2234_else:
__if_2272_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_2272_else
  mov R0, 0
  mov [BP-4], R0
__if_2280_start:
  mov R1, [BP+3]
  iadd R1, 3
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2280_else
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
  jmp __if_2280_end
__if_2280_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 3
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-5], R0
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  fsgn R0
  fadd R0, 1.000000
  mov R1, [BP-5]
  fmul R0, R1
  fsgn R0
  fadd R0, 1.000000
  mov [BP-3], R0
__if_2312_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 3
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_2312_end
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  mov [BP-3], R0
  mov R0, 1
  mov [BP-4], R0
__if_2312_end:
__if_2280_end:
__if_2325_start:
  mov R0, [BP-4]
  cib R0
  jf R0, __if_2325_end
__if_2328_start:
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  fle R0, 0.001000
  jf R0, __if_2328_else
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  jmp __if_2328_end
__if_2328_else:
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
__if_2328_end:
__if_2325_end:
  jmp __if_2272_end
__if_2272_else:
__if_2349_start:
  mov R0, [BP-1]
  ieq R0, 3
  jf R0, __if_2349_else
  mov R1, [BP+3]
  iadd R1, 4
  mov R0, [R1]
  mov [BP-3], R0
  jmp __if_2349_end
__if_2349_else:
__if_2358_start:
  mov R0, [BP-1]
  ieq R0, 4
  jf R0, __if_2358_end
__if_2363_start:
  mov R1, [BP+3]
  iadd R1, 5
  mov R0, [R1]
  ile R0, 0
  jf R0, __if_2363_else
  mov R0, 0.000000
  mov [BP-3], R0
  jmp __if_2363_end
__if_2363_else:
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 5
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  mov [BP-4], R0
  mov R0, global_synth_v_relstart
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-4]
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-3], R0
__if_2363_end:
__if_2389_start:
  mov R0, [BP-3]
  fle R0, 0.000000
  jt R0, __LogicalOr_ShortCircuit_2394
  mov R1, [BP-2]
  mov R3, [BP+3]
  iadd R3, 5
  mov R2, [R3]
  ige R1, R2
  or R0, R1
__LogicalOr_ShortCircuit_2394:
  jf R0, __if_2389_end
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 0
  mov R1, global_synth_v_phase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
__if_2389_end:
__if_2358_end:
__if_2349_end:
__if_2272_end:
__if_2234_end:
  mov R0, [BP-3]
  mov R1, global_synth_v_level
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP-3]
__function_synth_step_envelope_return:
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_pitch_offset:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  push R3
  isub SP, 1
  mov R0, global_synth_v_bend
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_2422_start:
  mov R1, [BP+3]
  iadd R1, 13
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __if_2422_end
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 13
  mov R1, [R2]
  mov R2, global_synth_v_age
  mov R3, [BP+2]
  iadd R2, R3
  mov R2, [R2]
  cif R2
  fmul R1, R2
  fadd R0, R1
  mov [BP-1], R0
__if_2422_end:
__if_2435_start:
  mov R1, [BP+3]
  iadd R1, 11
  mov R0, [R1]
  fne R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_2442
  mov R2, [BP+3]
  iadd R2, 12
  mov R1, [R2]
  igt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_2442:
  jf R0, __if_2435_end
  mov R0, global_synth_v_age
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_2451_start:
  mov R0, [BP-2]
  mov R2, [BP+3]
  iadd R2, 12
  mov R1, [R2]
  ilt R0, R1
  jf R0, __if_2451_end
  mov R0, [BP-2]
  cif R0
  mov R2, [BP+3]
  iadd R2, 12
  mov R1, [R2]
  cif R1
  fdiv R0, R1
  fsgn R0
  fadd R0, 1.000000
  mov [BP-3], R0
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 11
  mov R1, [R2]
  mov R2, [BP-3]
  fmul R1, R2
  fadd R0, R1
  mov [BP-1], R0
__if_2451_end:
__if_2435_end:
__if_2472_start:
  mov R1, [BP+3]
  iadd R1, 6
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __LogicalAnd_ShortCircuit_2480
  mov R1, global_synth_v_age
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  mov R3, [BP+3]
  iadd R3, 8
  mov R2, [R3]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_2480:
  jf R0, __if_2472_end
  mov R0, global_synth_v_vibphase
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP+3]
  iadd R2, 7
  mov R1, [R2]
  fdiv R1, 60.000000
  fadd R0, R1
  mov R1, global_synth_v_vibphase
  mov R2, [BP+2]
  iadd R1, R2
  mov [R1], R0
  mov R1, global_synth_v_vibphase
  mov R2, [BP+2]
  iadd R1, R2
  mov R1, [R1]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  mov [BP-2], R0
  mov R0, [BP-1]
  mov R2, [BP+3]
  iadd R2, 6
  mov R1, [R2]
  mov R2, [BP-2]
  fmul R1, R2
  fadd R0, R1
  mov [BP-1], R0
__if_2472_end:
  mov R0, [BP-1]
__function_synth_pitch_offset_return:
  iadd SP, 1
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_synth_update:
  push BP
  mov BP, SP
  isub SP, 9
  mov R0, 0
  mov [BP-1], R0
__for_2510_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_2510_end
__if_2520_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_2520_end
  jmp __for_2510_continue
__if_2520_end:
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
__if_2536_start:
  mov R0, global_synth_v_phase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2536_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_voice_kill
  jmp __for_2510_continue
__if_2536_end:
__if_2546_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2546_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov R1, [R1]
  fsub R0, R1
  mov [BP-7], R0
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP-7]
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
__if_2576_start:
  mov R0, global_synth_v_glideframes
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2576_end
  mov R0, global_synth_v_tgtspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_synth_v_curspeed
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2576_end:
__if_2546_end:
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
  mov [BP-4], R0
__if_2601_start:
  mov R1, [BP-2]
  iadd R1, 9
  mov R0, [R1]
  fgt R0, 0.000000
  jf R0, __if_2601_end
  mov R0, global_synth_v_tremphase
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R2, [BP-2]
  iadd R2, 10
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
  mov [BP-7], R0
  mov R0, [BP-4]
  mov R2, [BP-2]
  iadd R2, 9
  mov R1, [R2]
  mov R2, [BP-7]
  fmul R1, R2
  fsgn R1
  fadd R1, 1.000000
  fmul R0, R1
  mov [BP-4], R0
__if_2601_end:
  mov R0, [BP-4]
  mov R1, global_synth_v_amp
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  call __function_synth_pitch_offset
  mov [BP-5], R0
  mov R0, global_synth_v_curspeed
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-6], R0
__if_2653_start:
  mov R0, [BP-5]
  fne R0, 0.000000
  jf R0, __if_2653_end
  mov R1, [BP-6]
  mov R3, 2.000000
  mov [SP], R3
  mov R3, [BP-5]
  fdiv R3, 12.000000
  mov [SP+1], R3
  call __function_pow
  mov R2, R0
  fmul R1, R2
  mov [BP-6], R1
  mov R0, R1
__if_2653_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_channel
  mov R1, [BP-4]
  mov [SP], R1
  call __function_set_channel_volume
  mov R1, [BP-6]
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
__if_2682_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  igt R0, 0
  jf R0, __if_2682_end
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  isub R0, 1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2694_start:
  mov R0, global_synth_v_timer
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ieq R0, 0
  jf R0, __if_2694_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_synth_note_off
  mov R0, -1
  mov R1, global_synth_v_timer
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__if_2694_end:
__if_2682_end:
__for_2510_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_2510_start
__for_2510_end:
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
  mov R0, [BP+6]
  mov R1, [BP+2]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP+7]
  mov R1, [BP+2]
  iadd R1, 4
  mov [R1], R0
  mov R0, [BP+8]
  mov R1, [BP+2]
  iadd R1, 5
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 6
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 7
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 8
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 9
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 10
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 11
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 12
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 13
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 14
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 15
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
  iadd R1, 6
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 7
  mov [R1], R0
  mov R0, [BP+5]
  mov R1, [BP+2]
  iadd R1, 8
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
  iadd R1, 9
  mov [R1], R0
  mov R0, [BP+4]
  mov R1, [BP+2]
  iadd R1, 10
  mov [R1], R0
__function_synth_set_tremolo_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_pitch_env:
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
__function_synth_set_pitch_env_return:
  mov SP, BP
  pop BP
  ret

__function_synth_set_glide:
  push BP
  mov BP, SP
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 14
  mov [R1], R0
__function_synth_set_glide_return:
  mov SP, BP
  pop BP
  ret

__function_synth_preset:
  push BP
  mov BP, SP
  push R1
  mov R0, global_synth_preset_bank
  mov R1, [BP+2]
  imul R1, 16
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
  mov R0, 563
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
  mov R0, 579
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
  mov R0, 595
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
  mov R0, 611
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
  mov R0, 627
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
  mov R0, 643
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
  mov R0, 659
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
  mov R0, 675
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
  mov R0, 691
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
  mov R0, 707
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
  mov R0, 723
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
  mov R0, 739
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
  mov R0, 755
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
  mov R0, 771
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
  mov R0, 787
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
  mov R0, 803
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
  mov R0, 819
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
  mov R0, 835
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
  mov R0, 851
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
  mov R0, 867
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
  mov R0, 883
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
  mov R0, 899
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
  mov R0, 915
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
  mov R0, 931
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
  mov R0, 947
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
  iadd R1, 13
  mov [R1], R0
  mov R0, 963
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
  mov R0, 979
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
  iadd R1, 13
  mov [R1], R0
  mov R0, 995
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
  iadd R1, 13
  mov [R1], R0
  mov R0, 1011
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
  mov R0, 1027
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
  mov R0, 1043
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
  mov R0, 1059
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
  iadd R1, 13
  mov [R1], R0
  mov R0, 1075
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
  mov R0, 1091
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
__function_synth_load_presets_return:
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
  mov R0, 0
  mov [BP-1], R0
__for_3682_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_3682_end
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_3682_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3682_start
__for_3682_end:
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
__for_3701_start:
  mov R0, [BP-1]
  ilt R0, 8
  jf R0, __for_3701_end
__if_3710_start:
  mov R0, global_synth_seq_voice
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_3710_end
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
__if_3710_end:
__for_3701_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_3701_start
__for_3701_end:
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
__for_3749_start:
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 40
  mov R1, [R2]
  ilt R0, R1
  jf R0, __for_3749_end
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
__if_3773_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_3773_end
  jmp __for_3749_continue
__if_3773_end:
__if_3778_start:
  mov R0, [BP-4]
  ieq R0, -2
  jf R0, __if_3778_end
  jmp __for_3749_continue
__if_3778_end:
  mov R0, global_synth_seq_voice
  mov R1, [BP-2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-5], R0
__if_3789_start:
  mov R0, [BP-4]
  ieq R0, -1
  jf R0, __if_3789_end
__if_3795_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_3795_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_3795_end:
  mov R0, -1
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
  jmp __for_3749_continue
__if_3789_end:
  mov R0, [BP-4]
  mov R2, [BP-1]
  iadd R2, 44
  mov R1, [R2]
  iadd R0, R1
  mov [BP-6], R0
__if_3814_start:
  mov R1, [BP-3]
  iadd R1, 3
  mov R0, [R1]
  cib R0
  jf R0, __LogicalAnd_ShortCircuit_3817
  mov R1, [BP-5]
  ige R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_3817:
  jf R0, __LogicalAnd_ShortCircuit_3824
  mov R1, global_synth_v_active
  mov R2, [BP-5]
  iadd R1, R2
  mov R1, [R1]
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_3824:
  jf R0, __if_3814_end
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [BP-6]
  mov [SP+1], R1
  call __function_synth_note_retrigger
__if_3829_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_3829_end
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  mov R1, global_synth_v_timer
  mov R2, [BP-5]
  iadd R1, R2
  mov [R1], R0
__if_3829_end:
  jmp __for_3749_continue
__if_3814_end:
__if_3841_start:
  mov R0, [BP-5]
  ige R0, 0
  jf R0, __if_3841_end
  mov R1, [BP-5]
  mov [SP], R1
  call __function_synth_note_off
__if_3841_end:
__if_3849_start:
  mov R1, [BP-3]
  iadd R1, 4
  mov R0, [R1]
  igt R0, 0
  jf R0, __if_3849_else
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
  jmp __if_3849_end
__if_3849_else:
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
__if_3849_end:
  mov R0, [BP-7]
  mov R1, global_synth_seq_voice
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__for_3749_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_3749_start
__for_3749_end:
__function_synth_seq_trigger_row_return:
  mov SP, BP
  pop BP
  ret

__function_synth_seq_update:
  push BP
  mov BP, SP
  isub SP, 2
__if_3878_start:
  mov R0, [global_synth_seq_playing]
  bnot R0
  jf R0, __if_3878_end
  jmp __function_synth_seq_update_return
__if_3878_end:
  mov R0, [global_synth_seq_song]
  mov [BP-1], R0
__if_3885_start:
  mov R0, [global_synth_seq_timer]
  ile R0, 0
  jf R0, __if_3885_end
  call __function_synth_seq_trigger_row
  mov R1, [BP-1]
  iadd R1, 42
  mov R0, [R1]
  mov [BP-2], R0
__if_3895_start:
  mov R1, [BP-1]
  iadd R1, 45
  mov R0, [R1]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_3904
  mov R1, [global_synth_seq_row]
  and R1, 1
  cib R1
  and R0, R1
__LogicalAnd_ShortCircuit_3904:
  jf R0, __if_3895_end
  mov R0, [BP-2]
  mov R2, [BP-1]
  iadd R2, 45
  mov R1, [R2]
  iadd R0, R1
  mov [BP-2], R0
__if_3895_end:
  mov R0, [BP-2]
  mov [global_synth_seq_timer], R0
  mov R0, [global_synth_seq_row]
  iadd R0, 1
  mov [global_synth_seq_row], R0
__if_3915_start:
  mov R0, [global_synth_seq_row]
  mov R2, [BP-1]
  iadd R2, 41
  mov R1, [R2]
  ige R0, R1
  jf R0, __if_3915_end
__if_3921_start:
  mov R1, [BP-1]
  iadd R1, 43
  mov R0, [R1]
  cib R0
  jf R0, __if_3921_else
  mov R0, 0
  mov [global_synth_seq_row], R0
  jmp __if_3921_end
__if_3921_else:
  call __function_synth_seq_stop
__if_3921_end:
__if_3915_end:
__if_3885_end:
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
__for_4025_start:
  mov R0, [BP-1]
  ilt R0, 32
  jf R0, __for_4025_end
  mov R0, -2
  mov R1, [BP+2]
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_4025_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4025_start
__for_4025_end:
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
__for_4051_start:
  mov R0, [BP-1]
  ilt R0, 4
  jf R0, __for_4051_end
  mov R0, [BP-1]
  imul R0, 8
  mov [BP-2], R0
  mov R0, 0
  mov [BP-3], R0
__for_4066_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_4066_end
__if_4076_start:
  mov R0, [BP-3]
  and R0, 1
  ieq R0, 0
  jf R0, __if_4076_else
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
  jmp __if_4076_end
__if_4076_else:
  mov R0, 0
  mov R1, global_t_bass
  mov R2, [BP-2]
  mov R3, [BP-3]
  iadd R2, R3
  iadd R1, R2
  mov [R1], R0
__if_4076_end:
__for_4066_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4066_start
__for_4066_end:
  mov R0, 0
  mov [BP-3], R0
__for_4099_start:
  mov R0, [BP-3]
  ilt R0, 8
  jf R0, __for_4099_end
  mov R0, [BP-3]
  imod R0, 3
  mov [BP-4], R0
__if_4114_start:
  mov R0, [BP-4]
  ieq R0, 0
  jf R0, __if_4114_else
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
  jmp __if_4114_end
__if_4114_else:
__if_4127_start:
  mov R0, [BP-4]
  ieq R0, 1
  jf R0, __if_4127_else
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
  jmp __if_4127_end
__if_4127_else:
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
__if_4127_end:
__if_4114_end:
__for_4099_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4099_start
__for_4099_end:
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
__for_4051_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4051_start
__for_4051_end:
  mov R0, 0
  mov [BP-1], R0
__for_4177_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_4177_end
  mov R0, global_lead_line
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_t_lead
  mov R2, [BP-1]
  imul R2, 2
  iadd R1, R2
  mov [R1], R0
__for_4177_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4177_start
__for_4177_end:
  mov R0, 5
  mov [1919], R0
  mov R0, 32
  mov [1920], R0
  mov R0, 8
  mov [1921], R0
  mov R0, 1
  mov [1922], R0
  mov R0, 0
  mov [1923], R0
  mov R0, 1
  mov [1924], R0
  mov R2, 1
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [global_song], R1
  mov R0, R1
  mov R0, global_t_lead
  mov [1880], R0
  mov R0, 0.900000
  mov [1881], R0
  mov R0, 0
  mov [1882], R0
  mov R0, 7
  mov [1883], R0
  mov R2, 8
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [1884], R1
  mov R0, R1
  mov R0, global_t_bass
  mov [1885], R0
  mov R0, 1.000000
  mov [1886], R0
  mov R0, 1
  mov [1887], R0
  mov R0, 0
  mov [1888], R0
  mov R2, 10
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [1889], R1
  mov R0, R1
  mov R0, global_t_arp
  mov [1890], R0
  mov R0, 0.600000
  mov [1891], R0
  mov R0, 0
  mov [1892], R0
  mov R0, 0
  mov [1893], R0
  mov R2, 28
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [1894], R1
  mov R0, R1
  mov R0, global_t_kick
  mov [1895], R0
  mov R0, 1.000000
  mov [1896], R0
  mov R0, 0
  mov [1897], R0
  mov R0, 0
  mov [1898], R0
  mov R2, 30
  mov [SP], R2
  call __function_synth_preset
  mov R1, R0
  mov [1899], R1
  mov R0, R1
  mov R0, global_t_hat
  mov [1900], R0
  mov R0, 0.500000
  mov [1901], R0
  mov R0, 0
  mov [1902], R0
  mov R0, 0
  mov [1903], R0
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
__if_4412_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_4412_end
  mov R1, [BP-1]
  fmul R1, 6.283185
  mov [SP], R1
  call __function_sin
  jmp __function_wave_shape_return
__if_4412_end:
__if_4421_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_4421_end
  mov R2, [BP-1]
  fsub R2, 0.500000
  mov [SP], R2
  call __function_fabs
  mov R1, R0
  fmul R1, 4.000000
  fsub R1, 1.000000
  mov R0, R1
  jmp __function_wave_shape_return
__if_4421_end:
__if_4434_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_4434_end
  mov R0, [BP-1]
  fmul R0, 2.000000
  fsub R0, 1.000000
  jmp __function_wave_shape_return
__if_4434_end:
__if_4444_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_4444_end
__if_4449_start:
  mov R0, [BP-1]
  flt R0, 0.500000
  jf R0, __if_4449_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_4449_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_4444_end:
__if_4458_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_4458_end
__if_4463_start:
  mov R0, [BP-1]
  flt R0, 0.250000
  jf R0, __if_4463_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_4463_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_4458_end:
__if_4472_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_4472_end
__if_4477_start:
  mov R0, [BP-1]
  flt R0, 0.125000
  jf R0, __if_4477_end
  mov R0, 1.000000
  jmp __function_wave_shape_return
__if_4477_end:
  mov R0, -1.000000
  jmp __function_wave_shape_return
__if_4472_end:
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
__for_4562_start:
  mov R0, [BP-7]
  ile R0, 148
  jf R0, __for_4562_end
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
__for_4588_start:
  mov R0, [BP-13]
  ilt R0, 16
  jf R0, __for_4588_end
__if_4598_start:
  mov R0, global_synth_v_active
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  bnot R0
  jf R0, __if_4598_end
  jmp __for_4588_continue
__if_4598_end:
__if_4604_start:
  mov R0, global_synth_v_amp
  mov R1, [BP-13]
  iadd R0, R1
  mov R0, [R0]
  fle R0, 0.000000
  jf R0, __if_4604_end
  jmp __for_4588_continue
__if_4604_end:
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
__for_4588_continue:
  mov R0, [BP-13]
  iadd R0, 1
  mov [BP-13], R0
  jmp __for_4588_start
__for_4588_end:
  mov R0, [BP-10]
  fmul R0, 64.000000
  fmul R0, 1.600000
  cfi R0
  isgn R0
  iadd R0, 100
  mov [BP-11], R0
__if_4641_start:
  mov R0, [BP-11]
  ilt R0, 36
  jf R0, __if_4641_end
  mov R0, 36
  mov [BP-11], R0
__if_4641_end:
__if_4652_start:
  mov R0, [BP-11]
  igt R0, 164
  jf R0, __if_4652_end
  mov R0, 164
  mov [BP-11], R0
__if_4652_end:
  mov R0, [BP-7]
  cif R0
  mov R1, [BP-3]
  fmul R0, R1
  cfi R0
  iadd R0, 24
  mov [BP-12], R0
__if_4672_start:
  mov R0, [BP-6]
  cib R0
  jf R0, __if_4672_end
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  mov R1, [BP-12]
  mov [SP+2], R1
  mov R1, [BP-11]
  mov [SP+3], R1
  call __function_draw_line
__if_4672_end:
  mov R0, [BP-12]
  mov [BP-4], R0
  mov R0, [BP-11]
  mov [BP-5], R0
  mov R0, 1
  mov [BP-6], R0
__for_4562_continue:
  mov R0, [BP-7]
  iadd R0, 1
  mov [BP-7], R0
  jmp __for_4562_start
__for_4562_end:
__function_draw_scope_return:
  mov SP, BP
  pop BP
  ret

__function_is_black:
  push BP
  mov BP, SP
  push R1
__if_4690_start:
  mov R0, [BP+2]
  ieq R0, 1
  jt R0, __LogicalOr_ShortCircuit_4695
  mov R1, [BP+2]
  ieq R1, 3
  or R0, R1
__LogicalOr_ShortCircuit_4695:
  jt R0, __LogicalOr_ShortCircuit_4699
  mov R1, [BP+2]
  ieq R1, 6
  or R0, R1
__LogicalOr_ShortCircuit_4699:
  jt R0, __LogicalOr_ShortCircuit_4703
  mov R1, [BP+2]
  ieq R1, 8
  or R0, R1
__LogicalOr_ShortCircuit_4703:
  jt R0, __LogicalOr_ShortCircuit_4707
  mov R1, [BP+2]
  ieq R1, 10
  or R0, R1
__LogicalOr_ShortCircuit_4707:
  jf R0, __if_4690_end
  mov R0, 1
  jmp __function_is_black_return
__if_4690_end:
  mov R0, 0
__function_is_black_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_white_index:
  push BP
  mov BP, SP
__if_4716_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_4716_end
  mov R0, 0
  jmp __function_white_index_return
__if_4716_end:
__if_4722_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_4722_end
  mov R0, 1
  jmp __function_white_index_return
__if_4722_end:
__if_4728_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_4728_end
  mov R0, 2
  jmp __function_white_index_return
__if_4728_end:
__if_4734_start:
  mov R0, [BP+2]
  ieq R0, 5
  jf R0, __if_4734_end
  mov R0, 3
  jmp __function_white_index_return
__if_4734_end:
__if_4740_start:
  mov R0, [BP+2]
  ieq R0, 7
  jf R0, __if_4740_end
  mov R0, 4
  jmp __function_white_index_return
__if_4740_end:
__if_4746_start:
  mov R0, [BP+2]
  ieq R0, 9
  jf R0, __if_4746_end
  mov R0, 5
  jmp __function_white_index_return
__if_4746_end:
__if_4752_start:
  mov R0, [BP+2]
  ieq R0, 11
  jf R0, __if_4752_end
  mov R0, 6
  jmp __function_white_index_return
__if_4752_end:
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
__for_4765_start:
  mov R0, [BP-1]
  ilt R0, 128
  jf R0, __for_4765_end
  mov R0, 0.000000
  mov R1, global_note_level
  mov R2, [BP-1]
  iadd R1, R2
  mov [R1], R0
__for_4765_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4765_start
__for_4765_end:
  mov R0, 0
  mov [BP-1], R0
__for_4779_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_4779_end
__if_4788_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_4788_end
  mov R0, global_synth_v_note
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-2], R0
__if_4798_start:
  mov R0, [BP-2]
  ige R0, 0
  jf R0, __LogicalAnd_ShortCircuit_4803
  mov R1, [BP-2]
  ilt R1, 128
  and R0, R1
__LogicalAnd_ShortCircuit_4803:
  jf R0, __if_4798_end
__if_4806_start:
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov R1, [R1]
  fgt R0, R1
  jf R0, __if_4806_end
  mov R0, global_synth_v_level
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  mov R1, global_note_level
  mov R2, [BP-2]
  iadd R1, R2
  mov [R1], R0
__if_4806_end:
__if_4798_end:
__if_4788_end:
__for_4779_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4779_start
__for_4779_end:
__function_compute_note_levels_return:
  mov SP, BP
  pop BP
  ret

__function_draw_key_lit:
  push BP
  mov BP, SP
  isub SP, 6
__if_4828_start:
  mov R0, [BP+7]
  fle R0, 0.020000
  jf R0, __if_4828_end
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
__if_4828_end:
  mov R0, [BP+7]
  fmul R0, 127.000000
  cfi R0
  iadd R0, 128
  mov [BP-1], R0
__if_4850_start:
  mov R0, [BP-1]
  igt R0, 255
  jf R0, __if_4850_end
  mov R0, 255
  mov [BP-1], R0
__if_4850_end:
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
__for_4877_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_4877_end
  mov R0, 0
  mov [BP-3], R0
__for_4886_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_4886_end
__if_4896_start:
  mov R1, [BP-3]
  mov [SP], R1
  call __function_is_black
  cib R0
  jf R0, __if_4896_end
  jmp __for_4886_continue
__if_4896_end:
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
__for_4886_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4886_start
__for_4886_end:
__for_4877_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_4877_start
__for_4877_end:
  mov R0, 0
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_4937_start:
  mov R0, [BP-2]
  ilt R0, 2
  jf R0, __for_4937_end
  mov R0, 0
  mov [BP-3], R0
__for_4946_start:
  mov R0, [BP-3]
  ilt R0, 12
  jf R0, __for_4946_end
  mov R1, [BP-3]
  mov [SP], R1
  call __function_white_index
  mov [BP-4], R0
__if_4960_start:
  mov R0, [BP-4]
  ige R0, 0
  jf R0, __if_4960_end
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_4946_continue
__if_4960_end:
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
__if_4997_start:
  mov R0, [BP-8]
  fgt R0, 0.020000
  jf R0, __if_4997_else
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
  jmp __if_4997_end
__if_4997_else:
  mov R1, -14671840
  mov [SP], R1
  call __function_set_multiply_color
__if_4997_end:
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
__for_4946_continue:
  mov R0, [BP-3]
  iadd R0, 1
  mov [BP-3], R0
  jmp __for_4946_start
__for_4946_end:
__for_4937_continue:
  mov R0, [BP-2]
  iadd R0, 1
  mov [BP-2], R0
  jmp __for_4937_start
__for_4937_end:
__function_draw_keyboard_return:
  mov SP, BP
  pop BP
  ret

__function_phase_color:
  push BP
  mov BP, SP
__if_5035_start:
  mov R0, [BP+2]
  ieq R0, 1
  jf R0, __if_5035_end
  mov R0, -16711936
  jmp __function_phase_color_return
__if_5035_end:
__if_5041_start:
  mov R0, [BP+2]
  ieq R0, 2
  jf R0, __if_5041_end
  mov R0, -256
  jmp __function_phase_color_return
__if_5041_end:
__if_5047_start:
  mov R0, [BP+2]
  ieq R0, 3
  jf R0, __if_5047_end
  mov R0, -12533505
  jmp __function_phase_color_return
__if_5047_end:
__if_5053_start:
  mov R0, [BP+2]
  ieq R0, 4
  jf R0, __if_5053_end
  mov R0, -16744193
  jmp __function_phase_color_return
__if_5053_end:
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
__for_5062_start:
  mov R0, [BP-1]
  ilt R0, 16
  jf R0, __for_5062_end
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
__if_5096_start:
  mov R0, global_synth_v_active
  mov R1, [BP-1]
  iadd R0, R1
  mov R0, [R0]
  cib R0
  jf R0, __if_5096_end
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
__if_5096_end:
__for_5062_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5062_start
__for_5062_end:
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
  isub SP, 5
  mov R0, global_btn_prev
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  mov [BP-1], R0
__if_5168_start:
  mov R0, [BP+3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5173
  mov R1, [BP-1]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5173:
  jf R0, __if_5168_else
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
  jmp __if_5168_end
__if_5168_else:
__if_5187_start:
  mov R0, [BP+3]
  ile R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5192
  mov R1, [BP-1]
  igt R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5192:
  jf R0, __if_5187_end
__if_5196_start:
  mov R0, global_btn_voice
  mov R1, [BP+2]
  iadd R0, R1
  mov R0, [R0]
  ige R0, 0
  jf R0, __if_5196_end
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
__if_5196_end:
__if_5187_end:
__if_5168_end:
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
__if_5248_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_5248_end
  mov R0, 1
  mov [BP-1], R0
__if_5248_end:
__if_5255_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_5255_end
  mov R0, -1
  mov [BP-1], R0
__if_5255_end:
__if_5263_start:
  mov R0, [BP-1]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5268
  mov R1, [global_updown_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5268:
  jf R0, __if_5263_end
  mov R0, [global_manual_preset]
  mov R1, [BP-1]
  iadd R0, R1
  mov [global_manual_preset], R0
__if_5275_start:
  mov R0, [global_manual_preset]
  ilt R0, 0
  jf R0, __if_5275_end
  mov R0, 34
  mov [global_manual_preset], R0
__if_5275_end:
__if_5284_start:
  mov R0, [global_manual_preset]
  ige R0, 35
  jf R0, __if_5284_end
  mov R0, 0
  mov [global_manual_preset], R0
__if_5284_end:
__if_5263_end:
  mov R0, [BP-1]
  mov [global_updown_prev], R0
  mov R0, 0
  mov [BP-2], R0
__if_5297_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_5297_end
  mov R0, -1
  mov [BP-2], R0
__if_5297_end:
__if_5305_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_5305_end
  mov R0, 1
  mov [BP-2], R0
__if_5305_end:
__if_5312_start:
  mov R0, [BP-2]
  ine R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5317
  mov R1, [global_leftright_prev]
  ieq R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5317:
  jf R0, __if_5312_end
  mov R0, [1921]
  mov R1, [BP-2]
  isub R0, R1
  mov [BP-4], R0
__if_5327_start:
  mov R0, [BP-4]
  ilt R0, 3
  jf R0, __if_5327_end
  mov R0, 3
  mov [BP-4], R0
__if_5327_end:
__if_5334_start:
  mov R0, [BP-4]
  igt R0, 20
  jf R0, __if_5334_end
  mov R0, 20
  mov [BP-4], R0
__if_5334_end:
  mov R0, [BP-4]
  mov [1921], R0
__if_5312_end:
  mov R0, [BP-2]
  mov [global_leftright_prev], R0
  call __function_gamepad_button_start
  mov [BP-3], R0
__if_5351_start:
  mov R0, [BP-3]
  igt R0, 0
  jf R0, __LogicalAnd_ShortCircuit_5356
  mov R1, [global_start_prev]
  ile R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_5356:
  jf R0, __if_5351_end
__if_5360_start:
  mov R0, [global_synth_seq_playing]
  cib R0
  jf R0, __if_5360_else
  call __function_synth_seq_stop
  jmp __if_5360_end
__if_5360_else:
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__if_5360_end:
__if_5351_end:
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
__for_5377_start:
  mov R0, [BP-1]
  ilt R0, 6
  jf R0, __for_5377_end
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
__for_5377_continue:
  mov R0, [BP-1]
  iadd R0, 1
  mov [BP-1], R0
  jmp __for_5377_start
__for_5377_end:
  mov R0, 0
  mov [global_frame_count], R0
  mov R1, global_song
  mov [SP], R1
  call __function_synth_seq_play
__while_5404_start:
__while_5404_continue:
  mov R0, 1
  jf R0, __while_5404_end
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
  jmp __while_5404_start
__while_5404_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

__literal_string_2844:
  string "SQ LEAD"
__literal_string_2845:
  string "PLS LEAD"
__literal_string_2846:
  string "SAW LEAD"
__literal_string_2847:
  string "SINE LEAD"
__literal_string_2848:
  string "CHIP LEAD"
__literal_string_2849:
  string "SUB BASS"
__literal_string_2850:
  string "TRI BASS"
__literal_string_2851:
  string "SQ BASS"
__literal_string_2852:
  string "SAW BASS"
__literal_string_2853:
  string "PLUCK BASS"
__literal_string_2854:
  string "SQ PLUCK"
__literal_string_2855:
  string "SAW PLUCK"
__literal_string_2856:
  string "E-PIANO"
__literal_string_2857:
  string "HARP"
__literal_string_2858:
  string "MARIMBA"
__literal_string_2859:
  string "SAW PAD"
__literal_string_2860:
  string "SQ PAD"
__literal_string_2861:
  string "WARM PAD"
__literal_string_2862:
  string "STRINGS"
__literal_string_2863:
  string "ORGAN"
__literal_string_2864:
  string "SOFT ORGAN"
__literal_string_2865:
  string "BRASS"
__literal_string_2866:
  string "BELL"
__literal_string_2867:
  string "CHIME"
__literal_string_2868:
  string "ZAP"
__literal_string_2869:
  string "LASER"
__literal_string_2870:
  string "SIREN"
__literal_string_2871:
  string "DROP"
__literal_string_2872:
  string "KICK"
__literal_string_2873:
  string "SNARE"
__literal_string_2874:
  string "CL HAT"
__literal_string_2875:
  string "OP HAT"
__literal_string_2876:
  string "TOM"
__literal_string_2877:
  string "CLAP"
__literal_string_2878:
  string "COWBELL"
__literal_string_5125:
  string "VIRCON32 SYNTHESIZER"
__literal_string_5129:
  string "PRESET:"
__literal_string_5133:
  string "A B X Y L R = PLAY   UP/DN = PRESET   START = SONG"
