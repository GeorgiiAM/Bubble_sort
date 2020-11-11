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
	bool int_flag = true;

	try
	{
		write("arraySort ");
		arr = readln;
		dchar terminator = '\x0a';

		string[] split_arr = split(arr);

		if (arr[0] == terminator || split_arr.length == 0)
		{
			throw new Exception("input data is empty");
		}

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
		writeln("result:   ", e.msg);
	}
	finally
	{
		// do something
	}
}

void printResult(T)(T[] input_arr)
{
	string answer = to!string(input_arr);
	writeln("result:   ", answer[1..$-1]);
}