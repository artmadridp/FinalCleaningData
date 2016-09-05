#Getting and cleaning data final project codebook

##The variables

**Identifying variables**

 [1]"Subject" - Subject identifier                                               
 [2] "Activity" - Description of activity performed by subject

**Time domain signals: Captured at a constant rate of 50 Hz.**

 Body and gravity XYZ acceleration mean and standard deviation:

  [3] "timebodyaccelerationmeanx"                                  
  [4] "timebodyaccelerationmeany"                                  
  [5] "timebodyaccelerationmeanz"                                  
  [6] "timebodyaccelerationstandarddeviationx"                     
  [7] "timebodyaccelerationstandarddeviationy"                     
  [8] "timebodyaccelerationstandarddeviationz"                     
  [9] "timegravityaccelerationmeanx"                               
 [10] "timegravityaccelerationmeany"                               
 [11] "timegravityaccelerationmeanz"                               
 [12] "timegravityaccelerationstandarddeviationx"                  
 [13] "timegravityaccelerationstandarddeviationy"                  
 [14] "timegravityaccelerationstandarddeviationz"
 
  Time derivation of previous variables to obtain Jerk variables:   
  
  [15] "timebodyaccelerationjerkmeanx"                              
  [16] "timebodyaccelerationjerkmeany"                              
  [17] "timebodyaccelerationjerkmeanz"                              
  [18] "timebodyaccelerationjerkstandarddeviationx"                 
  [19] "timebodyaccelerationjerkstandarddeviationy"                 
  [20] "timebodyaccelerationjerkstandarddeviationz"                 
  [21] "timebodygyromeanx"                                          
  [22] "timebodygyromeany"                                          
  [23] "timebodygyromeanz"                                          
  [24] "timebodygyrostandarddeviationx"                             
  [25] "timebodygyrostandarddeviationy"                             
  [26] "timebodygyrostandarddeviationz"                             
  [27] "timebodygyrojerkmeanx"                                      
  [28] "timebodygyrojerkmeany"                                      
  [29] "timebodygyrojerkmeanz"                                      
  [30] "timebodygyrojerkstandarddeviationx"                         
  [31] "timebodygyrojerkstandarddeviationy"                         
  [32] "timebodygyrojerkstandarddeviationz"                         
	
	Magnitude of three-dimensional  signals using the Euclidean norm:

  [33] "timebodyaccelerationmagnitudemean"                          
  [34] "timebodyaccelerationmagnitudestandarddeviation"             
  [35] "timegravityaccelerationmagnitudemean"                       
  [36] "timegravityaccelerationmagnitudestandarddeviation"          
  [37] "timebodyaccelerationjerkmagnitudemean"                      
  [38] "timebodyaccelerationjerkmagnitudestandarddeviation"         
  [39] "timebodygyromagnitudemean"                                  
  [40] "timebodygyromagnitudestandarddeviation"                     
  [41] "timebodygyrojerkmagnitudemean"                              
  [42] "timebodygyrojerkmagnitudestandarddeviation"                 

**Frequency domain signals, obtained using a Fast Fourier Transform (FFT)**

	Body and gravity XYZ acceleration mean and standard deviation:

  [43] "frequencybodyaccelerationmeanx"                             
  [44] "frequencybodyaccelerationmeany"                             
  [45] "frequencybodyaccelerationmeanz"                             
  [46] "frequencybodyaccelerationstandarddeviationx"                
  [47] "frequencybodyaccelerationstandarddeviationy"                
  [48] "frequencybodyaccelerationstandarddeviationz" 

 Time derivation of previous variables to obtain Jerk variables:                

  [49] "frequencybodyaccelerationjerkmeanx"                         
  [50] "frequencybodyaccelerationjerkmeany"                         
  [51] "frequencybodyaccelerationjerkmeanz"                         
  [52] "frequencybodyaccelerationjerkstandarddeviationx"            
  [53] "frequencybodyaccelerationjerkstandarddeviationy"            
  [54] "frequencybodyaccelerationjerkstandarddeviationz"        
  [55] "frequencybodygyromeanx"                                     
  [56] "frequencybodygyromeany"                                     
  [57] "frequencybodygyromeanz"                                     
  [58] "frequencybodygyrostandarddeviationx"                        
  [59] "frequencybodygyrostandarddeviationy"                        
  [60] "frequencybodygyrostandarddeviationz"

 Magnitude of three-dimensional  signals using the Euclidean norm:                        

  [61] "frequencybodyaccelerationmagnitudemean"                     
  [62] "frequencybodyaccelerationmagnitudestandarddeviation"        
  [63] "frequencybodybodyaccelerationjerkmagnitudemean"             
  [64] "frequencybodybodyaccelerationjerkmagnitudestandarddeviation"
  [65] "frequencybodybodygyromagnitudemean"                         
  [66] "frequencybodybodygyromagnitudestandarddeviation"            
  [67] "frequencybodybodygyrojerkmagnitudemean"                     
  [68] "frequencybodybodygyrojerkmagnitudestandarddeviation"  
