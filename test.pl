{
 "cells": [
  {
   "cell_type": "raw",
   "metadata": {},
   "source": [
    "# Task from Google\n",
    "# What is the maximum number of minions get thier cut from a pie?\n",
    "\n",
    "def solution(s):\n",
    "\n",
    "    # prepare a list of ways of possible division starting with a way that gives maximum parts\n",
    "    len_of_seq = len(s)\n",
    "    #len_of_seq = random.randint(2,200-1)\n",
    "    ways_of_div = []\n",
    "    print(\"sequence's length is: \", len_of_seq)\n",
    "    for i in range(len_of_seq, 0, -1):\n",
    "        if(int(len_of_seq/i) == len_of_seq/i):\n",
    "            ways_of_div.append(i)\n",
    "    print(ways_of_div)  \n",
    "    # for convinience prolong sequence with its copy considering the roundness of pie\n",
    "    s_round = s + s\n",
    "    # test\n",
    "    for num_of_pieces in ways_of_div: #for each possible way trying to find position where to cut and get identical parts\n",
    "\n",
    "        p = []\n",
    "        identical = True\n",
    "        lenth_of_pieces = int(len_of_seq / num_of_pieces)\n",
    "        prev_seq = s[0:lenth_of_pieces]\n",
    "        #print(\"p\"+prev_seq)\n",
    "        for i in range(0, num_of_pieces):\n",
    "            \n",
    "            start_point = int(i*lenth_of_pieces)\n",
    "            end_point = int(i*lenth_of_pieces + lenth_of_pieces)\n",
    "            cur_seq = s[start_point:end_point]\n",
    "            \n",
    "            #print(cur_seq)\n",
    "            if(prev_seq != cur_seq):\n",
    "                identical = False\n",
    "                break\n",
    "            \n",
    "        if(identical):\n",
    "            break\n",
    "    else:\n",
    "        num_of_pieces = 0 # impossible to divide\n",
    "    \n",
    "        # check if all sequences in set are equal\n",
    "        \n",
    "    \n",
    "    numbers_of_pieces = num_of_pieces\n",
    "    return numbers_of_pieces\n",
    "\n",
    "\n",
    "print(solution('abc'))\n",
    "print(0)\n",
    "    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 157,
   "metadata": {},
   "outputs": [],
   "source": [
    "import random\n",
    "random.seed(0)\n",
    "salaries = [round(random.random()*1000000, -3) for _ in range(100)]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 158,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0"
      ]
     },
     "execution_count": 158,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "round(111,-3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 140,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "0.6301473404114728"
      ]
     },
     "execution_count": 140,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "random.random()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 159,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1, 5, 7, 11, 13, 17, 19]\n"
     ]
    }
   ],
   "source": [
    "s = list(range(20))\n",
    "\n",
    "o = [i for i in s if( i%2) if(i%3)]\n",
    "print(o)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 160,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "sequence's length is:  3\n",
      "[3, 1]\n",
      "1\n",
      "0\n"
     ]
    }
   ],
   "source": [
    "# Task from Google\n",
    "# What is the maximum number of minions get thier cut from a pie?\n",
    "\n",
    "def solution(s):\n",
    "\n",
    "    # prepare a list of ways of possible division starting with a way that gives maximum parts\n",
    "    len_of_seq = len(s)\n",
    "    #len_of_seq = random.randint(2,200-1)\n",
    "    ways_of_div = []\n",
    "    #print(\"sequence's length is: \", len_of_seq)\n",
    "    for i in range(len_of_seq, 0, -1):\n",
    "        if(int(len_of_seq/i) == len_of_seq/i):\n",
    "            ways_of_div.append(i)\n",
    "    #print(ways_of_div)  \n",
    "    # for convinience prolong sequence with its copy considering the roundness of pie\n",
    "    s_round = s + s\n",
    "    # test\n",
    "    for num_of_pieces in ways_of_div: #for each possible way trying to find position where to cut and get identical parts\n",
    "\n",
    "        p = []\n",
    "        identical = True\n",
    "        lenth_of_pieces = int(len_of_seq / num_of_pieces)\n",
    "        prev_seq = s[0:lenth_of_pieces]\n",
    "        #print(\"p\"+prev_seq)\n",
    "        for i in range(0, num_of_pieces):\n",
    "            \n",
    "            start_point = int(i*lenth_of_pieces)\n",
    "            end_point = int(i*lenth_of_pieces + lenth_of_pieces)\n",
    "            cur_seq = s[start_point:end_point]\n",
    "            \n",
    "            #print(cur_seq)\n",
    "            if(prev_seq != cur_seq):\n",
    "                identical = False\n",
    "                break\n",
    "            \n",
    "        if(identical):\n",
    "            break\n",
    "    else:\n",
    "        num_of_pieces = 0 # impossible to divide\n",
    "    \n",
    "        # check if all sequences in set are equal\n",
    "        \n",
    "    \n",
    "    numbers_of_pieces = num_of_pieces\n",
    "    return numbers_of_pieces\n",
    "\n",
    "\n",
    "print(solution('abc'))\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "1 1 2 3   1 2 4"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 260,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Google test 2-1\n",
    "# Calculation of the difference between the minimum and maximum number of henchmen\n",
    "# who can share the LAMBs\n",
    "# not optimized!\n",
    "\n",
    "# first we calculate the number of henchmen in generous case (1), later - in stingy case (2)\n",
    "# dont forget to assign remainders if possible (only in case 2)\n",
    "\n",
    "def solution(total_lambs):\n",
    "    \n",
    "    if(total_lambs<1 or total_lambs>=1000000000):\n",
    "        return 0\n",
    "   \n",
    "    num_of_h1 = 1\n",
    "    total_lambs_spend = 0\n",
    "    salary_cur = 0\n",
    "    salary_prev = 0\n",
    "    salary_prev_prev = 1\n",
    "\n",
    "    #case 1\n",
    "    while(True):\n",
    "        # first and second henchman receives 1 LAMBs\n",
    "        if(num_of_h1 != 1 and num_of_h1 != 2 ):\n",
    "            salary_cur = salary_prev + salary_prev_prev\n",
    "        else:\n",
    "            salary_cur = 1\n",
    "   \n",
    "        if(total_lambs_spend + salary_cur > total_lambs):\n",
    "            num_of_h1 = num_of_h1 - 1\n",
    "            break\n",
    "        \n",
    "#        print(salary_cur, ' ', end='')\n",
    "        \n",
    "        num_of_h1 = num_of_h1 + 1\n",
    "        total_lambs_spend = total_lambs_spend + salary_cur\n",
    "        salary_prev_prev = salary_prev\n",
    "        salary_prev = salary_cur\n",
    "    \n",
    "# num_of_h1 - number of henchman in team\n",
    "\n",
    "    #case 2\n",
    "    num_of_h2 = 1\n",
    "    total_lambs_spend = 0\n",
    "    salary_cur = 0  # first  henchman receives 1 LAMBs\n",
    "    salary_prev = 0\n",
    "    while(True):\n",
    "        \n",
    "        if(num_of_h2 != 1):\n",
    "            salary_cur = salary_prev * 2\n",
    "        else:\n",
    "            salary_cur = 1  # first  henchman receives 1 LAMBs\n",
    "   \n",
    "        if(total_lambs_spend + salary_cur > total_lambs):\n",
    "            num_of_h2 = num_of_h2 - 1\n",
    "            break\n",
    "        \n",
    "        print(salary_cur, ' ', end='')\n",
    "        \n",
    "        num_of_h2 = num_of_h2 + 1\n",
    "        total_lambs_spend = total_lambs_spend + salary_cur\n",
    "        salary_prev = salary_cur    \n",
    "\n",
    "    # assign reminder if possible\n",
    "    reminder = total_lambs - total_lambs_spend\n",
    "    if(reminder>0 and reminder >= salary_prev + salary_prev / 2):\n",
    "        num_of_h2 = num_of_h2 + 1\n",
    "        total_lambs_spend = total_lambs_spend + reminder\n",
    "        print(reminder, ' ', end='')\n",
    "\n",
    "#    print()\n",
    "#    print(num_of_h2, total_lambs, total_lambs_spend)\n",
    "\n",
    "    print (num_of_h1, num_of_h2)    \n",
    "    return((num_of_h1 - num_of_h2))\n",
    "\n",
    "#print(solution(10000000000))\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 263,
   "metadata": {},
   "outputs": [
    {
     "ename": "TypeError",
     "evalue": "can only concatenate str (not \"list\") to str",
     "output_type": "error",
     "traceback": [
      "\u001b[1;31m---------------------------------------------------------------------------\u001b[0m",
      "\u001b[1;31mTypeError\u001b[0m                                 Traceback (most recent call last)",
      "\u001b[1;32m<ipython-input-263-f2203d847ae5>\u001b[0m in \u001b[0;36m<module>\u001b[1;34m\u001b[0m\n\u001b[0;32m      2\u001b[0m \u001b[0mdigits\u001b[0m \u001b[1;33m=\u001b[0m \u001b[1;34m'0123456789'\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0;32m      3\u001b[0m \u001b[1;33m\u001b[0m\u001b[0m\n\u001b[1;32m----> 4\u001b[1;33m \u001b[0manswer\u001b[0m \u001b[1;33m=\u001b[0m \u001b[1;33m[\u001b[0m\u001b[0mi\u001b[0m\u001b[1;33m+\u001b[0m\u001b[1;33m[\u001b[0m\u001b[0mj\u001b[0m \u001b[1;32mfor\u001b[0m \u001b[0mj\u001b[0m \u001b[1;32min\u001b[0m \u001b[0mdigits\u001b[0m\u001b[1;33m]\u001b[0m \u001b[1;32mfor\u001b[0m \u001b[0mi\u001b[0m \u001b[1;32min\u001b[0m \u001b[0mlowercase\u001b[0m\u001b[1;33m]\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0m\u001b[0;32m      5\u001b[0m \u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0;32m      6\u001b[0m \u001b[0mprint\u001b[0m\u001b[1;33m(\u001b[0m\u001b[0manswer\u001b[0m\u001b[1;33m)\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n",
      "\u001b[1;32m<ipython-input-263-f2203d847ae5>\u001b[0m in \u001b[0;36m<listcomp>\u001b[1;34m(.0)\u001b[0m\n\u001b[0;32m      2\u001b[0m \u001b[0mdigits\u001b[0m \u001b[1;33m=\u001b[0m \u001b[1;34m'0123456789'\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0;32m      3\u001b[0m \u001b[1;33m\u001b[0m\u001b[0m\n\u001b[1;32m----> 4\u001b[1;33m \u001b[0manswer\u001b[0m \u001b[1;33m=\u001b[0m \u001b[1;33m[\u001b[0m\u001b[0mi\u001b[0m\u001b[1;33m+\u001b[0m\u001b[1;33m[\u001b[0m\u001b[0mj\u001b[0m \u001b[1;32mfor\u001b[0m \u001b[0mj\u001b[0m \u001b[1;32min\u001b[0m \u001b[0mdigits\u001b[0m\u001b[1;33m]\u001b[0m \u001b[1;32mfor\u001b[0m \u001b[0mi\u001b[0m \u001b[1;32min\u001b[0m \u001b[0mlowercase\u001b[0m\u001b[1;33m]\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0m\u001b[0;32m      5\u001b[0m \u001b[1;33m\u001b[0m\u001b[0m\n\u001b[0;32m      6\u001b[0m \u001b[0mprint\u001b[0m\u001b[1;33m(\u001b[0m\u001b[0manswer\u001b[0m\u001b[1;33m)\u001b[0m\u001b[1;33m\u001b[0m\u001b[1;33m\u001b[0m\u001b[0m\n",
      "\u001b[1;31mTypeError\u001b[0m: can only concatenate str (not \"list\") to str"
     ]
    }
   ],
   "source": [
    "lowercase = 'abcdefghijklmnopqrstuvwxyz'\n",
    "digits = '0123456789'\n",
    "\n",
    "answer = [i+ for i in lowercase]\n",
    "\n",
    "print(answer)\n",
    "#correct_answer == answer"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 264,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "['aa00',\n",
       " 'aa01',\n",
       " 'aa02',\n",
       " 'aa03',\n",
       " 'aa04',\n",
       " 'aa05',\n",
       " 'aa06',\n",
       " 'aa07',\n",
       " 'aa08',\n",
       " 'aa09',\n",
       " 'aa10',\n",
       " 'aa11',\n",
       " 'aa12',\n",
       " 'aa13',\n",
       " 'aa14',\n",
       " 'aa15',\n",
       " 'aa16',\n",
       " 'aa17',\n",
       " 'aa18',\n",
       " 'aa19',\n",
       " 'aa20',\n",
       " 'aa21',\n",
       " 'aa22',\n",
       " 'aa23',\n",
       " 'aa24',\n",
       " 'aa25',\n",
       " 'aa26',\n",
       " 'aa27',\n",
       " 'aa28',\n",
       " 'aa29',\n",
       " 'aa30',\n",
       " 'aa31',\n",
       " 'aa32',\n",
       " 'aa33',\n",
       " 'aa34',\n",
       " 'aa35',\n",
       " 'aa36',\n",
       " 'aa37',\n",
       " 'aa38',\n",
       " 'aa39',\n",
       " 'aa40',\n",
       " 'aa41',\n",
       " 'aa42',\n",
       " 'aa43',\n",
       " 'aa44',\n",
       " 'aa45',\n",
       " 'aa46',\n",
       " 'aa47',\n",
       " 'aa48',\n",
       " 'aa49']"
      ]
     },
     "execution_count": 264,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "lowercase = 'abcdefghijklmnopqrstuvwxyz'\n",
    "digits = '0123456789'\n",
    "\n",
    "correct_answer = [a+b+c+d for a in lowercase for b in lowercase for c in digits for d in digits]\n",
    "\n",
    "correct_answer[:50] # Display first 50 ids"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 265,
   "metadata": {},
   "outputs": [
    {
     "ename": "SyntaxError",
     "evalue": "invalid syntax (<ipython-input-265-6ffe9197dcc9>, line 1)",
     "output_type": "error",
     "traceback": [
      "\u001b[1;36m  File \u001b[1;32m\"<ipython-input-265-6ffe9197dcc9>\"\u001b[1;36m, line \u001b[1;32m1\u001b[0m\n\u001b[1;33m    digits for d in digits\u001b[0m\n\u001b[1;37m           ^\u001b[0m\n\u001b[1;31mSyntaxError\u001b[0m\u001b[1;31m:\u001b[0m invalid syntax\n"
     ]
    }
   ],
   "source": [
    "digits for d in digits\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 272,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "(3,)\n"
     ]
    }
   ],
   "source": [
    "import numpy as np\n",
    "import math\n",
    "\n",
    "a = np.array([1,2,3])\n",
    "print (a.shape)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 275,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "['a0', 'a1', 'b0', 'b1']\n"
     ]
    }
   ],
   "source": [
    "lowercase = 'ab'\n",
    "digits = '01'\n",
    "correct_answer = [a+b for a in lowercase for b in digits]\n",
    "print(correct_answer)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 278,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0.0\n"
     ]
    }
   ],
   "source": [
    "import numpy as np\n",
    "\n",
    "x = np.array([[12, 5, 2], [7, 6, 8],[1, 6, 7]])\n",
    "y = np.array([[1,2,3], [4,5,6], [7,8,9]])\n",
    "\n",
    "d = np.linalg.det(y)\n",
    "\n",
    "print(d)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 283,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "4 ['0', '5', '6', '4']\n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "True"
      ]
     },
     "execution_count": 283,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "def solution(n, b):\n",
    "    \n",
    "    s = [i for i in n]\n",
    "    print(len(n), s)\n",
    "    return True\n",
    "    \n",
    "solution('0564', 7)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
