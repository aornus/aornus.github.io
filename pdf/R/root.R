zixu <- data.frame(
  categories=c("软件编程", "操作系统", "课程笔记", "语言学习", "钛金笔记", "随笔", "日志", "计划总结", "人的底层逻辑", "摄影思考", "杂谈"),
  count=c(9,5,22,1,2,5,16,11,1,10,10),
  like=c(8,7,9,7,5,8,10,7,6,9,8),
  stringsAsFactors=FALSE)
colnames(zixu) <- c('分类','文章数量','喜欢度')


barplot(zixu[,'文章数量'],names.arg=zixu[,'分类'],
        width=0.5,
        ylim=c(0,25),
        main = "不同分类的文章数目",
        xlab = '分类',
        ylab = '篇数',
        col =rainbow(15) )