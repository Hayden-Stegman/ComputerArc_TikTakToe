/*
Name: Main.cpp
Date: 12/12/2020

Description:

Contributors: Hayden Stegman & Zachary Jones
*/

#include <iostream>;
using namespace std;
extern "C" void asmMain();


// Main Program
int main()
{
	asmMain();


	return 0;
}

void printConsole() 
{
	//cout << contents;
	cout << "Hello!";
}