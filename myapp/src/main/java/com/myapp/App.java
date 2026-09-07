package com.myapp;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World! From Dani B" );

	// Keep the application process running 
	Thread.currentThread().join(); 
    }
}
