# !! Warning: it is a poor man's script - need to make it concise (using parsing more) !!

library(shiny)
library(datasets)
library(ggplot2)

table.state.Alabama      = read.csv("~/BLS_work/csv_files/table.state.Alabama.csv", sep=" ")
table.state.Alaska       = read.csv("~/BLS_work/csv_files/table.state.Alaska.csv", sep=" ")
table.state.Arizona      = read.csv("~/BLS_work/csv_files/table.state.Arizona.csv", sep=" ")
table.state.Arkansas     = read.csv("~/BLS_work/csv_files/table.state.Arkansas.csv", sep=" ")
table.state.California   = read.csv("~/BLS_work/csv_files/table.state.California.csv", sep=" ")
table.state.Colorado     = read.csv("~/BLS_work/csv_files/table.state.Colorado.csv", sep=" ")
table.state.Connecticut  = read.csv("~/BLS_work/csv_files/table.state.Connecticut.csv", sep=" ")
table.state.Delaware     = read.csv("~/BLS_work/csv_files/table.state.Delaware.csv", sep=" ")
table.state.DofColumbia  = read.csv("~/BLS_work/csv_files/table.state.DofColumbia.csv", sep=" ")
table.state.Florida      = read.csv("~/BLS_work/csv_files/table.state.Florida.csv", sep=" ")
table.state.Georgia      = read.csv("~/BLS_work/csv_files/table.state.Georgia.csv", sep=" ")
table.state.Hawaii       = read.csv("~/BLS_work/csv_files/table.state.Hawaii.csv", sep=" ")
table.state.Idaho        = read.csv("~/BLS_work/csv_files/table.state.Idaho.csv", sep=" ")
table.state.Illinois     = read.csv("~/BLS_work/csv_files/table.state.Illinois.csv", sep=" ")
table.state.Indiana      = read.csv("~/BLS_work/csv_files/table.state.Indiana.csv", sep=" ")
table.state.Iowa         = read.csv("~/BLS_work/csv_files/table.state.Iowa.csv", sep=" ")
table.state.Kansas       = read.csv("~/BLS_work/csv_files/table.state.Kansas.csv", sep=" ")
table.state.Kentucky     = read.csv("~/BLS_work/csv_files/table.state.Kentucky.csv", sep=" ")
table.state.Louisiana    = read.csv("~/BLS_work/csv_files/table.state.Louisiana.csv", sep=" ")
table.state.Maine        = read.csv("~/BLS_work/csv_files/table.state.Maine.csv", sep=" ")
table.state.Maryland     = read.csv("~/BLS_work/csv_files/table.state.Maryland.csv", sep=" ")
table.state.Massachusetts= read.csv("~/BLS_work/csv_files/table.state.Massachusetts.csv", sep=" ")
table.state.Michigan     = read.csv("~/BLS_work/csv_files/table.state.Michigan.csv", sep=" ")
table.state.Minnesota    = read.csv("~/BLS_work/csv_files/table.state.Minnesota.csv", sep=" ")
table.state.Mississippi  = read.csv("~/BLS_work/csv_files/table.state.Mississippi.csv", sep=" ")
table.state.Missouri     = read.csv("~/BLS_work/csv_files/table.state.Missouri.csv", sep=" ")
table.state.Montana      = read.csv("~/BLS_work/csv_files/table.state.Montana.csv", sep=" ")
table.state.Nebraska     = read.csv("~/BLS_work/csv_files/table.state.Nebraska.csv", sep=" ")
table.state.Nevada       = read.csv("~/BLS_work/csv_files/table.state.Nevada.csv", sep=" ")
table.state.NewHampshire = read.csv("~/BLS_work/csv_files/table.state.NewHampshire.csv", sep=" ")
table.state.NewJersey    = read.csv("~/BLS_work/csv_files/table.state.NewJersey.csv", sep=" ")
table.state.NewMexico    = read.csv("~/BLS_work/csv_files/table.state.NewMexico.csv", sep=" ")
table.state.NewYork      = read.csv("~/BLS_work/csv_files/table.state.NewYork.csv", sep=" ")
table.state.NorthCarolina= read.csv("~/BLS_work/csv_files/table.state.NorthCarolina.csv", sep=" ")
table.state.NorthDakota  = read.csv("~/BLS_work/csv_files/table.state.NorthDakota.csv", sep=" ")
table.state.Ohio         = read.csv("~/BLS_work/csv_files/table.state.Ohio.csv", sep=" ")
table.state.Oklahoma     = read.csv("~/BLS_work/csv_files/table.state.Oklahoma.csv", sep=" ")
table.state.Oregon       = read.csv("~/BLS_work/csv_files/table.state.Oregon.csv", sep=" ")
table.state.Pennsylvania = read.csv("~/BLS_work/csv_files/table.state.Pennsylvania.csv", sep=" ")
table.state.RhodeIsland  = read.csv("~/BLS_work/csv_files/table.state.RhodeIsland.csv", sep=" ")
table.state.SouthCarolina= read.csv("~/BLS_work/csv_files/table.state.SouthCarolina.csv", sep=" ")
table.state.SouthDakota  = read.csv("~/BLS_work/csv_files/table.state.SouthDakota.csv", sep=" ")
table.state.Tennessee    = read.csv("~/BLS_work/csv_files/table.state.Tennessee.csv", sep=" ")
table.state.Texas        = read.csv("~/BLS_work/csv_files/table.state.Texas.csv", sep=" ")
table.state.Utah         = read.csv("~/BLS_work/csv_files/table.state.Utah.csv", sep=" ")
table.state.Vermont      = read.csv("~/BLS_work/csv_files/table.state.Vermont.csv", sep=" ")
table.state.Virginia     = read.csv("~/BLS_work/csv_files/table.state.Virginia.csv", sep=" ")
table.state.Washington   = read.csv("~/BLS_work/csv_files/table.state.Washington.csv", sep=" ")
table.state.WestVirginia = read.csv("~/BLS_work/csv_files/table.state.WestVirginia.csv", sep=" ")
table.state.Wisconsin    = read.csv("~/BLS_work/csv_files/table.state.Wisconsin.csv", sep=" ")
table.state.Wyoming      = read.csv("~/BLS_work/csv_files/table.state.Wyoming.csv", sep=" ")

