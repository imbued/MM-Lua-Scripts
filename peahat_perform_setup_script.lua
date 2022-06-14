itools = dofile('lib_input_tools.lua')
core = dofile('lib_core.lua')

function i_advance(amount)
    for i = 1, amount, 1 do
        itools.iframe_advance()
    end
end

function v_advance(amount)
    for i = 1, amount, 1 do
        itools.vframe_advance()
    end
end

function v_advance_press_A(amount)
    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true})
    end
end

function v_advance_press_Z(amount)
    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true})
    end
end

function v_advance_press_R(amount)
    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true})
    end
end

function v_advance_hold_up(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_up_and_target(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=127,['Z']=true})
    end
end

function v_advance_hold_down_and_target(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=-128,['Z']=true})
    end
end

function v_advance_hold_right(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_target(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=127,['Y Axis']=0,['Z']=true})
    end
end

function set_down_isg_targeted()

	-- set down a bomb (on C-Down) and get isg 
	-- This takes a total of 42 visual frames
	
	itools.vframe_advance({['C Down']=true})
	itools.clear_inputs()
	
	v_advance(1)
	itools.vframe_advance({['A']=true})
	itools.clear_inputs()
	
	v_advance_press_R(12)
	itools.vframe_advance({['R']=true,['B']=true})
	itools.clear_inputs()
	
	v_advance_press_R(6)
	itools.vframe_advance({['R']=true,['A']=true})
	itools.clear_inputs()
	
	v_advance_press_Z(19)
	itools.clear_inputs()
	
	-- can perform the first input to walk somewhere (for example) on the next frame
	

end

function shield_drop_isg()

	-- frame perfectly shield drop a bomb (on C-Down) and get isg off of it
	-- This takes a total of 34 visual frames
	
	itools.vframe_advance({['C Down']=true})
	itools.clear_inputs()
	
	v_advance(2)
	v_advance_press_R(4)
	
	itools.vframe_advance({['R']=true,['B']=true})
	itools.clear_inputs()
	
	v_advance_press_R(6)
	itools.vframe_advance({['R']=true,['A']=true})
	itools.clear_inputs()
	
	v_advance(19)
	
	-- can perform the first input to walk somewhere (for example) on the next frame

end


-- Define functions to perform each movement option (except for 'Nothing')

-- Movement_Options = ['Untargeted Horizontal Slash', 
-- 'Untargeted Horizontal Slash, Shield', 'Targeted Vertical Slash', 'Targeted Vertical Slash, Untarget ASAP',
-- 'Untargeted Right Slash', 'Untargeted Right Slash, Shield', 'Targeted Forward Thrust', 
-- 'Targeted Forward Thrust, Untarget ASAP', 'Nothing', 'Dry Roll']



function Untargeted_Horizontal_Slash()
	
	itools.clear_inputs()
	
	v_advance(2)
	
	itools.vframe_advance({['B']=true})
	
	itools.clear_inputs()
	
	v_advance(15)
	
end

function Untargeted_Horizontal_Slash_Shield()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['B']=true})
	
	itools.clear_inputs()
	
	v_advance_press_R(10)
	
	itools.clear_inputs()
	
	v_advance(8)
	
end

function Targeted_Vertical_Slash()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['B']=true, ['Z']=true})
	
	v_advance_press_Z(8)
	
	itools.clear_inputs()
	
	v_advance(7)
	
	itools.clear_inputs()
	
	itools.vframe_advance()
end

function Targeted_Vertical_Slash_Untarget_ASAP()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['B']=true, ['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(14)
	
end

function Untargeted_Right_Slash()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=127,['Y Axis']=0,['B']=true})
	
	itools.clear_inputs()
	
	v_advance(17)
	
end

function Untargeted_Right_Slash_Shield()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=127,['Y Axis']=0,['B']=true})
	
	itools.clear_inputs()
	
	v_advance_press_R(9)
	
	itools.clear_inputs()
	
	v_advance(8)
	
end

function Targeted_Forward_Thrust()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=0,['Y Axis']=127,['B']=true,['Z']=true})
	
	itools.clear_inputs()
	
	v_advance_press_Z(8)
	
	itools.clear_inputs()
	
	v_advance(5)
	
end

function Targeted_Forward_Thrust_Untarget_ASAP()
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=0,['Y Axis']=127,['B']=true,['Z']=true})
	
	itools.clear_inputs()
	
	--v_advance(12)
	v_advance(4)
	
