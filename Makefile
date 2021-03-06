# My shot at making a Makefile

update:
	# Creating zip package for AWS Lambda...
	@zip stravalambda.zip -r requests/ strava_lambda.py 1> /dev/null
	# Package created...
	# Updating Lambda code on AWS servers...
	@aws lambda update-function-code --function-name arn:aws:lambda:us-west-2:642747647654:function:StravaLambda --zip-file fileb://stravalambda.zip
	# Lambda code updated...
	# Cleaning up files...
	@rm -f stravalambda.zip
	# Done!