shinyServer(function(input, output){

  output$State <- renderText({ 
    paste("you have selected tabel.state.", input$state)
  })
  output$Industry <- renderText({ 
    paste("you have selected tabel.industry.", input$industry)
  })
  
  output$plot_Employment <- renderPlot({
    datain <- switch(input$state,
                   "Alabama" = table.state.Alabama,                   
                   "Alaska" = table.state.Alaska,           
                   "Arizona" =               table.state.Arizona,      
                   "Arkansas" =              table.state.Arkansas,     
                   "California" =            table.state.California,   
                   "Colorado" =              table.state.Colorado,     
                   "Connecticut" =           table.state.Connecticut,  
                   "Delaware" =              table.state.Delaware,     
                   "District of Columbia" =  table.state.DofColumbia,  
                   "Florida" =               table.state.Florida,      
                   "Georgia" =               table.state.Georgia,      
                   "Hawaii" =                table.state.Hawaii,       
                   "Idaho" =                 table.state.Idaho,        
                   "Illinois" =              table.state.Illinois,     
                   "Indiana" =               table.state.Indiana  ,    
                   "Iowa" =                  table.state.Iowa      ,   
                   "Kansas" =                table.state.Kansas     ,  
                   "Kentucky" =              table.state.Kentucky    , 
                   "Louisiana" =             table.state.Louisiana    ,
                   "Maine" =                 table.state.Maine        ,
                   "Maryland" =              table.state.Maryland     ,
                   "Massachusetts" =         table.state.Massachusetts,
                   "Michigan" =              table.state.Michigan     ,
                   "Minnesota" =             table.state.Minnesota    ,
                   "Mississippi" =           table.state.Mississippi  ,
                   "Missouri" =              table.state.Missouri     ,
                   "Montana" =               table.state.Montana      ,
                   "Nebraska" =              table.state.Nebraska     ,
                   "Nevada" =                table.state.Nevada       ,
                   "New Hampshire" =         table.state.NewHampshire ,
                   "New Jersey" =            table.state.NewJersey    ,
                   "New Mexico" =            table.state.NewMexico    ,
                   "New York" =              table.state.NewYork      ,
                   "North Carolina" =        table.state.NorthCarolina,
                   "North Dakota" =          table.state.NorthDakota  ,
                   "Ohio" =                  table.state.Ohio         ,
                   "Oklahoma" =              table.state.Oklahoma     ,
                   "Oregon" =                table.state.Oregon       ,
                   "Pennsylvania" =          table.state.Pennsylvania ,
                   "Rhode Island" =          table.state.RhodeIsland  ,
                   "South Carolina" =        table.state.SouthCarolina,
                   "South Dakota" =          table.state.SouthDakota  ,
                   "Tennessee" =             table.state.Tennessee    ,
                   "Texas" =                 table.state.Texas        ,
                   "Utah" =                  table.state.Utah         ,
                   "Vermont" =               table.state.Vermont      ,
                   "Virginia" =              table.state.Virginia     ,
                   "Washington" =            table.state.Washington   ,
                   "West Virginia" =         table.state.WestVirginia ,
                   "Wisconsin" =             table.state.Wisconsin    ,
                   "Wyoming" =               table.state.Wyoming                      
                   )
    ggplot(data=datain,aes(y=Fraction_Employment, x=NAICS_name, color="black", fill= "white")) + 
      geom_bar(stat="identity") + 
      coord_flip() + 
      theme(legend.position="none") +  
      xlab('')
  }) 
  
  output$plot_Payroll <- renderPlot({
    datain <- switch(input$state,
                     "Alabama" = table.state.Alabama,                   
                     "Alaska" = table.state.Alaska,           
                     "Arizona" =               table.state.Arizona,      
                     "Arkansas" =              table.state.Arkansas,     
                     "California" =            table.state.California,   
                     "Colorado" =              table.state.Colorado,     
                     "Connecticut" =           table.state.Connecticut,  
                     "Delaware" =              table.state.Delaware,     
                     "District of Columbia" =  table.state.DofColumbia,  
                     "Florida" =               table.state.Florida,      
                     "Georgia" =               table.state.Georgia,      
                     "Hawaii" =                table.state.Hawaii,       
                     "Idaho" =                 table.state.Idaho,        
                     "Illinois" =              table.state.Illinois,     
                     "Indiana" =               table.state.Indiana  ,    
                     "Iowa" =                  table.state.Iowa      ,   
                     "Kansas" =                table.state.Kansas     ,  
                     "Kentucky" =              table.state.Kentucky    , 
                     "Louisiana" =             table.state.Louisiana    ,
                     "Maine" =                 table.state.Maine        ,
                     "Maryland" =              table.state.Maryland     ,
                     "Massachusetts" =         table.state.Massachusetts,
                     "Michigan" =              table.state.Michigan     ,
                     "Minnesota" =             table.state.Minnesota    ,
                     "Mississippi" =           table.state.Mississippi  ,
                     "Missouri" =              table.state.Missouri     ,
                     "Montana" =               table.state.Montana      ,
                     "Nebraska" =              table.state.Nebraska     ,
                     "Nevada" =                table.state.Nevada       ,
                     "New Hampshire" =         table.state.NewHampshire ,
                     "New Jersey" =            table.state.NewJersey    ,
                     "New Mexico" =            table.state.NewMexico    ,
                     "New York" =              table.state.NewYork      ,
                     "North Carolina" =        table.state.NorthCarolina,
                     "North Dakota" =          table.state.NorthDakota  ,
                     "Ohio" =                  table.state.Ohio         ,
                     "Oklahoma" =              table.state.Oklahoma     ,
                     "Oregon" =                table.state.Oregon       ,
                     "Pennsylvania" =          table.state.Pennsylvania ,
                     "Rhode Island" =          table.state.RhodeIsland  ,
                     "South Carolina" =        table.state.SouthCarolina,
                     "South Dakota" =          table.state.SouthDakota  ,
                     "Tennessee" =             table.state.Tennessee    ,
                     "Texas" =                 table.state.Texas        ,
                     "Utah" =                  table.state.Utah         ,
                     "Vermont" =               table.state.Vermont      ,
                     "Virginia" =              table.state.Virginia     ,
                     "Washington" =            table.state.Washington   ,
                     "West Virginia" =         table.state.WestVirginia ,
                     "Wisconsin" =             table.state.Wisconsin    ,
                     "Wyoming" =               table.state.Wyoming                      
    )
    ggplot(data=datain, aes(y=Payroll, x=NAICS_name, color="black", fill= "white")) + 
      geom_bar(stat="identity") +  
      coord_flip() + 
      theme(legend.position="none") + 
      xlab('') 
  })
  
  output$plot_Payroll_byIndustry <- renderPlot({
    datain <- switch(input$state,
                     "Alabama" = table.state.Alabama,                   
                     "Alaska" = table.state.Alaska,           
                     "Arizona" =               table.state.Arizona,      
                     "Arkansas" =              table.state.Arkansas,     
                     "California" =            table.state.California,   
                     "Colorado" =              table.state.Colorado,     
                     "Connecticut" =           table.state.Connecticut,  
                     "Delaware" =              table.state.Delaware,     
                     "District of Columbia" =  table.state.DofColumbia,  
                     "Florida" =               table.state.Florida,      
                     "Georgia" =               table.state.Georgia,      
                     "Hawaii" =                table.state.Hawaii,       
                     "Idaho" =                 table.state.Idaho,        
                     "Illinois" =              table.state.Illinois,     
                     "Indiana" =               table.state.Indiana  ,    
                     "Iowa" =                  table.state.Iowa      ,   
                     "Kansas" =                table.state.Kansas     ,  
                     "Kentucky" =              table.state.Kentucky    , 
                     "Louisiana" =             table.state.Louisiana    ,
                     "Maine" =                 table.state.Maine        ,
                     "Maryland" =              table.state.Maryland     ,
                     "Massachusetts" =         table.state.Massachusetts,
                     "Michigan" =              table.state.Michigan     ,
                     "Minnesota" =             table.state.Minnesota    ,
                     "Mississippi" =           table.state.Mississippi  ,
                     "Missouri" =              table.state.Missouri     ,
                     "Montana" =               table.state.Montana      ,
                     "Nebraska" =              table.state.Nebraska     ,
                     "Nevada" =                table.state.Nevada       ,
                     "New Hampshire" =         table.state.NewHampshire ,
                     "New Jersey" =            table.state.NewJersey    ,
                     "New Mexico" =            table.state.NewMexico    ,
                     "New York" =              table.state.NewYork      ,
                     "North Carolina" =        table.state.NorthCarolina,
                     "North Dakota" =          table.state.NorthDakota  ,
                     "Ohio" =                  table.state.Ohio         ,
                     "Oklahoma" =              table.state.Oklahoma     ,
                     "Oregon" =                table.state.Oregon       ,
                     "Pennsylvania" =          table.state.Pennsylvania ,
                     "Rhode Island" =          table.state.RhodeIsland  ,
                     "South Carolina" =        table.state.SouthCarolina,
                     "South Dakota" =          table.state.SouthDakota  ,
                     "Tennessee" =             table.state.Tennessee    ,
                     "Texas" =                 table.state.Texas        ,
                     "Utah" =                  table.state.Utah         ,
                     "Vermont" =               table.state.Vermont      ,
                     "Virginia" =              table.state.Virginia     ,
                     "Washington" =            table.state.Washington   ,
                     "West Virginia" =         table.state.WestVirginia ,
                     "Wisconsin" =             table.state.Wisconsin    ,
                     "Wyoming" =               table.state.Wyoming                      
    )
    ggplot(data=datain, aes(y=Payroll, x=NAICS_name, color="black", fill= "white")) + 
      geom_bar(stat="identity") +  
      coord_flip() + 
      theme(legend.position="none") + 
      xlab('') 
  })
  
})