end

function Dry_Roll()
	
	------ This puts away sword before dry rolling
	
	itools.clear_inputs()
	
	v_advance_press_A(1)
	
	--- v_advance_press_Z(1) and get rid of the A press above if sword isn't drawn already
	v_advance_press_Z(6)
	itools.vframe_advance({['Z']=true, ['A']=true})
	itools.clear_inputs()
	
	v_advance(12)
	
end

function multiple_smoke_in_heap()
	
	-- This function returns true if there are at least 2 smoke AIs in the heap and false otherwise (unless something unexpected happens). Addresses are for JP 1.0
	
	two = 2 
	
	-- nodes have an offset of 8 to reach the 'next' node address stored in their instance
	heap_head_node = 0x40B3B0 -- JP 1.0
	node_size = 0x30 -- JP
	--heap_head_node + 0x8 
	
	current_node = heap_head_node
	
	-- if bizstring.hex(mainmemory.readbyte(current_node + node_size)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 1)) == '00A2'
	
	multiple_smoke = false
	
	smoke_count = 0
	-- the first 4 bytes of the bomb actor file are '27BDFFC8' and the bomb AF is outside of the relevant part of the heap, so we use this as a termination condition in case there are fewer than 2 smoke AIs
	bomb_AF_word = bizstring.hex(mainmemory.readbyte(current_node + node_size)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 1)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 2)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 3))
	while (bomb_AF_word  ~= '27BDFFC8') and smoke_count < two do
		
		bomb_AF_word = bizstring.hex(mainmemory.readbyte(current_node + node_size)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 1)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 2)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 3))
		
		-- check if the instance in front of the 
		if bizstring.hex(mainmemory.readbyte(current_node + node_size)) .. bizstring.hex(mainmemory.readbyte(current_node + node_size + 1)) == '00A2' and bizstring.hex(mainmemory.readbyte(current_node + 3)) ~= '01' then
			smoke_count = smoke_count + 1
			--print('smoke_count: ' .. smoke_count .. 'actor address: ' .. bizstring.hex(current_node + node_size) )
		end
		
		--next_node = mainmemory.readword(current_node + 8) - 0x80000000
		next_node = mainmemory.read_u24_be(current_node + 8 + 1)
		
		-- print('next_node = ' .. bizstring.hex(next_node))
		
		--next_node_1 = bizstring.hex(mainmemory.readbyte(current_node + 8 + 1))
		--next_node_2 = bizstring.hex(mainmemory.readbyte(current_node + 8 + 2))
		--next_node_3 = bizstring.hex(mainmemory.readbyte(current_node + 8 + 3))
		
		--next_node_string = next_node_1 .. next_node_2 .. next_node_3
	
		--next_node = string.char(tonumber(next_node_string, 16))
		
		current_node = next_node
		

	end
	
	if smoke_count >= two then
		multiple_smoke = true
	end
	
	return multiple_smoke
	
end

function v_advance_hold_down_and_target_and_shield(amount)
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=-128,['Z']=true,['R']=true})
    end
end


-- TODO (completed): 
-- - add all backflip frames
-- - uhhhhh i dont even need to do the shuffle to check if i clip??? verify this with some examples..... maybe you can make a note of "highest" (most negative) y velocity that you reach in the hover
-- - for every backflip, try shuffling at every y velocity (within reason -- maybe try -8.2, -9.2, -10.2, -11.2, -12.2, -13.2) -- can then consider backflip frames other than 66 (this will need some work) and can try bomb pull frames other than 14 and 15
--		- nvm the shuffle frames, but consider different backflip frames and different bomb pull frames 
-- START OF CODE

--file_write = io.open('peahat_ae_a.txt', 'w+')

initial_state_slot = 0
state_slot_1 = 1
state_slot_2 = 2
state_slot_3 = 3 
state_slot_0 = 4

--walk_options = {14, 15}
--backflip_frame_options = {63, 64, 65, 66, 67, 68, 69}
--backflip_frame_options = {64, 65, 66, 67, 68, 69}
backflip_frame_options = {65}
walk_options = {14}
target_options = {'target'} --{'target', 'no_target'}
k_value = 46
L_value = 5
set_down = false
shield_during_set_down = false




--itools.load_state(initial_state_slot)
itools.clear_inputs()
frame_count = 0 -- I orignally named this "current_frame" but accidentally wrote "frame_count" in most of the code instead, so I changed its name

