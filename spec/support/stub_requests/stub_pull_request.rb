module Request
  module StubRequests
    def stub_pull_request
      stub_request(:get, "https://api.github.com/repos/sinatra/sinatra/pulls?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 200, body: JSON.generate([
        {"url"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857",
          "id"=>1181045356,
          "node_id"=>"PR_kwDOAAGh885GZVJs",
          "html_url"=>"https://github.com/sinatra/sinatra/pull/1857",
          "diff_url"=>"https://github.com/sinatra/sinatra/pull/1857.diff",
          "patch_url"=>"https://github.com/sinatra/sinatra/pull/1857.patch",
          "issue_url"=>"https://api.github.com/repos/sinatra/sinatra/issues/1857",
          "number"=>1857,
          "state"=>"open",
          "locked"=>false,
          "title"=>"Rack 3 support",
          "user"=>
           {"login"=>"dentarg",
            "id"=>42626,
            "node_id"=>"MDQ6VXNlcjQyNjI2",
            "avatar_url"=>"https://avatars.githubusercontent.com/u/42626?v=4",
            "gravatar_id"=>"",
            "url"=>"https://api.github.com/users/dentarg",
            "html_url"=>"https://github.com/dentarg",
            "followers_url"=>"https://api.github.com/users/dentarg/followers",
            "following_url"=>"https://api.github.com/users/dentarg/following{/other_user}",
            "gists_url"=>"https://api.github.com/users/dentarg/gists{/gist_id}",
            "starred_url"=>"https://api.github.com/users/dentarg/starred{/owner}{/repo}",
            "subscriptions_url"=>"https://api.github.com/users/dentarg/subscriptions",
            "organizations_url"=>"https://api.github.com/users/dentarg/orgs",
            "repos_url"=>"https://api.github.com/users/dentarg/repos",
            "events_url"=>"https://api.github.com/users/dentarg/events{/privacy}",
            "received_events_url"=>"https://api.github.com/users/dentarg/received_events",
            "type"=>"User",
            "site_admin"=>false},
          "body"=>
           "Close #1797\r\n\r\n- [ ] make sinatra test `handles params without a value` pass\r\n- [ ] address rack deprecations\r\n- [ ] address warnings\r\n- [ ] make [rack `latest` job work](https://github.com/sinatra/sinatra/actions/runs/3808067712/jobs/6478335024#step:7:10)\r\n- [ ] restore `continue-on-error` in test workflow\r\n\r\nSee the individual commits for various details.\r\n\r\nThere's one failing test left to address (besides async tests that I have disabled for now, that area is being discussed a bit in #1853):\r\n\r\nhttps://github.com/sinatra/sinatra/blob/9b6ba81089244826395577113ac7bac622fdc327/test/routing_test.rb#L314-L323\r\n\r\nOpening as draft until we have addressed that ??? and also until I've taken this for a spin with a real app ??? something for next year! Happy New Year Sinatra users ???? \r\n\r\n---\r\n\r\nThis work was sponsored by [84codes](https://84.codes/) ([CloudAMQP](https://www.cloudamqp.com/), [CloudKarafka](https://www.cloudkarafka.com/), [ElephantSQL](https://www.cloudmqtt.com/), [CloudMQTT](https://www.elephantsql.com/))",
          "created_at"=>((DateTime.now - 1.week).beginning_of_week + 1.day).to_s,
          "updated_at"=>"2022-12-31T17:06:00Z",
          "closed_at"=>nil,
          "merged_at"=>nil,
          "merge_commit_sha"=>"929af82f578089a8c9b355df84321ae0dd3535f2",
          "assignee"=>nil,
          "assignees"=>[],
          "requested_reviewers"=>[],
          "requested_teams"=>[],
          "labels"=>[],
          "milestone"=>nil,
          "draft"=>true,
          "commits_url"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857/commits",
          "review_comments_url"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857/comments",
          "review_comment_url"=>"https://api.github.com/repos/sinatra/sinatra/pulls/comments{/number}",
          "comments_url"=>"https://api.github.com/repos/sinatra/sinatra/issues/1857/comments",
          "statuses_url"=>"https://api.github.com/repos/sinatra/sinatra/statuses/4f5986bcb3a70a72f58318ee2f10a7c9bcc38c77",
          "head"=>
           {"label"=>"dentarg:rack-3",
            "ref"=>"rack-3",
            "sha"=>"4f5986bcb3a70a72f58318ee2f10a7c9bcc38c77",
            "user"=>
             {"login"=>"dentarg",
              "id"=>42626,
              "node_id"=>"MDQ6VXNlcjQyNjI2",
              "avatar_url"=>"https://avatars.githubusercontent.com/u/42626?v=4",
              "gravatar_id"=>"",
              "url"=>"https://api.github.com/users/dentarg",
              "html_url"=>"https://github.com/dentarg",
              "followers_url"=>"https://api.github.com/users/dentarg/followers",
              "following_url"=>"https://api.github.com/users/dentarg/following{/other_user}",
              "gists_url"=>"https://api.github.com/users/dentarg/gists{/gist_id}",
              "starred_url"=>"https://api.github.com/users/dentarg/starred{/owner}{/repo}",
              "subscriptions_url"=>"https://api.github.com/users/dentarg/subscriptions",
              "organizations_url"=>"https://api.github.com/users/dentarg/orgs",
              "repos_url"=>"https://api.github.com/users/dentarg/repos",
              "events_url"=>"https://api.github.com/users/dentarg/events{/privacy}",
              "received_events_url"=>"https://api.github.com/users/dentarg/received_events",
              "type"=>"User",
              "site_admin"=>false},
            "repo"=>
             {"id"=>137210894,
              "node_id"=>"MDEwOlJlcG9zaXRvcnkxMzcyMTA4OTQ=",
              "name"=>"sinatra",
              "full_name"=>"dentarg/sinatra",
              "private"=>false,
              "owner"=>
               {"login"=>"dentarg",
                "id"=>42626,
                "node_id"=>"MDQ6VXNlcjQyNjI2",
                "avatar_url"=>"https://avatars.githubusercontent.com/u/42626?v=4",
                "gravatar_id"=>"",
                "url"=>"https://api.github.com/users/dentarg",
                "html_url"=>"https://github.com/dentarg",
                "followers_url"=>"https://api.github.com/users/dentarg/followers",
                "following_url"=>"https://api.github.com/users/dentarg/following{/other_user}",
                "gists_url"=>"https://api.github.com/users/dentarg/gists{/gist_id}",
                "starred_url"=>"https://api.github.com/users/dentarg/starred{/owner}{/repo}",
                "subscriptions_url"=>"https://api.github.com/users/dentarg/subscriptions",
                "organizations_url"=>"https://api.github.com/users/dentarg/orgs",
                "repos_url"=>"https://api.github.com/users/dentarg/repos",
                "events_url"=>"https://api.github.com/users/dentarg/events{/privacy}",
                "received_events_url"=>"https://api.github.com/users/dentarg/received_events",
                "type"=>"User",
                "site_admin"=>false},
              "html_url"=>"https://github.com/dentarg/sinatra",
              "description"=>"Classy web-development dressed in a DSL (official / canonical repo)",
              "fork"=>true,
              "url"=>"https://api.github.com/repos/dentarg/sinatra",
              "forks_url"=>"https://api.github.com/repos/dentarg/sinatra/forks",
              "keys_url"=>"https://api.github.com/repos/dentarg/sinatra/keys{/key_id}",
              "collaborators_url"=>"https://api.github.com/repos/dentarg/sinatra/collaborators{/collaborator}",
              "teams_url"=>"https://api.github.com/repos/dentarg/sinatra/teams",
              "hooks_url"=>"https://api.github.com/repos/dentarg/sinatra/hooks",
              "issue_events_url"=>"https://api.github.com/repos/dentarg/sinatra/issues/events{/number}",
              "events_url"=>"https://api.github.com/repos/dentarg/sinatra/events",
              "assignees_url"=>"https://api.github.com/repos/dentarg/sinatra/assignees{/user}",
              "branches_url"=>"https://api.github.com/repos/dentarg/sinatra/branches{/branch}",
              "tags_url"=>"https://api.github.com/repos/dentarg/sinatra/tags",
              "blobs_url"=>"https://api.github.com/repos/dentarg/sinatra/git/blobs{/sha}",
              "git_tags_url"=>"https://api.github.com/repos/dentarg/sinatra/git/tags{/sha}",
              "git_refs_url"=>"https://api.github.com/repos/dentarg/sinatra/git/refs{/sha}",
              "trees_url"=>"https://api.github.com/repos/dentarg/sinatra/git/trees{/sha}",
              "statuses_url"=>"https://api.github.com/repos/dentarg/sinatra/statuses/{sha}",
              "languages_url"=>"https://api.github.com/repos/dentarg/sinatra/languages",
              "stargazers_url"=>"https://api.github.com/repos/dentarg/sinatra/stargazers",
              "contributors_url"=>"https://api.github.com/repos/dentarg/sinatra/contributors",
              "subscribers_url"=>"https://api.github.com/repos/dentarg/sinatra/subscribers",
              "subscription_url"=>"https://api.github.com/repos/dentarg/sinatra/subscription",
              "commits_url"=>"https://api.github.com/repos/dentarg/sinatra/commits{/sha}",
              "git_commits_url"=>"https://api.github.com/repos/dentarg/sinatra/git/commits{/sha}",
              "comments_url"=>"https://api.github.com/repos/dentarg/sinatra/comments{/number}",
              "issue_comment_url"=>"https://api.github.com/repos/dentarg/sinatra/issues/comments{/number}",
              "contents_url"=>"https://api.github.com/repos/dentarg/sinatra/contents/{+path}",
              "compare_url"=>"https://api.github.com/repos/dentarg/sinatra/compare/{base}...{head}",
              "merges_url"=>"https://api.github.com/repos/dentarg/sinatra/merges",
              "archive_url"=>"https://api.github.com/repos/dentarg/sinatra/{archive_format}{/ref}",
              "downloads_url"=>"https://api.github.com/repos/dentarg/sinatra/downloads",
              "issues_url"=>"https://api.github.com/repos/dentarg/sinatra/issues{/number}",
              "pulls_url"=>"https://api.github.com/repos/dentarg/sinatra/pulls{/number}",
              "milestones_url"=>"https://api.github.com/repos/dentarg/sinatra/milestones{/number}",
              "notifications_url"=>"https://api.github.com/repos/dentarg/sinatra/notifications{?since,all,participating}",
              "labels_url"=>"https://api.github.com/repos/dentarg/sinatra/labels{/name}",
              "releases_url"=>"https://api.github.com/repos/dentarg/sinatra/releases{/id}",
              "deployments_url"=>"https://api.github.com/repos/dentarg/sinatra/deployments",
              "created_at"=>"2018-06-13T12:12:54Z",
              "updated_at"=>"2022-02-08T10:04:18Z",
              "pushed_at"=>"2022-12-30T16:54:12Z",
              "git_url"=>"git://github.com/dentarg/sinatra.git",
              "ssh_url"=>"git@github.com:dentarg/sinatra.git",
              "clone_url"=>"https://github.com/dentarg/sinatra.git",
              "svn_url"=>"https://github.com/dentarg/sinatra",
              "homepage"=>"http://www.sinatrarb.com/",
              "size"=>7407,
              "stargazers_count"=>0,
              "watchers_count"=>0,
              "language"=>"Ruby",
              "has_issues"=>false,
              "has_projects"=>false,
              "has_downloads"=>true,
              "has_wiki"=>false,
              "has_pages"=>false,
              "has_discussions"=>false,
              "forks_count"=>0,
              "mirror_url"=>nil,
              "archived"=>false,
              "disabled"=>false,
              "open_issues_count"=>0,
              "license"=>{"key"=>"mit", "name"=>"MIT License", "spdx_id"=>"MIT", "url"=>"https://api.github.com/licenses/mit", "node_id"=>"MDc6TGljZW5zZTEz"},
              "allow_forking"=>true,
              "is_template"=>false,
              "web_commit_signoff_required"=>false,
              "topics"=>[],
              "visibility"=>"public",
              "forks"=>0,
              "open_issues"=>0,
              "watchers"=>0,
              "default_branch"=>"master"}},
          "base"=>
           {"label"=>"sinatra:master",
            "ref"=>"master",
            "sha"=>"9b6ba81089244826395577113ac7bac622fdc327",
            "user"=>
             {"login"=>"sinatra",
              "id"=>8312,
              "node_id"=>"MDEyOk9yZ2FuaXphdGlvbjgzMTI=",
              "avatar_url"=>"https://avatars.githubusercontent.com/u/8312?v=4",
              "gravatar_id"=>"",
              "url"=>"https://api.github.com/users/sinatra",
              "html_url"=>"https://github.com/sinatra",
              "followers_url"=>"https://api.github.com/users/sinatra/followers",
              "following_url"=>"https://api.github.com/users/sinatra/following{/other_user}",
              "gists_url"=>"https://api.github.com/users/sinatra/gists{/gist_id}",
              "starred_url"=>"https://api.github.com/users/sinatra/starred{/owner}{/repo}",
              "subscriptions_url"=>"https://api.github.com/users/sinatra/subscriptions",
              "organizations_url"=>"https://api.github.com/users/sinatra/orgs",
              "repos_url"=>"https://api.github.com/users/sinatra/repos",
              "events_url"=>"https://api.github.com/users/sinatra/events{/privacy}",
              "received_events_url"=>"https://api.github.com/users/sinatra/received_events",
              "type"=>"Organization",
              "site_admin"=>false},
            "repo"=>
             {"id"=>106995,
              "node_id"=>"MDEwOlJlcG9zaXRvcnkxMDY5OTU=",
              "name"=>"sinatra",
              "full_name"=>"sinatra/sinatra",
              "private"=>false,
              "owner"=>
               {"login"=>"sinatra",
                "id"=>8312,
                "node_id"=>"MDEyOk9yZ2FuaXphdGlvbjgzMTI=",
                "avatar_url"=>"https://avatars.githubusercontent.com/u/8312?v=4",
                "gravatar_id"=>"",
                "url"=>"https://api.github.com/users/sinatra",
                "html_url"=>"https://github.com/sinatra",
                "followers_url"=>"https://api.github.com/users/sinatra/followers",
                "following_url"=>"https://api.github.com/users/sinatra/following{/other_user}",
                "gists_url"=>"https://api.github.com/users/sinatra/gists{/gist_id}",
                "starred_url"=>"https://api.github.com/users/sinatra/starred{/owner}{/repo}",
                "subscriptions_url"=>"https://api.github.com/users/sinatra/subscriptions",
                "organizations_url"=>"https://api.github.com/users/sinatra/orgs",
                "repos_url"=>"https://api.github.com/users/sinatra/repos",
                "events_url"=>"https://api.github.com/users/sinatra/events{/privacy}",
                "received_events_url"=>"https://api.github.com/users/sinatra/received_events",
                "type"=>"Organization",
                "site_admin"=>false},
              "html_url"=>"https://github.com/sinatra/sinatra",
              "description"=>"Classy web-development dressed in a DSL (official / canonical repo)",
              "fork"=>false,
              "url"=>"https://api.github.com/repos/sinatra/sinatra",
              "forks_url"=>"https://api.github.com/repos/sinatra/sinatra/forks",
              "keys_url"=>"https://api.github.com/repos/sinatra/sinatra/keys{/key_id}",
              "collaborators_url"=>"https://api.github.com/repos/sinatra/sinatra/collaborators{/collaborator}",
              "teams_url"=>"https://api.github.com/repos/sinatra/sinatra/teams",
              "hooks_url"=>"https://api.github.com/repos/sinatra/sinatra/hooks",
              "issue_events_url"=>"https://api.github.com/repos/sinatra/sinatra/issues/events{/number}",
              "events_url"=>"https://api.github.com/repos/sinatra/sinatra/events",
              "assignees_url"=>"https://api.github.com/repos/sinatra/sinatra/assignees{/user}",
              "branches_url"=>"https://api.github.com/repos/sinatra/sinatra/branches{/branch}",
              "tags_url"=>"https://api.github.com/repos/sinatra/sinatra/tags",
              "blobs_url"=>"https://api.github.com/repos/sinatra/sinatra/git/blobs{/sha}",
              "git_tags_url"=>"https://api.github.com/repos/sinatra/sinatra/git/tags{/sha}",
              "git_refs_url"=>"https://api.github.com/repos/sinatra/sinatra/git/refs{/sha}",
              "trees_url"=>"https://api.github.com/repos/sinatra/sinatra/git/trees{/sha}",
              "statuses_url"=>"https://api.github.com/repos/sinatra/sinatra/statuses/{sha}",
              "languages_url"=>"https://api.github.com/repos/sinatra/sinatra/languages",
              "stargazers_url"=>"https://api.github.com/repos/sinatra/sinatra/stargazers",
              "contributors_url"=>"https://api.github.com/repos/sinatra/sinatra/contributors",
              "subscribers_url"=>"https://api.github.com/repos/sinatra/sinatra/subscribers",
              "subscription_url"=>"https://api.github.com/repos/sinatra/sinatra/subscription",
              "commits_url"=>"https://api.github.com/repos/sinatra/sinatra/commits{/sha}",
              "git_commits_url"=>"https://api.github.com/repos/sinatra/sinatra/git/commits{/sha}",
              "comments_url"=>"https://api.github.com/repos/sinatra/sinatra/comments{/number}",
              "issue_comment_url"=>"https://api.github.com/repos/sinatra/sinatra/issues/comments{/number}",
              "contents_url"=>"https://api.github.com/repos/sinatra/sinatra/contents/{+path}",
              "compare_url"=>"https://api.github.com/repos/sinatra/sinatra/compare/{base}...{head}",
              "merges_url"=>"https://api.github.com/repos/sinatra/sinatra/merges",
              "archive_url"=>"https://api.github.com/repos/sinatra/sinatra/{archive_format}{/ref}",
              "downloads_url"=>"https://api.github.com/repos/sinatra/sinatra/downloads",
              "issues_url"=>"https://api.github.com/repos/sinatra/sinatra/issues{/number}",
              "pulls_url"=>"https://api.github.com/repos/sinatra/sinatra/pulls{/number}",
              "milestones_url"=>"https://api.github.com/repos/sinatra/sinatra/milestones{/number}",
              "notifications_url"=>"https://api.github.com/repos/sinatra/sinatra/notifications{?since,all,participating}",
              "labels_url"=>"https://api.github.com/repos/sinatra/sinatra/labels{/name}",
              "releases_url"=>"https://api.github.com/repos/sinatra/sinatra/releases{/id}",
              "deployments_url"=>"https://api.github.com/repos/sinatra/sinatra/deployments",
              "created_at"=>"2009-01-14T01:27:30Z",
              "updated_at"=>"2023-01-02T20:11:40Z",
              "pushed_at"=>"2023-01-02T03:59:48Z",
              "git_url"=>"git://github.com/sinatra/sinatra.git",
              "ssh_url"=>"git@github.com:sinatra/sinatra.git",
              "clone_url"=>"https://github.com/sinatra/sinatra.git",
              "svn_url"=>"https://github.com/sinatra/sinatra",
              "homepage"=>"http://www.sinatrarb.com/",
              "size"=>7409,
              "stargazers_count"=>11800,
              "watchers_count"=>11800,
              "language"=>"Ruby",
              "has_issues"=>true,
              "has_projects"=>true,
              "has_downloads"=>true,
              "has_wiki"=>false,
              "has_pages"=>false,
              "has_discussions"=>true,
              "forks_count"=>2085,
              "mirror_url"=>nil,
              "archived"=>false,
              "disabled"=>false,
              "open_issues_count"=>30,
              "license"=>{"key"=>"mit", "name"=>"MIT License", "spdx_id"=>"MIT", "url"=>"https://api.github.com/licenses/mit", "node_id"=>"MDc6TGljZW5zZTEz"},
              "allow_forking"=>true,
              "is_template"=>false,
              "web_commit_signoff_required"=>false,
              "topics"=>["rack", "ruby", "sinatra", "web-framework"],
              "visibility"=>"public",
              "forks"=>2085,
              "open_issues"=>30,
              "watchers"=>11800,
              "default_branch"=>"master"}},
          "_links"=>
           {"self"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857"},
            "html"=>{"href"=>"https://github.com/sinatra/sinatra/pull/1857"},
            "issue"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/issues/1857"},
            "comments"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/issues/1857/comments"},
            "review_comments"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857/comments"},
            "review_comment"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/pulls/comments{/number}"},
            "commits"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857/commits"},
            "statuses"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/statuses/4f5986bcb3a70a72f58318ee2f10a7c9bcc38c77"}},
          "author_association"=>"CONTRIBUTOR",
          "auto_merge"=>nil,
          "active_lock_reason"=>nil}]
      ), headers: {})
    end

    def stub_pull_request_incorect
      stub_request(:get, "https://api.github.com/repos/some_incorect_name_for_project_owner/some_incorect_name_for_project/pulls?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 404, body: JSON.generate(
        {"message"=>"Not Found", "documentation_url"=>"https://docs.github.com/rest/reference/pulls#list-pull-requests"}
      ), headers: {})
    end
  end
end
