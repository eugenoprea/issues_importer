require 'rubygems'
require 'bundler'
Bundler.require(:default)

# Modify your credentials here
BITBUCKET_USERNAME = "username"
BITBUCKET_PASSWORD = "password"
BITBUCKET_REPONAME = "reponame"

GITHUB_USERNAME = "username"
GITHUB_PASSWORD = "password"
GITHUB_REPONAME = "owner/repo-name"

# Script starts, no modification required after here
BITBUCKET = BitBucket.new login: BITBUCKET_USERNAME, password: BITBUCKET_PASSWORD
GITHUB = Octokit::Client.new login: GITHUB_USERNAME, password: GITHUB_PASSWORD

def extract_issues(status)
  result = []
  start = 0

  loop do
    issues = BITBUCKET.issues.list_repo BITBUCKET_USERNAME, BITBUCKET_REPONAME, limit: 50, start: start, sort: :created_on, status: status
    break if issues.count == 0

    result += issues
    start += 50
  end

  result
end

issues = []
['new', 'open', 'on hold', 'duplicate', 'resolved', 'wontfix', 'invalid'].each do |status|
  issues += extract_issues(status)
end

issues.each do |issue|
  GITHUB.create_issue GITHUB_REPONAME, issue.title, issue.content, labels: "bitbucket"
end
