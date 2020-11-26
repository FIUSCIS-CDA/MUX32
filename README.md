#### MODULE NAME
       MUX32

#### DEPENDENCIES
       Decoder_32, MUX2

#### INPUTS
Name | Size(Bits)
------|------------
I0  |     1      
I1  |     1      
I2  |     1     
I3  |     1      
I4  |     1      
I5  |     1      
I6  |     1      
I7  |     1      
I8  |     1      
I9  |     1      
I10  |     1      
I11  |     1      
I12  |     1      
I13  |     1      
I14  |     1      
I15  |     1      
I16  |     1      
I17  |     1      
I18  |     1      
I19  |     1      
I20  |     1      
I21  |     1      
I22  |     1      
I23  |     1      
I24  |     1      
I25  |     1      
I26  |     1      
I27  |     1      
I28  |     1      
I29  |     1      
I30  |     1      
I31  |     1      
S   |     5      

#### OUTPUTS
Name | Size(Bits)
-----|------------
Y   |     1      

#### DESCRIPTION
       32-input  multiplexor with one-bit inputs.  S is a five-bit value (0 to
       31).  Output Y is set to input number designated by S (0 to 31).

#### UTHOR
       Alexander T Pastoriza

#### SEE ALSO
       qms(1), modclone(1)
