#!/usr/bin/awk -f

BEGIN{

    print "Enter the Basic Salary: ";

    getline BS < "/dev/tty";

    if(BS < 10000){

	DA = 45/100 * BS;

	HRA = 15/100 * BS;
    }

    else{

	DA = 50/100 * BS;

	HRA = 20/100 * BS;

    }

    GS = BS + DA + HRA;

    print "Gross salary = " GS

}

