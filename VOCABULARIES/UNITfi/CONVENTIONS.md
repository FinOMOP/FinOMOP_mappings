# UNITfi conventions 

Units in the source data must be cleaned before attempting to match the to the UNITfi vocabulary. 
This helps to reduce the number of units in the vocabulary and to improve the matching process.
The following conventions are used to clean the units:

- Lowercase all characters
- Remove all spaces
- Remove special characters: except for the following: /, %, °, -, ()
- Convert µ to u


This still allows for many different permutations of the same unit. 
For a cleaner version of the units, in the context of the LABfi vocabulary, we recommend to use only the units marked TRUE in the column `ADD_INFO:UniqueForLab`.