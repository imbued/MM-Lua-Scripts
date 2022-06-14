itools = dofile('lib_input_tools.lua')
core = dofile('lib_core.lua')

---------- Contents:

	-- Advance visual and input frames without performing inputs
	-- Advance visual and input frames while performing inputs
		-- Control Stick
		-- Buttons
		-- Control Stick/Button Combinations
	-- Setup Movements
		-- Turns
		-- Slashes
	-- Explosive Tricks
		-- ISG
		-- Recoil Flip
		-- Megaflip
		-- Goron Pound Clip
	
	
-- Note: For functions for tricks, see if you can pass in a parameter to choose what C Button an item is on, such as bombs, and if no parameter is chosen it defaults to C Down, for example

----- Input and Button Priority Order:

	-- Control Stick (Up/Down/Left/Right)
	-- A
	-- B
	-- C Up
	-- C Down
	-- C Left
	-- C Right
	-- R
	-- Z
	
	--- The functions listed below incolving control stick and button combinations will be named in accordance with this order

-- "Megaflip" is one word
	
	
----- Advance some amount of frames without performing any inputs


function i_advance(amount)

	--- Advance some nonnegative integer amount of input frames

    for i = 1, amount, 1 do
        itools.iframe_advance()
    end
end

function v_advance(amount)

	--- Advance some nonnegative integer amount of visual frames
	
    for i = 1, amount, 1 do
        itools.vframe_advance()
    end
end


----- Advance some amount of frames while performing some inputs

	----- Control Stick: Visual Frames
	
function v_advance_hold_up(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting directly Up on the control stick

    for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting directly Down on the control stick

	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting directly Left on the control stick
	
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting directly Right on the control stick
	
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=127,['Y Axis']=0})
    end
end

	----- Control Stick: Input Frames

function i_advance_hold_up(amount)

	--- Advance some nonnegative integer amount of input frames while inputting directly Up on the control stick

    for i = 1, amount, 1 do
        itools.iframe_advance({['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down(amount)

	--- Advance some nonnegative integer amount of input frames while inputting directly Down on the control stick

	for i = 1, amount, 1 do
        itools.iframe_advance({['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting directly Left on the control stick
	
	for i = 1, amount, 1 do
        itools.iframe_advance({['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting directly Right on the control stick
	
	for i = 1, amount, 1 do
        itools.vframe_advance({['X Axis']=127,['Y Axis']=0})
    end
end

	----- Buttons: Visual Frames

function v_advance_press_A(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting A
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true})
    end
end

function v_advance_press_B(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting B
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['B']=true})
    end
end

function v_advance_press_C_Up(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting C Up
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['C Up']=true})
    end
end

function v_advance_press_C_Down(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting C Down
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['C Down']=true})
    end
end

function v_advance_press_C_Left(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting C Left
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['C Left']=true})
    end
end

function v_advance_press_C_Right(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting C Right
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['C Right']=true})
    end
end

function v_advance_press_R(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting R
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true})
    end
end

function v_advance_press_Z(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting Z
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true})
    end
end

	----- Buttons: Input Frames

function i_advance_press_A(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting A
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true})
    end
end

function i_advance_press_B(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting B
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['B']=true})
    end
end

function i_advance_press_C_Up(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting C Up
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['C Up']=true})
    end
end

function i_advance_press_C_Down(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting C Down
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['C Down']=true})
    end
end

function i_advance_press_C_Left(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting C Left
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['C Left']=true})
    end
end

function i_advance_press_C_Right(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting C Right
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['C Right']=true})
    end
end

function i_advance_press_R(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting R
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['R']=true})
    end
end

function i_advance_press_Z(amount)
	
	--- Advance some nonnegative integer amount of input frames while inputting Z
	
    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true})
    end
end

	----- Control Stick/Button Combinations: Visual Frames

