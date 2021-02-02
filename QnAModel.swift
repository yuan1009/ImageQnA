//
//  QnAModel.swift
//  ImageQnA
//
//  Created by mac on 2021/2/1.
//

import Foundation

struct QnA {
    var image: String
    var question: String
    var choice: [String]
    var answer: String
}

var questionArray = [
    
    QnA(image: "Fish", question: "左邊的是？", choice: ["宋楚瑜", "韓國瑜", "韓瑜", "周子瑜"], answer: "韓國瑜"),
    QnA(image: "Jay", question: "左邊的是？", choice: ["周杰倫", "東尼大木", "柯有倫", "吳宗憲"], answer: "周杰倫"),
    QnA(image: "Kid", question: "左邊的是？", choice: ["Kid", "余天", "余祥銓", "任立渝"], answer: "Kid"),
    QnA(image: "korea", question: "大家好我是！？", choice: ["韓國ㄟ金針菇", "朴信惠", "朴敏英", "朴寶劍"], answer: "韓國ㄟ金針菇"),
    QnA(image: "Lee", question: "左邊的是？", choice: ["李榮浩", "李登輝", "理容院", "李敏鎬"], answer: "李榮浩"),
    QnA(image: "Ma", question: "右邊的是？", choice: ["馬良", "馬英九", "馬雲", "馬超"], answer: "馬雲"),
    QnA(image: "Ming", question: "左邊的是？", choice: ["阮經天", "硬明天", "明道", "軟今天"], answer: "阮經天"),
    QnA(image: "Peter", question: "大家好我是！？", choice: ["老師", "情歌小王子", "彼得老師", "不要叫我老師"], answer: "情歌小王子"),
    QnA(image: "Posi", question: "左邊的是？", choice: ["朴敘俊", "浩子", "阿翔", "孔子"], answer: "浩子"),
    QnA(image: "Su", question: "左邊的是？", choice: ["蘇菲", "舒潔", "舒淇", "舒芙蕾"], answer: "舒淇")

]

