---
title: chord
date: 2021-12-19 19:40:13
tags: 
- music 
- sonic pi
categories:
- music 
cover:
description: 介绍了基本和弦的组成（中英），都是为了更好的使用sonic pi。
katex:
comments:
copyright:
aside:
password:
hidden:
---

# 和弦 Chord

三个或以上不同高度乐音按照一定音程关系的结合， 叫做和弦。传统和声中的和弦均按三度叠置原则构成。

## 三和弦 Triad

三个音按照三度关系叠置起来的和弦，叫做**三和弦**。从下面上分别称为`根音 the root `，`三音 the third`，`五音 the fifth` 并以数字1、3、5来代表

### 原位三和弦

以根音为低音的三和弦称为原位三和弦，根音向上到三音，三音向上到五音都是三度。

### 大三和弦 Major triads

A **major chord** is a chord that has a `root`, a `major third`, and a `perfect fifth`. When a chord has these three particular notes, it is called a major triad. For example, the major triad built on C, called a C major triad, has pitches C–E–G:

根音到三音是大三度．三音到五音是小三度，根音到五音是纯五度。

![Major_triad](https://gitee.com/aornus/blogimage/raw/master/Major_triad.svg)

* 大三和弦色彩明亮．具有大调特征。

  | Chord | Root | Major third | Perfect fifth |
  | :---: | :--: | :---------: | :-----------: |
  |   C   |  C   |      E      |       G       |
  |  C♯   |  C♯  |   E♯ (F)    |      G♯       |
  |  D♭   |  D♭  |      F      |      A♭       |
  |   D   |  D   |     F♯      |       A       |
  |  D♯   |  D♯  |   F♯♯(G)    |      A♯       |
  |  E♭   |  E♭  |      G      |      B♭       |
  |   E   |  E   |     G♯      |       B       |
  |   F   |  F   |      A      |       C       |
  |  F♯   |  F♯  |     A♯      |      C♯       |
  |  G♭   |  G♭  |     B♭      |      D♭       |
  |   G   |  G   |      B      |       D       |
  |  G♯   |  G♯  |   B♯ (C)    |      D♯       |
  |  A♭   |  A♭  |      C      |      E♭       |
  |   A   |  A   |     C♯      |       E       |
  |  A♯   |  A♯  |   C♯♯(D)    |    E♯ (F)     |
  |  B♭   |  B♭  |      D      |       F       |
  |   B   |  B   |     D♯      |      F♯       |

### 小三和弦 *Minor* triads

a minor chord is a chord that has a `root`, a `minor third`, and a `perfect fifth`.When a chord has these three notes alone, it is called a minor triad. For example, the minor triad built on C, called a C minor triad, has pitches C–E♭–G:

根音到三音是小三度，三音到五音是大三度，根音到五音是纯五度。

* 小三和弦色彩柔和，具有小调特征。

  | Chord | Root | Minor third | Perfect fifth |
  | :---: | :--: | :---------: | :-----------: |
  |  Cm   |  C   |     E♭      |       G       |
  |  C♯m  |  C♯  |      E      |      G♯       |
  |  D♭m  |  D♭  |   F♭ (E)    |      A♭       |
  |  Dm   |  D   |      F      |       A       |
  |  D♯m  |  D♯  |     F♯      |      A♯       |
  |  E♭m  |  E♭  |     G♭      |      B♭       |
  |  Em   |  E   |      G      |       B       |
  |  Fm   |  F   |     A♭      |       C       |
  |  F♯m  |  F♯  |      A      |      C♯       |
  |  G♭m  |  G♭  |   B♭♭(A)    |      D♭       |
  |  Gm   |  G   |     B♭      |       D       |
  |  G♯m  |  G♯  |      B      |      D♯       |
  |  A♭m  |  A♭  |   C♭ (B)    |      E♭       |
  |  Am   |  A   |      C      |       E       |
  |  A♯m  |  A♯  |     C♯      |    E♯ (F)     |
  |  B♭m  |  B♭  |     D♭      |       F       |
  |  Bm   |  B   |      D      |      F♯       |

### 增三和弦 *Augmented* triads

根音到三音是大三度，兰音到五音也是大三度，根音到五音是增五度。

* 增三和弦不协和，有扩张感。

### 减三和弦 *Diminished* triads 

根音到三音是小三度，三音到五音也是小三度，根音到五音是减五度。

* 减三和弦不协和，有收缩感。

> 大三和弦大加小；小三和弦小加大亨 减兰和弦小加小；增三和弦大加大。

## 转位和弦

用根音以外的和弦音作为低音，称为**转位和弦**。

三和弦有两种转位。
以三音作低音是三和弦第一转位。其低音与五音为三度，低音与根音为六度，因面称为六和弦，用数字“6”表示。
以五音作低音是三和弦第二转位。其低音与根音、低音与三音分别是四度和六度关系．因而称为四六和弦。用数字$\frac{6}{4}$表示。

## 七和弦

由四个音按三度叠置而成的和弦称为七和弦。七和弦下面的 三个音与三和弦中的音一样，分别称为根音、三音五音。**第四个音与根音相距七度**，故称为七音，用数字“7”表示。

### 大小七和弦

以大三和弦为基础，根音与七度相距为小七度的和弦；或将原位大三和弦五音上方叠置一个小三度构成。

### 小小七和弦

以小三和弦为基础，根音与七音相距为小七度的和弦；或将原位小三和弦五音上方叠詈一个小三度而构成。

### 半减七和弦（也称减小七和弦）

以减三和弦为基础，根音与七度相距为小七度的和弦；或将原位减三和弦五音上方叠置一个大三度构成。

### 减减七和弦

以减三和弦为基础，根音与七音相距为减七度的和弦，或将原位减三和弦五音上叠置一个小三度音而构成。

### 转位七和弦

和弦有三种转位．分别以和弦的三音，五音，七音为低音。转位后依据低音与七音，低音与根音的音程关系而获得其专有名称。

#### 五六和弦

以二音作为低音的七和弦是其第一转位，转位后低音与七音是五度，低音与根音为六度，因而称为五六和弦。

#### 三四和弦

以五音作为低音的七和弦是其第二转位。转位后低音与七音是三度，低音与根音是四度，因而称为三四和弦。

#### 二和弦

以七音为低音的七和弦是其第三转位。转位后低音与根音为小二度关系，因而称为二和弦。

但是sonic pi里的chord还是太多了，太难理解了

```
(chord :C, '1')
(chord :C, '5')
(chord :C, '+5')
(chord :C, 'm+5')
(chord :C, :sus2)
(chord :C, :sus4)
(chord :C, '6')
(chord :C, :m6)
(chord :C, '7sus2')
(chord :C, '7sus4')
(chord :C, '7-5')
(chord :C, 'm7-5')
(chord :C, '7+5')
(chord :C, 'm7+5')
(chord :C, '9')
(chord :C, :m9)
(chord :C, 'm7+9')
(chord :C, :maj9)
(chord :C, '9sus4')
(chord :C, '6*9')
(chord :C, 'm6*9')
(chord :C, '7-9')
(chord :C, 'm7-9')
(chord :C, '7-10')
(chord :C, '9+5')
(chord :C, 'm9+5')
(chord :C, '7+5-9')
(chord :C, 'm7+5-9')
(chord :C, '11')
(chord :C, :m11)
(chord :C, :maj11)
(chord :C, '11+')
(chord :C, 'm11+')
(chord :C, '13')
(chord :C, :m13)
(chord :C, :add2)
(chord :C, :add4)
(chord :C, :add9)
(chord :C, :add11)
(chord :C, :add13)
(chord :C, :madd2)
(chord :C, :madd4)
(chord :C, :madd9)
(chord :C, :madd11)
(chord :C, :madd13)
(chord :C, :major)
(chord :C, :M)
(chord :C, :minor)
(chord :C, :m)
(chord :C, :major7)
(chord :C, :dom7)
(chord :C, '7')
(chord :C, :M7)
(chord :C, :minor7)
(chord :C, :m7)
(chord :C, :augmented)
(chord :C, :a)
(chord :C, :diminished)
(chord :C, :dim)
(chord :C, :i)
(chord :C, :diminished7)
(chord :C, :dim7)
(chord :C, :i7)
```