function v_advance_hold_up_and_A(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and A

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_A(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and A

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_A(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and A

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_A(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and A

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['B']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['B']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['B']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['B']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['R']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_target(amount)

	--- Duplicate of v_advance_hold_up_and_Z() 
	--- Advance some nonnegative integer amount of visual frames while inputting Up and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_target(amount)

	--- Duplicate of v_advance_hold_down_and_Z() 
	--- Advance some nonnegative integer amount of visual frames while inputting Down and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_target(amount)

	--- Duplicate of v_advance_hold_left_and_Z()
	--- Advance some nonnegative integer amount of visual frames while inputting Left and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_target(amount)

	--- Duplicate of v_advance_hold_right_and_Z()
	--- Advance some nonnegative integer amount of visual frames while inputting Right and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and A and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['B']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and A and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['B']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and A and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['B']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and A and B

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['B']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and A and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and A and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and A and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['R']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and A and R

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['R']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function v_advance_hold_up_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Up and A and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function v_advance_hold_down_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Down and A and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function v_advance_hold_left_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Left and A and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function v_advance_hold_right_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of visual frames while inputting Right and A and Z

    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end

	----- Control Stick/Button Combinations: Input Frames

function i_advance_hold_up_and_A(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and A

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_A(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and A

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_A(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and A

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_A(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and A

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['B']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['B']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['B']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['B']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['R']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['R']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['R']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['R']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_target(amount)

	--- Duplicate of i_advance_hold_up_and_Z() 
	--- Advance some nonnegative integer amount of input frames while inputting Up and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_target(amount)

	--- Duplicate of i_advance_hold_down_and_Z() 
	--- Advance some nonnegative integer amount of input frames while inputting Down and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_target(amount)

	--- Duplicate of i_advance_hold_left_and_Z()
	--- Advance some nonnegative integer amount of input frames while inputting Left and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_target(amount)

	--- Duplicate of i_advance_hold_right_and_Z()
	--- Advance some nonnegative integer amount of input frames while inputting Right and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and A and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['B']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and A and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['B']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and A and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['B']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_A_and_B(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and A and B

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['B']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and A and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and A and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['R']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and A and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['R']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_A_and_R(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and A and R

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['R']=true,['X Axis']=127,['Y Axis']=0})
    end
end

function i_advance_hold_up_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Up and A and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['Z']=true,['X Axis']=0,['Y Axis']=127})
    end
end

function i_advance_hold_down_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Down and A and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['Z']=true,['X Axis']=0,['Y Axis']=-128})
    end
end

function i_advance_hold_left_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Left and A and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['Z']=true,['X Axis']=-128,['Y Axis']=0})
    end
end

function i_advance_hold_right_and_A_and_Z(amount)

	--- Advance some nonnegative integer amount of input frames while inputting Right and A and Z

    for i = 1, amount, 1 do
        itools.iframe_advance({['A']=true,['Z']=true,['X Axis']=127,['Y Axis']=0})
    end
end


----- Setup Movements

	----- Turns

function Turn_Up()
	
	-- Press Z to target for 1 visual frame, then do nothing for 5 visual frames, then hold Up for 1 visual frame
	-- clear inputs at the start of each function for safety
	-- advance visual frame at the start for safety
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=0,['Y Axis']=127})
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
end

function Turn_Down()
	
	-- Press Z to target for 1 visual frame, then do nothing for 5 visual frames, then hold Down for 1 visual frame
	-- clear inputs at the start of each function for safety
	-- advance visual frame at the start for safety
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=0,['Y Axis']=-128})
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
end

function Turn_Left()
	
	-- Press Z to target for 1 visual frame, then do nothing for 5 visual frames, then hold Left for 1 visual frame
	-- clear inputs at the start of each function for safety
	-- advance visual frame at the start for safety
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=-128,['Y Axis']=0})
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
end

function Turn_Right()
	
	-- Press Z to target for 1 visual frame, then do nothing for 5 visual frames, then hold Right for 1 visual frame
	-- clear inputs at the start of each function for safety
	-- advance visual frame at the start for safety
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	itools.vframe_advance({['Z']=true})
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=127,['Y Axis']=0})
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
end

	----- Slashes (Kokiri/Razor/Gilded)
		-- These are not perfectly optimized, but are safe to use for finding setups and fairly efficient

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
	
	itools.vframe_advance({['Z']=true}) -------- I added a Z input here instead of no input for moon warp script
	
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
	
	v_advance(12)
	
