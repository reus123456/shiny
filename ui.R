library(shiny)
pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),   #下拉菜单input$xcol
    selectInput('ycol', 'Y Variable', names(iris),    #下拉菜单input$ycol
                selected=names(iris)[[2]]),           #默认为第二列
    numericInput('clusters', 'Cluster count', 3,      #输入需要聚类的类别 input$clusters
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')                               #图形输出output$plot1
  )
)
