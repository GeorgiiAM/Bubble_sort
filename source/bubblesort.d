module bubblesort;

import std.array;
import std.stdio;


void bubbleSort(T)(T[] input_arr)
{
	T temp;
    ulong L = input_arr.length;
	for(int i = 0; i < L - 1; i++)
	{
		for(int j = 0; j < L - i -1; j++)
		{
			if (input_arr[j] > input_arr[j+1]){
				temp = input_arr[j];
				input_arr[j] = input_arr[j+1];
				input_arr[j+1] = temp;
			}
		}
	}

}