end

	----- ISG
	
function set_down_isg(C_Button)
	
	-- set down a bomb and get isg 
	-- This takes a total of 42 visual frames
	
	--- C_Button is an optional argument for which C Button bombs are equipped to
	
	assert(C_Button == 'C Down' or C_Button == 'C Left' or C_Button == 'C_Right' or C_Button == nil, 'Invalid Argument for set_down_isg(), must input either "C Left", "C Down", or "C Right"')

	if C_Button == nil then
		C_Button = 'C Down'
	end
	
	itools.vframe_advance({[C_Button]=true})
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
	
	v_advance(19)
	
	-- can perform the first input to walk somewhere (for example) on the next frame
	

end

function shield_drop_isg(C_Button)
	
	-- frame perfectly shield drop a bomb and get isg off of it
	-- This takes a total of 34 visual frames
	
	--- C_Button is an optional argument for which C Button bombs are equipped to
	
	assert(C_Button == 'C Down' or C_Button == 'C Left' or C_Button == 'C_Right' or C_Button == nil, 'Invalid Argument for shield_drop_isg(), must input either "C Left", "C Down", or "C Right"')

	if C_Button == nil then
		C_Button = 'C Down'
	end
	
	itools.vframe_advance({[C_Button]=true})
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


	----- Bomb Recoil Flip

function Bomb_Recoil_Flip(C_Button)
	
	--- C_Button is an optional argument for which C Button bombs are equipped to
	
	assert(C_Button == 'C Down' or C_Button == 'C Left' or C_Button == 'C_Right' or C_Button == nil, 'Invalid Argument for Bomb_Recoil_Flip(), must input either "C Left", "C Down", or "C Right"')

	if C_Button == nil then
		C_Button = 'C Down'
	end
	
	itools.clear_inputs()
	
	-- pull bomb
	itools.vframe_advance({[C_Button]=true})
	itools.clear_inputs()
	
	v_advance_press_Z(69)
	
	itools.vframe_advance({['R']=true, ['A']=true, ['Z']=true,['X Axis']=0,['Y Axis']=-128})
	itools.clear_inputs()
	
	v_advance_press_R(4)
	
end	

	----- Bomb Megaflip

function Bomb_Megaflip(C_Button)
	
	--- C_Button is an optional argument for which C Button bombs are equipped to
	
	assert(C_Button == 'C Down' or C_Button == 'C Left' or C_Button == 'C_Right' or C_Button == nil, 'Invalid Argument for Bomb_Megaflip(), must input either "C Left", "C Down", or "C Right"')

	if C_Button == nil then
		C_Button = 'C Down'
	end
	
	itools.clear_inputs()
	
	-- pull bomb
	itools.vframe_advance({[C_Button]=true})
	itools.clear_inputs()
	
	v_advance_press_Z(59)
	
	itools.vframe_advance({['R']=true, ['A']=true, ['Z']=true})
	itools.clear_inputs()
	
	v_advance_press_Z(11)
	
	itools.vframe_advance({['A']=true, ['Z']=true,['X Axis']=0,['Y Axis']=-128})
	itools.clear_inputs()
	
	v_advance_press_R(4)
	
end

	----- Goron Pound Clip

