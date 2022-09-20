entre(between) 
is a multifaceted string splitting user function
It tries to avoid complicated splitting formulae juggling with left,right,extract,instr and length functions required
 usually to split a string
arguments 

required:
1  the original string (required)

2  start point: can be an integer or a string. 
	positive is offset from start, negative is offser from end
	string denotes a match. If 4th argument is not 0, it denotes the nth match

optional:
3  end point. If null it means up to the end. 
              If positive it's number of chars taken. 
	      If negative is'ts end position counted from the right
	      If string, cuts before the first occurrence after start

4  nth occurrence. Only if start point is string, indicates to start after the nt occurrence of start point pattern

Examples
   ' =entre(s,,4) does the same as left(s,4)
   ' =entre(s,-4) does the same as right(s,4)