-- COLLECT DATA OF INITIAL State (JP 1.0)
X_Position = core.read_float_be(0x3FFFC4,'RDRAM')
Z_Position = core.read_float_be(0x3FFFCC,'RDRAM')
Y_Position = core.read_float_be(0x3FFFC8,'RDRAM')

Angle1 = bizstring.hex(mainmemory.readbyte(0x40005E))
Angle2 = bizstring.hex(mainmemory.readbyte(0x40005F))

X_Position1 = bizstring.hex(mainmemory.readbyte(0x3FFFC4))
X_Position2 = bizstring.hex(mainmemory.readbyte(0x3FFFC5))
X_Position3 = bizstring.hex(mainmemory.readbyte(0x3FFFC6))
X_Position4 = bizstring.hex(mainmemory.readbyte(0x3FFFC7))

Y_Position1 = bizstring.hex(mainmemory.readbyte(0x3FFFC8))
Y_Position2 = bizstring.hex(mainmemory.readbyte(0x3FFFC9))
Y_Position3 = bizstring.hex(mainmemory.readbyte(0x3FFFCA))
Y_Position4 = bizstring.hex(mainmemory.readbyte(0x3FFFCB))

Z_Position1 = bizstring.hex(mainmemory.readbyte(0x3FFFCC))
Z_Position2 = bizstring.hex(mainmemory.readbyte(0x3FFFCD))
Z_Position3 = bizstring.hex(mainmemory.readbyte(0x3FFFCE))
Z_Position4 = bizstring.hex(mainmemory.readbyte(0x3FFFCF))




--file_write:write('Type 1 Backflip = Tap Backflip, Type 5 Backflip = Hold Backflip, Others are the corresponding intermediate types\n')
--file_write:write('== Initial State Data ==\n')
--file_write:write('Angle: ' .. Angle1 .. Angle2 .. '\n')
--file_write:write('X Position: ' .. X_Position1 .. X_Position2 .. X_Position3 .. X_Position4 .. '     Float: ' .. X_Position .. '\n')
--file_write:write('Y Position: ' .. Y_Position1 .. Y_Position2 .. Y_Position3 .. Y_Position4 .. '     Float: ' .. Y_Position .. '\n')
--file_write:write('Z Position: ' .. Z_Position1 .. Z_Position2 .. Z_Position3 .. Z_Position4 .. '     Float: ' .. Z_Position .. '\n\n================================================================\n\n')



-- in case the state wasn't already targeted, stand in place targeting for 6 frames
v_advance_press_Z(6)

-- assume bomb is on C-Down, need to hold shield for at least 3 frames!!
itools.vframe_advance({['R']=true,['Z']=true,['C Down']=true,['X Axis']=0,['Y Axis']=127})
itools.clear_inputs()
frame_count = frame_count + 1

itools.vframe_advance({['R']=true,['Z']=true,['X Axis']=0,['Y Axis']=127})
itools.clear_inputs()
frame_count = frame_count + 1

itools.vframe_advance({['R']=true,['Z']=true,['X Axis']=0,['Y Axis']=127})
itools.clear_inputs()
frame_count = frame_count + 1

store_frame_count_1 = frame_count

--- Create a Save State
--itools.save_state(state_slot_0)


