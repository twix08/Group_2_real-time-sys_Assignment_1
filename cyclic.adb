with Ada.Calendar;
with Ada.Text_IO;
use Ada.Calendar;
use Ada.Text_IO;

-- From the output, you should see that the start times of F1, F2, and F3 have drifts
-- accumulated with time going by, which is NOT allowed in your final output
-- Note: Some amount of jitter in the start times of the functions cannot be avoided. However,
-- the start times of the functions are not allowed to drift further and further away from the schedule!
-- think this is DONE!

procedure cyclic is
    Message: constant String := "Cyclic scheduler";
        -- change/add your declarations here
        d: Duration := 1.0;
	Start_Time: Time := Clock;
	s: Integer := 0;


    -- CAN U READ THIS SAMME???? :)
    -- Wow! But, we can not compile using this ........:( have to use bash/command)
--- hmm,  my bad. Yes, it looks better than the other one (GPS community...)
    -- Yes, I can! I can also see your caret moving around as you type.
    -- :(. Still seems awesome though!
	procedure f1 is
		Message: constant String := "f1 executing, time is now";
	begin
		Put(Message);
		Put_Line(Duration'Image(Clock - Start_Time));
	end f1;

	procedure f2 is 
		Message: constant String := "f2 executing, time is now";
	begin
		Put(Message);
		Put_Line(Duration'Image(Clock - Start_Time));
	end f2;

	procedure f3 is
		Message: constant String := "f3 executing, time is now";
	begin
		Put(Message);
		Put_Line(Duration'Image(Clock - Start_Time));
	end f3;

	begin
        loop
            -- change/add your code inside this loop
                f1;
                f2;
                f3;
                delay d;
        end loop;
end cyclic;
