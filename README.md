# ANOVA
Using R to investigate the equality of treatment means by examining variation

The goal of this problem is to provide an intuitive feel for how analysis of 
variance (ANOVA) works.  

Open the dataset called “Lightbulb Lifetimes Stacked”. 

Ten bulbs of each of three brands were allowed to burn until they died, and their lifetimes in 
hours were recorded in the dataset. The “Stacked” refers to the format of the data in the .csv file: 
the responses are in one column, and the bulb brands are in another

Here is what we want to look at:

1. Make side-by-side plots.  By looking at the boxplots, does it seem that the means for the three 
lifetime distributions differ much?

2. Next we will alter these data sets. We will keep them centered at their 
respective means, but contract each data set by a factor of 4. Make side-by-side 
boxplots of the new data. Have the means changed at all? But, by looking at the boxplots, does it 
seem that the means for the three altered lifetime distributions differ 
much? 

3. Now let’s alter the data sets once more. Take the original lifetimes and 
contract them by a factor of 15 this time instead of 4. Again, make side-by-side boxplots. 
By looking at the boxplots, does it seem that the means for the three altered lifetime distributions differ much?

4. Run ANOVA.  Set-up your null and alternative hypotheses, provide your test statistic, p-value, and 
conclusion
