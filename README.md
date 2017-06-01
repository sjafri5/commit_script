# RULES

The script will parse your branch name to find the JIRA ticket number so you don't have to type it after each commit.
It assumes the following structure:  <ticket-type>/<ticket-number>


## examples
branchname            ->   captured

`feature/MEC-1984`    ->  `MEC-1984`

`bugfix/MEC-1984/v2`  ->  `MEC-1984`

`master`              ->  `master`


so in summation if you are on branch `feature/RNTM-678`
and you run the following after staging:

```
commit 'this is my commit message'
```

the commit message that will be logged will be:

```
[RNTM-678] this is my commit message
```

It also logs the last ten commits for your convenience.

# SETUP

1) `git clone https://github.com/sjafri5/commit_script.git`
2) setup script stuff on your computer ?
3) add the following to your `~/.bash_profile`:

  (you can change `commit` to whatever alias you want to type on the cli)

  ```
    commit alias commit='commit.sh'
  ```


4) `. ~/.bash_profile`
