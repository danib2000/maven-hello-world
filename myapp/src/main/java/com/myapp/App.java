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
	try {
            // Block the thread to keep the application running
            Thread.currentThread().join();
        } catch (InterruptedException e) {
            System.err.println("Application thread interrupted: " + e.getMessage());
            Thread.currentThread().interrupt();
        }
    }
}
