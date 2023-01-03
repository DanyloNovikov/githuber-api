module Request
  module StubRequests
    def stub_comment
      stub_request(:get, "https://api.github.com/repos/sinatra/sinatra/issues/1857/comments?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 200, body: JSON.generate(
        [{"url"=>"https://api.github.com/repos/sinatra/sinatra/issues/comments/1368013284",
          "html_url"=>"https://github.com/sinatra/sinatra/pull/1857#issuecomment-1368013284",
          "issue_url"=>"https://api.github.com/repos/sinatra/sinatra/issues/1857",
          "id"=>1368013284,
          "node_id"=>"IC_kwDOAAGh885Rijnk",
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
          "created_at"=>((DateTime.now - 1.week).beginning_of_week + 1.day).to_s,
          "updated_at"=>"2022-12-30T17:03:55Z",
          "author_association"=>"CONTRIBUTOR",
          "body"=>
           "> There's one failing test left to address\r\n\r\nSome links about it:\r\n\r\n* https://github.com/sinatra/sinatra/commit/d8c18394d86626726c256ce57c3336ca649a33ae\r\n* https://github.com/sinatra/sinatra/pull/1517\r\n* https://github.com/sinatra/sinatra/pull/1526\r\n\r\nRe: async/streaming, https://github.com/dentarg/sinatra/actions/runs/3807969308/jobs/6478153396 is a test run before I reverted https://github.com/sinatra/sinatra/pull/1857/commits/421018419d64ce900052848ea464d778a7b548d9 if anyone are curious",
          "reactions"=>
           {"url"=>"https://api.github.com/repos/sinatra/sinatra/issues/comments/1368013284/reactions",
            "total_count"=>0,
            "+1"=>0,
            "-1"=>0,
            "laugh"=>0,
            "hooray"=>0,
            "confused"=>0,
            "heart"=>0,
            "rocket"=>0,
            "eyes"=>0},
          "performed_via_github_app"=>nil}]), headers: {})
    end

    def stub_comment_incorect
      stub_request(:get, "https://api.github.com/repos/some_incorect_name_for_project_owner/some_incorect_name_for_project/issues/12312323123213213/comments?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 404, body: JSON.generate(
        {"message"=>"Not Found", "documentation_url"=>"https://docs.github.com/rest/reference/issues#list-issue-comments"}
      ), headers: {})
    end
  end
end