function Goron_Pound_Clip(Bomb_C_Button, Goron_C_Button)
	
	--- turn down, set down a bomb, turn up, turn goron, goron pound clip (2 frame window for uncurl)
	--- not optimized, but fairly efficient and safe to use
	
	--- Bomb_C_Button is an optional argument for which C Button bombs are equipped to
	
	assert(Bomb_C_Button == 'C Down' or Bomb_C_Button == 'C Left' or Bomb_C_Button == 'C_Right' or Bomb_C_Button == nil, 'Invalid Argument for Goron_Pound_Clip(), must input either "C Left", "C Down", or "C Right"')

	if Bomb_C_Button == nil then
		Bomb_C_Button = 'C Down'
	end
	
	--- Goron_C_Button is an optional argument for which C Button Goron Mask is equipped to
	
	assert(Goron_C_Button == 'C Down' or Goron_C_Button == 'C Left' or Goron_C_Button == 'C_Right' or Goron_C_Button == nil, 'Invalid Argument for Goron_Pound_Clip(), must input either "C Left", "C Down", or "C Right"')

	if Goron_C_Button == nil then
		Goron_C_Button = 'C Right'
	end
	
	assert(Bomb_C_Button ~= Goron_C_Button, 'Invalid Arguments for Goron_Pound_Clip(), Bombs and Goron Mask must be on different C Buttons')
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['Z']=true})
	
	itools.clear_inputs()
	
	v_advance(5)
	
	itools.vframe_advance({['X Axis']=0,['Y Axis']=-128,[Bomb_C_Button]=true})
	
	itools.clear_inputs()
	
	itools.vframe_advance()
	
	-- This input sets down the bomb
	itools.vframe_advance({['A']=true})
	
	itools.clear_inputs()
	
	v_advance(11)
	
	itools.vframe_advance({['C Right']=true})
	
	itools.clear_inputs()
	
	v_advance(4)
	
	-- Skip mask transition cutscene
	itools.vframe_advance({['A']=true})
	
	itools.clear_inputs()
	
	v_advance(21)
	
	-- control stick direction for mask transition
	itools.vframe_advance({['X Axis']=0,['Y Axis']=127})
	
	itools.clear_inputs()
	
	-- turn up before curling
	itools.vframe_advance({['X Axis']=0,['Y Axis']=127})
	
	itools.clear_inputs()
	
	-- find out how many frames to wait before curling + pounding so bomb timing is correct --- 27 
	
	v_advance(27)
	
	-- curl
	v_advance_press_A(8)
	
	-- pound
	itools.vframe_advance({['A']=true,['B']=true})
	
	itools.clear_inputs()
	
	v_advance_press_A(17)
	
	-- release A after 17 frames (have -11 y velocity at this point)
	itools.clear_inputs()
	
	-- 4 frames of -20 y velocity followed by a frame of 15 linear velocity
	v_advance(5)
	
	-- wait 6 visual frames for position to become constant
	
	v_advance(6)
	
	-- waiting even more just in case
	
	v_advance(6)
	
end

	----- Chu Hover

function Chu_Hover(C_Button)
	
	--- C_Button is an optional argument for which C Button chus are equipped to
													  -- TODO: I wrote 'C_Right' instead of 'C Right'????
	assert(C_Button == 'C Down' or C_Button == 'C Left' or C_Button == 'C_Right' or C_Button == nil, 'Invalid Argument for Chu_Hover(), must input either "C Left", "C Down", or "C Right"')

	if C_Button == nil then
		C_Button = 'C Right'
	end
	
	itools.clear_inputs()
	
	v_advance_press_Z(1)
	itools.vframe_advance({['A']=true, ['Z']=true,['X Axis']=0,['Y Axis']=-128})
	
	
	-- pull bomb
	itools.vframe_advance({[C_Button]=true})
	itools.clear_inputs()
	
	v_advance_press_R(13)
	itools.clear_inputs()
	
end	




function v_advance_press_A_and_Z(amount)
	
	--- Advance some nonnegative integer amount of visual frames while inputting A and Z
	
    for i = 1, amount, 1 do
        itools.vframe_advance({['A']=true,['Z']=true})
    end
end

	----- ESS Turns

function ESS_Right()
		
	itools.clear_inputs()
	
	-- need to hold ESS for 2 frames to get 1 ess turn if initially stationary
	itools.vframe_advance({['X Axis']=18,['Y Axis']=0})
	itools.vframe_advance({['X Axis']=18,['Y Axis']=0})
	
	itools.clear_inputs()
	
end	

function ESS_Left()
		
	itools.clear_inputs()
	
	-- need to hold ESS for 2 frames to get 1 ess turn if initially stationary
	itools.vframe_advance({['X Axis']=-18,['Y Axis']=0})
	itools.vframe_advance({['X Axis']=-18,['Y Axis']=0})
	
	itools.clear_inputs()
	
end	
