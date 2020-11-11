/**
 * Authors: Antoshchenko Georgii
 * Date: November 12, 2020
 */

import bubblesort;

// simple unittests
unittest
{
    // positive integers numbers
    int[] arr1 = [54, 67, 1, 44, 10];
    bubbleSort(arr1);
    assert(arr1 == [1, 10, 44, 54, 67]);

    // positive and negative integers numbers
    int[] arr2 = [54, 67, -242341, 44, -410];
    bubbleSort(arr2);
    assert(arr2 == [-242341, -410, 44, 54, 67]);

    // positive and negative double numbers
    double[] arr3 = [5.4, -6.347, 231, 4.4, 10.34];
    bubbleSort(arr3);
    assert(arr3 == [-6.347, 4.4, 5.4, 10.34, 231]);
}