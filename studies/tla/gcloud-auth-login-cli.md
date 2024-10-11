# 1. Login with the new account
gcloud auth login username@gmail.com

# 2. Verify authenticated accounts
gcloud auth list

# 3. Set the new account as active
gcloud config set account username@gmail.com

# 4. (Optional) Remove the old account
gcloud auth revoke old.account@gmail.com

# 5. (Optional) Switch the project
   - gcloud projects list
   - gcloud config set project <PROJECT_ID>

# 6. (Optional) Create a new project
   - gcloud projects create <NEW_PROJECT_ID> --name="<NEW_PROJECT_NAME>"
   - gcloud config set project <NEW_PROJECT_ID>