for B = 1, table.getn(backflip_frame_options), 1 do
	backflip_frame = backflip_frame_options[B]


	for i = 1, table.getn(walk_options), 1 do
	
		bombs_not_too_close = true
		
		frame_count = store_frame_count_1
		
		-- load state
		--itools.load_state(state_slot_0)
		itools.clear_inputs()
		
		-- keep in mind that we are on frame 3 instead of frame 0, so we already walked for 1 frame, so 14 becomes 11 and 15 becomes 12
		v_advance_hold_up_and_target(walk_options[i] - 3)
		itools.clear_inputs()
		frame_count = frame_count + walk_options[i] - 3
		
		--- Create a Save State
		--itools.save_state(state_slot_1)
		
		store_frame_count_2 = frame_count
		
		-- test if the bombs are too close, worth noting that this tests if doing the end of the walk UNTARGETED is too close... if so, then doing it targeted is too close as well... it is possible that this script will not detect that the bombs are too close in the targeted case
		--itools.vframe_advance({['C Down']=true,['Z']=true})
		--itools.clear_inputs()
		--frame_count = frame_count + 1
		--print('frame count is: ' .. frame_count)
		--while frame_count < 75 and bombs_not_too_close == true do
			
		--	multiple_smoke = multiple_smoke_in_heap()
		--	v_advance(1)
		--	frame_count = frame_count + 1
			
			--print('frame count: ' .. frame_count .. 'multiple smoke: ' .. tostring(multiple_smoke))
			
		--	if multiple_smoke == true then
		--		bombs_not_too_close = false
		--		print('B=' .. B .. ' i=' .. i .. '   BOMBS TOO CLOSE')
		--	end
		--end
		
		-- if the bombs aren't too close, then continue with all of these options, otherwise label them as bombs too close
		if bombs_not_too_close == true then 
		
		
			for j = 1, table.getn(target_options), 1 do
			
				--itools.load_state(state_slot_1)
				itools.clear_inputs()
				frame_count = store_frame_count_2
				
				if target_options[j] == 'target' then
				
					-- pull bomb
					itools.vframe_advance({['C Down']=true,['Z']=true})
					itools.clear_inputs()
					v_advance_press_Z(4)
					itools.clear_inputs()
					frame_count = frame_count + 5
					
					v_advance(1)
					frame_count = frame_count + 1
					
				elseif target_options[j] == 'no_target' then
				
					itools.vframe_advance({['C Down']=true})
					itools.clear_inputs()
					v_advance(5)
					frame_count = frame_count + 6
				
				end
				
				-- now turn left
				itools.vframe_advance({['X Axis']=-128,['Y Axis']=0})
				itools.clear_inputs()
				frame_count = frame_count + 1
				
				-- now target for at least 6 frames
				v_advance_press_Z(6)
				itools.clear_inputs()
				frame_count = frame_count + 6
				
				--itools.save_state(state_slot_2)
				
				store_frame_count_3 = frame_count
				
				
				if set_down == true then 
				
					for k = k_value, k_value, 1 do
						
						--itools.load_state(state_slot_2)
						itools.clear_inputs()
						frame_count = store_frame_count_3
						
						v_advance_press_Z(k - frame_count)
						itools.clear_inputs()
						frame_count = frame_count + k - frame_count
						
						-- set down the bomb and start backwalking
						itools.vframe_advance({['C Down']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})
						itools.clear_inputs()
						frame_count = frame_count + 1
						
						if shield_during_set_down == false then
							v_advance_hold_down_and_target(backflip_frame - frame_count)
							itools.clear_inputs()
						elseif shield_during_set_down == true then
							v_advance_hold_down_and_target_and_shield(backflip_frame - frame_count)
							itools.clear_inputs()
						end
						frame_count = frame_count + backflip_frame - frame_count
						
						--itools.save_state(state_slot_3)
						store_frame_count_4 = frame_count
						
						for L = L_value, L_value, 1 do
						
							print('B=' .. B .. ' i=' .. i .. ' j=' .. j .. ' k=' .. k .. ' L=' .. L .. ' --')
							
							--itools.load_state(state_slot_3)
							itools.clear_inputs()
							frame_count = store_frame_count_4
							
							successful_clip = false
							
							-- hold backflip
							if L == 5 then
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
								
							-- tap backflip
							elseif L == 1 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['Z']=true}) -- 3
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 2 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 3
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 3 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 4 then
								
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 4
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
								
							end
							
							-- check for clip and record the y velocity on the first explosion frame of the 2nd bomb
							explosion_y_vel = 999
							drose = 0
							while drose < 30 do 
							
								y_pos = core.read_float_be(0x3FFFC8,'RDRAM')
								y_vel = core.read_float_be(0x400008,'RDRAM')
								
								-- you need to shield the 2nd explosion frame of the first bomb to not take damage mid hover (assuming shield is already being held, which it is)
								if frame_count < 72 then
									itools.vframe_advance({['R']=true,['Z']=true})
									itools.clear_inputs()
									frame_count = frame_count + 1
								else
									v_advance_press_Z(1)
									itools.clear_inputs()
									frame_count = frame_count + 1
								end
								
								if frame_count == walk_options[i] + 71 then
									explosion_y_vel = y_vel
								end
								
								if y_pos < -21 and successful_clip == false then
									print('Success!!!!!!!!!!!!!!!!!!!!!')
									successful_clip = true
								end
								
								drose = drose + 1
							
							end
						
						itools.clear_inputs()
						
						if successful_clip == true then
							successful_clip_string = 'True'
						else
							successful_clip_string = 'False'
						end
						
						--file_write:write('Backflip_Frame: ' .. backflip_frame_options[B] .. '     Walk_Option: ' .. walk_options[i] .. '     Target_Option: ' .. target_options[j] .. '     Bomb_Drop_Option: Set_Down_Bomb     Backwalk_Frame: ' .. k .. '     Backflip_Type: ' .. L .. '     Successful_Clip: ' .. successful_clip_string .. '     Explosion_y_vel: ' .. explosion_y_vel .. '\n')
						
						end -- end L for loop (1)
						
					
					
					end
					
				elseif set_down == false then 
				
					frame_count = store_frame_count_3
					
					for k = k_value, k_value, 1 do
					
						--itools.load_state(state_slot_2)
						itools.clear_inputs()
						frame_count = store_frame_count_3
						
						v_advance_press_Z(k - frame_count)
						itools.clear_inputs()
						frame_count = frame_count + k - frame_count
						
						-- shield drop the bomb and start backwalking
						if frame_count < backflip_frame then 
							itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})
							itools.clear_inputs()
							frame_count = frame_count + 1
						end
						
						v_advance_hold_down_and_target_and_shield(backflip_frame - frame_count)
						itools.clear_inputs()
						frame_count = frame_count + backflip_frame - frame_count
						
						--itools.save_state(state_slot_3)
						store_frame_count_4 = frame_count
						
						for L = L_value, L_value, 1 do
						
							print('B=' .. B .. ' i=' .. i .. ' j=' .. j .. ' k=' .. k .. ' L=' .. L .. ' --')
							
							--itools.load_state(state_slot_3)
							itools.clear_inputs()
							frame_count = store_frame_count_4
							
							successful_clip = false
							
							-- hold backflip
							if L == 5 then
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
								
							-- tap backflip
							elseif L == 1 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['Z']=true}) -- 3
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 2 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 3
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 3 then
							
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 4
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
							
							elseif L == 4 then
								
								itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 1
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 2
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true})	-- 3
								itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128,['Z']=true}) -- 4
								itools.clear_inputs()
								itools.vframe_advance({['R']=true,['Z']=true}) -- 5
								itools.vframe_advance({['R']=true,['Z']=true}) -- 6
								itools.clear_inputs()
								
								frame_count = frame_count + 6
								
							end
							
							-- check for clip and record the y velocity on the first explosion frame of the 2nd bomb
							explosion_y_vel = 999
							drose = 0
							while drose < 30 do 
							
								y_pos = core.read_float_be(0x3FFFC8,'RDRAM')
								y_vel = core.read_float_be(0x400008,'RDRAM')
								
								-- you need to shield the 2nd explosion frame of the first bomb to not take damage mid hover (assuming shield is already being held, which it is)
								if frame_count < 72 then
									itools.vframe_advance({['R']=true,['Z']=true})
									itools.clear_inputs()
									frame_count = frame_count + 1
								else
									v_advance_press_Z(1)
									itools.clear_inputs()
									frame_count = frame_count + 1
								end
								
								if frame_count == walk_options[i] + 71 then
									explosion_y_vel = y_vel
								end
								
								if y_pos < -21 and successful_clip == false then
									print('Success!!!!!!!!!!!!!!!!!!!!!')
									successful_clip = true
								end
								
								drose = drose + 1
							
							end
						
						itools.clear_inputs()
						
						if successful_clip == true then
							successful_clip_string = 'True'
						else
							successful_clip_string = 'False'
						end
						
						--file_write:write('Backflip_Frame: ' .. backflip_frame_options[B] .. '     Walk_Option: ' .. walk_options[i] .. '     Target_Option: ' .. target_options[j] .. '     Bomb_Drop_Option: Shield_Drop_Bomb     Backwalk_Frame: ' .. k .. '     Backflip_Type: ' .. L ..  '     Successful_Clip: ' .. successful_clip_string .. '     Explosion_y_vel: ' .. explosion_y_vel .. '\n')
						end -- end L for loop (2)
					
					
					end
				end -- end if statement
				
			
			end
		
		elseif bombs_not_too_close == false then
			print('drose')
			--file_write:write('Backflip_Frame: ' .. backflip_frame_options[B] .. '     Walk_Option: ' .. walk_options[i] .. ' ----- Bombs Too Close to Eachother, Terminated Testing -----   \n')
			
		end
	end
end
--file_write:close()
print('done')
