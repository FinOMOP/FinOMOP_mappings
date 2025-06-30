# UNITfi conventions 

Units in the source data must be cleaned before attempting to match the to the UNITfi vocabulary. 
This helps to reduce the number of units in the vocabulary and to improve the matching process.
The following conventions are used to clean the units:

- Lowercase all characters
- Remove all spaces
- Remove special characters: except for the following: /, %, °, -, ()
- Convert µ to u


Rather than adding permutations for the current units, we recomend to use a local translation table to convert the units to the UNITfi vocabulary. 

For example common units in the source data are:


| localCode       | sourceCode   |
| --------------- | ------------ |
| (suhde)         | suhde        |
| c               | °c           |
| cp              | cp(+37c)     |
| cp(37c)         | cp(+37c)     |
| e09/l           | e9/l         |
| g/vrk           | g/24h        |
| hengenvetoa/min | bpm          |
| indeksi         | index        |
| jdf-u           | jdfu         |
| kopio/ml        | copy/ml      |
| kopiot/ml       | copy/ml      |
| kopiota/ml      | copy/ml      |
| ku/i            | ku/l         |
| mg/vrk          | mg/24h       |
| mikrog/g        | ug/g         |
| ml/min/17       | ml/min/173m2 |
| ml/vrk          | ml/24h       |
| mlu/l           | mlu/l        |
| mmo/l           | mmo/l        |
| mmol/vrk        | mmol/24h     |
| pmoll           | pmol/l       |
| sek             | s            |
| t               | h            |
| tiitteri        | titre        |
| titt            | titre        |
| titteri         | titre        |
| tunti           | h            |
| u/i             | u/l          |
| u/l37°c         | u/l37°c      |
| u/tunti         | u/h          |
| u/vrk           | u/24h        |
| ug/g/kre        | ug/g/kre     |
| ui/ml           | ui/ml        |
| umol/vrk        | umol/24h     |
| v               | y            |
| yks             | u            |
| yks/mg          | u/mg         |
| yks/ml          | u/ml         |

