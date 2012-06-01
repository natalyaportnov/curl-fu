#!/bin/bash

# What we know about the upload site:

xythos_path="/users/ajz/ngpdemo"
xythos_url="https://netfiles.umn.edu/xythoswfs/webui/_xy-22577887_1-t_QBS86Qzi"
xythos_password="sunshine"

# What we can guess about this Xythos server:

# It's base URL is:
xythos_base_url="https://netfiles.umn.edu/xythoswfs/webui/"

# What we can discover about the upload site

# The URL above prompts for a password.
# It's in a HTTP POST form named 'passwordform'
# The action to the form is 'https://netfiles.umn.edu/xythoswfs/webui/_xy-22577887_1-t_QBS86Qzi', the same
# as the page itself.
# The password is in the field 'password'

# The application creates three cookies when the page form is loaded:
#  * umntc_audience
#  * _utma
#  * _utmz

# Once you login with the password, you get two new cookies:
#  * AcceptLanguage
#  * XythosTicketSessionID1

# There is a button to upload a file, id=UPLOAD
# There is s hidden field:
#    <input type="hidden" name="stk" value="CEB27808D404828">
# The upload action is:
# 'https://netfiles.umn.edu/xythoswfs/webui/users/ajz/ngpdemo?action=upload&subaction=print&uniq=-fwg7u0&stk=CEB27808D404828'

# When you go to the upload form,
# There's a form to upload a file form[name='fileUpload']
# There's a button to click 'Choose File', input[name='FILE']
# There's a submit button to start the upload, input[type='submit']
# There is a checkbox to overwrite a file if it exists, 
#    <input type="checkbox" name="overwrite" id="overwrite" value="overwrite-true">

# When you upload, the following POST request is made
# https://netfiles.umn.edu/xythoswfs/webui/users/ajz/ngpdemo?action=upload&subaction=uploadbasic&uniq=-fwg7bl&stk=CEB27808D404828


