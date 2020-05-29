/*
Kristofer Hughes
CSC 355 Section 402
Assignment 6 Problem 2
November 13th, 2019
*/
CREATE TRIGGER trigger_one
    after insert on SAT
    for each row
    begin
     update sat
     set bestscore.best = :new.score
     where bestscore.best < :new.score
     end
 
    
    
    
CREATE TRIGGER delete_or_update
    before delete or update on SAT
    instead of delete or update on sat
    begin
    RAISERROR('inserts are only permitted on SAT')
    end

