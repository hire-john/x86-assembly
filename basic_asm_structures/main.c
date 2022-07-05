/* 
 * Wrote some basic fundamentals to translate to asm from GCC to analyze
 * how it compiles into assembly and analyze the differences between 
 * optimization levels (O0-O3) as well as some additional binary output
 * size modification flags (omitting the frame pointers and unwind tables) 
 */

#include <stdlib.h>
#include <stdio.h>

void for_loop();
void while_loop();
void do_while_loop();
void if_then_else();

int main(int argc, char** argv){
	for_loop();
	while_loop();
	do_while_loop();
	if_then_else();
	return EXIT_SUCCESS;
}

void for_loop(){
	int iterations = 0;
	for(int i = 0; i < 10; i++){
		iterations++;
	}
}

void while_loop(){
	int iterations = 0;
	while(iterations < 10){
		iterations++;
	}
}

void do_while_loop(){
	int iterations = 0;
	do {
		iterations++;
	}while(iterations < 10);
}

void if_then_else(){
	signed int iterations = 0;
	if(iterations){
		iterations = 1;	
	}else if(!iterations){
		iterations = 0;
	}else{
		iterations = -1;
	}
}


