# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Geordie Baksheeff

## Summary

Learn how to implement binary subtraction, one's complement and two complement circuits in verilog.


## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The main difference is when the carry/borrow output is true. For the half adder, it's when both values are true, thus the number can't be represented at that position.
For the half subtractor, it's when A is 0 and B is 1. The subtracted number will then need to pull from another bit to represent the final number.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?


### 3 - What is the edge case and problem with Two’s Complement number representation?

