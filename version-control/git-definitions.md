# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system that records changes to a file or set of files
over time so that you can recall specific versions later. It's important because
it allows you to revert files back to a previous state, revert the entire
project back to a previous state, compare changes over time, see who last
modified something that might be causing a problem, who introduced an issue and
when, and much more. Git is a revision control system, a tool to manage your
source code history. GitHub is a hosting service for Git repositories. 

* What is a branch and why would you use one?

A branch represents an independent line of development. Branches serve as an
abstraction for the edit/stage/commit process. You can think of them as a way
to request a brand new working directory, staging area, and project history
(timeline).

* What is a commit? What makes a good commit message?

Git views all files in three ways: committed, modified/untracked and staged.
1.This helps other people (and yourself) to understand later what the intention
were when making these changes. You can use commit in multiple ways to commit
changes to your repository, but every commit requires a log message. You can add
a message by adding -m "your message". A good commit message should be short
and to the point.

Git views all files in three ways: committed, modified/untracked and staged.

2.Untracked means that the file is new to your Git project. Modified means
that the file has been seen before, but has been changed, so is not ready to be snapshotted by Git.

3.Staged means is where Git is able to take a snapshot of it and store its
current state to your local repository.


* What is a merge conflict?
Sometimes you get merge conflicts when merging or pulling from a branch.
