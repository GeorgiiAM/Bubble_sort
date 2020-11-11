/**
 * Authors: Antoshchenko Georgii
 * Date: November 12, 2020
 */

import std.stdio;
import std.conv;
import std.array;
import std.string;
import bubblesort;

void main() 
{
    string arr;
    write("arraySort ");
    arr = readln;
	bool int_flag = true;
    // string arr = "1 0 4.0 7 3.3 2 9 -5 8 6";

    
	try
	{
		string[] split_arr = split(arr);
		foreach(n; split_arr)
		{
			// check input data
			if (!isNumeric(n))
			{
				throw new Exception("input data is not numeric");

			}

			// determine the type of number
			if (int_flag && (indexOf(n, ".") != -1))
			{
				int_flag = false;
			}
		}

		if (int_flag)
		{
			auto numbers = to!(int[])(split_arr);
			bubbleSort(numbers);
    		printResult(numbers); 
		}
		else
		{
			auto numbers = to!(double[])(split_arr);
			bubbleSort(numbers);
    		printResult(numbers); 
		}
		
	}
	catch(Exception e)
	{
		writeln("result:", e.msg);
	}
	finally
	{
		// do something
	}
}

void printResult(T)(T[] input_arr)
{
	string answer = to!string(input_arr);
	writeln(answer[1..$-1]);
}