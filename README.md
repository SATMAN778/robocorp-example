# README for this task package

How to Create Your First Robot Using Robocorp

The best way to start is using the example given by the “Robocorp Team”, You should go through the given example to understand the working, try running them and then start creating something basic.

Those who are already familiar with Robot Framework, Jupyter notebook and they will not face any challenge, however if you have not worked with Jupyter notebook (Part of Anaconda Distribution) will face some challenges while running the bot.

For this article; we are going to build a stock price scraper robot which is capable of doing following steps - 
•	Open chrome web browser
•	Go to Redif Money https://money.rediff.com/sectors/bse/ 
•	Get Prices for given input of Sector such as oilgas etc.
•	Create a file system directory for given input sector
•	Store the price information in files in the above created directory

Let’s Get started!
Step #1 Create/Initialize the software robot directory

There are two ways of doing it; It all depends upon your preference.
1.	Navigate to your project’s directory in the terminal or the command prompt. Initialize the software robot directory:
robo init web-scraper-robot
2.	Alternatively, you can create new package using Robocorp Lab Splash screen and selecting create new package 
3.	Once Package is initialized it will create folder structure as per below. 







Step # 2 Robot task file (tasks/robot.robot file)

Robot task file is the main file where you need to define the working of Robot, for better reusability keywords should be defined into resources folder so that they can be reused in multiple blocks.

You can treat this as main activity page, which call other subtask as per design.

For my Example (It will look like)


Step #3. Robot keywords file (resources/keywords.robot file)
This file contains all the list of Keywords which will be used in the Robot Operation, this contains user defined as well as default keywords imported from different library.
You can notice the use of Library (At top of file) which are nothing but reusable python packages designed for various operation.
For my Example (It will look like)


Step #4 Variables file (variables/variables.py)
This file will contain all the assets, url and other configuration. You might notice this as python file i.e. we can seamlessly can integrate different python packages to store values(Such as os info,network,datetime etc.)
For my example it’s pretty simple.



Step #5 Debug/Run Activity (Test the robot Run)
Once you are done with changes in your project code(for my example 3 files above) you can run it directly from Robocorp lab. 
•	The best part of this is jupyter lab integration help to run the robot using cells(Those from python background will love it :P) so that you can see the result inline. 
•	In case there is any issues it will display the inline debug log which can be obviously downloaded, But it’s pretty nicely formatted to pin point what exactly went wrong and you can get detailed information on same.
•	Once you are able to run the bot successfully, Now its turn for wrap the Robot.


Step #6 Wrap the robot 
You can use Robocorp CLI utility to run command - robo wrap
This will package your first robot as an executable package so that you can run it anywhere!
Step#7 Run the robot
Running your bot is supper easy task, you can use below commands to run it locally.
Running robot files (robo run entrypoint.sh, robo run entrypoint.cmd)












