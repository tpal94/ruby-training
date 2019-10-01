# ruby-training
Ruby Training 

# Assignment2

# Aditi hardeniya

# Alphametics

Write a function to solve alphametics puzzles.

[Alphametics](https://en.wikipedia.org/wiki/Alphametics) is a puzzle where
letters in words are replaced with numbers.

For example `SEND + MORE = MONEY`:

```text
  S E N D
  M O R E +
-----------
M O N E Y
```

Replacing these with valid numbers gives:

```text
  9 5 6 7
  1 0 8 5 +
-----------
1 0 6 5 2
```

This is correct because every letter is replaced by a different number and the
words, translated into numbers, then make a valid sum.

Each letter must represent a different digit, and the leading digit of
a multi-digit number must not be zero.

Write a function to solve alphametics puzzles.

* * * *

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby alphametics_test.rb

To include color from the command line:

    ruby -r minitest/pride alphametics_test.rb


## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.


# Aditi Sitoke

Atbash Cipher

Create an implementation of the atbash cipher, an ancient encryption system created in the Middle East.

The Atbash cipher is a simple substitution cipher that relies on
transposing all the letters in the alphabet such that the resulting
alphabet is backwards. The first letter is replaced with the last
letter, the second with the second-last, and so on.

An Atbash cipher for the Latin alphabet would be as follows:

```text
Plain:  abcdefghijklmnopqrstuvwxyz
Cipher: zyxwvutsrqponmlkjihgfedcba
```

It is a very weak cipher because it only has one possible key, and it is
a simple monoalphabetic substitution cipher. However, this may not have
been an issue in the cipher's time.

Ciphertext is written out in groups of fixed length, the traditional group size
being 5 letters, and punctuation is excluded. This is to make it harder to guess
things based on word boundaries.

## Examples

- Encoding `test` gives `gvhg`
- Decoding `gvhg` gives `test`
- Decoding `gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt` gives `thequickbrownfoxjumpsoverthelazydog`

* * * *

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby atbash_cipher_test.rb

To include color from the command line:

    ruby -r minitest/pride atbash_cipher_test.rb


## Source

Wikipedia [http://en.wikipedia.org/wiki/Atbash](http://en.wikipedia.org/wiki/Atbash)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

# Dewanshu Chhatlani

# Collatz Conjecture

The Collatz Conjecture or 3x+1 problem can be summarized as follows:

Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is
odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely.
The conjecture states that no matter which number you start with, you will
always reach 1 eventually.

Given a number n, return the number of steps required to reach 1.

## Examples

Starting with n = 12, the steps would be as follows:

0. 12
1. 6
2. 3
3. 10
4. 5
5. 16
6. 8
7. 4
8. 2
9. 1

Resulting in 9 steps. So for input n = 12, the return value would be 9.

* * * *

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby collatz_conjecture_test.rb

To include color from the command line:

    ruby -r minitest/pride collatz_conjecture_test.rb


## Source

An unsolved problem in mathematics named after mathematician Lothar Collatz [https://en.wikipedia.org/wiki/3x_%2B_1_problem](https://en.wikipedia.org/wiki/3x_%2B_1_problem)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.


# Deepak Parmer

# Simple Cipher

Implement a simple shift cipher like Caesar and a more secure substitution cipher.

## Step 1

"If he had anything confidential to say, he wrote it in cipher, that is,
by so changing the order of the letters of the alphabet, that not a word
could be made out. If anyone wishes to decipher these, and get at their
meaning, he must substitute the fourth letter of the alphabet, namely D,
for A, and so with the others."
—Suetonius, Life of Julius Caesar

Ciphers are very straight-forward algorithms that allow us to render
text less readable while still allowing easy deciphering. They are
vulnerable to many forms of cryptoanalysis, but we are lucky that
generally our little sisters are not cryptoanalysts.

The Caesar Cipher was used for some messages from Julius Caesar that
were sent afield. Now Caesar knew that the cipher wasn't very good, but
he had one ally in that respect: almost nobody could read well. So even
being a couple letters off was sufficient so that people couldn't
recognize the few words that they did know.

Your task is to create a simple shift cipher like the Caesar Cipher.
This image is a great example of the Caesar Cipher:

![Caesar Cipher][1]

For example:

Giving "iamapandabear" as input to the encode function returns the cipher "ldpdsdqgdehdu". Obscure enough to keep our message secret in transit.

When "ldpdsdqgdehdu" is put into the decode function it would return
the original "iamapandabear" letting your friend read your original
message.

## Step 2

Shift ciphers are no fun though when your kid sister figures it out. Try
amending the code to allow us to specify a key and use that for the
shift distance. This is called a substitution cipher.

Here's an example:

Given the key "aaaaaaaaaaaaaaaaaa", encoding the string "iamapandabear"
would return the original "iamapandabear".

Given the key "ddddddddddddddddd", encoding our string "iamapandabear"
would return the obscured "ldpdsdqgdehdu"

In the example above, we've set a = 0 for the key value. So when the
plaintext is added to the key, we end up with the same message coming
out. So "aaaa" is not an ideal key. But if we set the key to "dddd", we
would get the same thing as the Caesar Cipher.

## Step 3

The weakest link in any cipher is the human being. Let's make your
substitution cipher a little more fault tolerant by providing a source
of randomness and ensuring that the key contains only lowercase letters.

If someone doesn't submit a key at all, generate a truly random key of
at least 100 characters in length.

If the key submitted is not composed only of lowercase letters, your
solution should handle the error in a language-appropriate way.

## Extensions

Shift ciphers work by making the text slightly odd, but are vulnerable
to frequency analysis. Substitution ciphers help that, but are still
very vulnerable when the key is short or if spaces are preserved. Later
on you'll see one solution to this problem in the exercise
"crypto-square".

If you want to go farther in this field, the questions begin to be about
how we can exchange keys in a secure way. Take a look at [Diffie-Hellman
on Wikipedia][dh] for one of the first implementations of this scheme.

[1]: https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Caesar_cipher_left_shift_of_3.svg/320px-Caesar_cipher_left_shift_of_3.svg.png
[dh]: http://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange

* * * *

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby simple_cipher_test.rb

To include color from the command line:

    ruby -r minitest/pride simple_cipher_test.rb


## Source

Substitution Cipher at Wikipedia [http://en.wikipedia.org/wiki/Substitution_cipher](http://en.wikipedia.org/wiki/Substitution_cipher)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.


# Sahil Gupta

# Diamond

The diamond kata takes as its input a letter, and outputs it in a diamond
shape. Given a letter, it prints a diamond starting with 'A', with the
supplied letter at the widest point.

## Requirements

* The first row contains one 'A'.
* The last row contains one 'A'.
* All rows, except the first and last, have exactly two identical letters.
* All rows have as many trailing spaces as leading spaces. (This might be 0).
* The diamond is horizontally symmetric.
* The diamond is vertically symmetric.
* The diamond has a square shape (width equals height).
* The letters form a diamond shape.
* The top half has the letters in ascending order.
* The bottom half has the letters in descending order.
* The four corners (containing the spaces) are triangles.

## Examples

In the following examples, spaces are indicated by `·` characters.

Diamond for letter 'A':

```text
A
```

Diamond for letter 'C':

```text
··A··
·B·B·
C···C
·B·B·
··A··
```

Diamond for letter 'E':

```text
····A····
···B·B···
··C···C··
·D·····D·
E·······E
·D·····D·
··C···C··
···B·B···
····A····
```

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby diamond_test.rb

To include color from the command line:

    ruby -r minitest/pride diamond_test.rb


## Source

Seb Rose [http://claysnow.co.uk/recycling-tests-in-tdd/](http://claysnow.co.uk/recycling-tests-in-tdd/)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.


# Rohit Singhal

# Sum Of Multiples

Given a number, find the sum of all the unique multiples of particular numbers up to
but not including that number.

If we list all the natural numbers below 20 that are multiples of 3 or 5,
we get 3, 5, 6, 9, 10, 12, 15, and 18.

The sum of these multiples is 78.

* * * *
For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby sum_of_multiples_test.rb

To include color from the command line:

    ruby -r minitest/pride sum_of_multiples_test.rb


## Source

A variation on Problem 1 at Project Euler [http://projecteuler.net/problem=1](http://projecteuler.net/problem=1)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
