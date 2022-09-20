# entre(between) 
is a multifaceted string splitting user function
It tries to avoid the complicated juggling with string functions as 

  left,right,mid,search, length 

usually required in Excel to split a string

## arguments: 

### required:
#### 1  string to split


#### 2  start point: 
        can be an integer or a string.
 
	positive is offset from start, negative is offser from end

	string denotes a match. If 4th argument is not 0, it uses the nth match

### optional:
#### 3  end point: 
              If null it means up to the end. 

              If positive it's number of chars taken. 

	      If negative is'ts end position counted from the right

	      If string, cuts before the first occurrence after start

#### 4  integer. Take the nth occurrence of the start point. Only if argument 2 (start point) is a string, indicates 
   to start after the nth occurrence of the start point pattern

## Examples:
  =entre(B5,"KTE","feature") does the same as =MID(B5,SEARCH("KTE",B5)+3,SEARCH("feature",B5)-SEARCH("KTE",B5)-4)

  =entre(B5,,4) does the same as = left(B5,4)

  =entre(B5,-4) does the same as = right(B5,4)
