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
Canyon Holman, Cody Toone
## Summary

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The only difference between the two is the carry/borrow bit. In the half adder the carry can be represented with an AND gate, while in the half subtractor, the A input is inverted for the borrow AND gate
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry could generate an infinite loop in the adder, turning it into a clock, which is not what we are looking for. 
### 3 - What is the edge case and problem with Two’s Complement number representation?
The problem with two's complement representation is that the numbers that can be represented is not a symmetric range. In an 8 bit case, like we did in this lab, the number -128 can be represented as 1000 000 but attempting to invert that to 128 results in 0111 1111 which then after adding 1, yeilds 1000 0000 again which is just -128
