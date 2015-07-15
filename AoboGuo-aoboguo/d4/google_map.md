The result first starts as an empty array.
"engines" is an array with Google, Bing, and Ask Jeeves as the first, second, and third terms.
We run an enumeration on the array "engines" via this placeholder "e" that we pass through the different elements of the array.
	The following enumeration is followed for each of the elements of the array "engines":
		If the element being examined in the array is the string "Google", then the code will add "OK" to the result array (which starts off empty). If the element in the array is not "Google", then the code will examine to see if it is the string "Bing". If it is, then the code will add "Bad!" to the result array (which starts off empty). If the element in the array is neither "Google" nor "Bing", then the code will add "What is that?" to the result array (which, again, starts off empty).

		Then, the enumeration will move onto the next element in the array "engines". It will go through this same process, adding the appropriate string to the array that has been modified from an empty array to one containing the strings corresponding to the already-examined elements. This enumeration process continues until all of the elements of the array have been assigned their respective string and that string has been added to the originally-empty array "result". 

The return value of map is whatever final "result" array, which is ["OK", "Bad!", "What is that?"]. The return value of each is the "engines" array because each returns the array that it was invoked upon. 