clc;
clear;

// Number of patients
n = input("Enter number of patients: ");

// Initialize arrays
name = emptystr(n,1);
age = zeros(n,1);
diagnosis = emptystr(n,1);
fees = zeros(n,1);

// Input patient details
for i = 1:n
    disp("Enter details for patient " + string(i));
    
    name(i) = input("Enter patient name: ", "string");
    age(i) = input("Enter age: ");
    diagnosis(i) = input("Enter diagnosis: ", "string");
    fees(i) = input("Enter fees: ");
end

// Display patient records
disp("Patient Records:");

for i = 1:n
    disp("Patient " + string(i));
    disp("Name: " + name(i));
    disp("Age: " + string(age(i)));
    disp("Diagnosis: " + diagnosis(i));
    disp("Fees: " + string(fees(i)));
end

// Generate summary
totalFees = sum(fees);

disp("Total Fees Collected:");
disp(totalFees);
