//
//  QuizData.swift
//  Team6
//
//  Created by User on 2022/11/13.
//

import Foundation

struct Quiz{
    let title:String
    let contents:String
    let answer:String
}

let quizs:[Quiz] = [
    Quiz(title: "다음 보기에 대해서 O/X를 선택하시오. ", contents: "TCP헤더의 Acknowledgment number는 신뢰적 데이터 전송을 위해 사용된다.",answer: "O"),
    Quiz(title: "다음 보기에 대해서 O/X를 선택하시오. ", contents: "TCP헤더의 Acknowledgment number는 신뢰적 데이터 전송을 위해 사용된다.",answer: "X"),
    Quiz(title: "다음 보기에 대해서 O/X를 선택하시오. ", contents: "TCP헤더의 Acknowledgment number는 신뢰적 데이터 전송을 위해 사용된다.",answer: "O"),
    Quiz(title: "다음 보기에 대해서 O/X를 선택하시오. ", contents: "TCP헤더의 Acknowledgment number는 신뢰적 데이터 전송을 위해 사용된다.",answer: "X"),
    Quiz(title: "다음 보기에 대해서 O/X를 선택하시오. ", contents: "TCP헤더의 Acknowledgment number는 신뢰적 데이터 전송을 위해 사용된다.",answer: "O")
]
