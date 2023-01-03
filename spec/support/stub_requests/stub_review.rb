module Request
  module StubRequests
    def stub_review
      stub_request(:get, "https://api.github.com/repos/sinatra/sinatra/pulls/1857/reviews?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 200, body: JSON.generate(
        [{"id"=>1233184598,
          "node_id"=>"PRR_kwDOAAGh885JgOdW",
          "user"=>
           {"login"=>"dentarg",
            "id"=>42626,
            "node_id"=>"MDQ6VXNlcjQyNjI2",
            "avatar_url"=>"https://avatars.githubusercontent.com/u/42626?u=347da3805f67c316594806588e22b494ad920887&v=4",
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
          "body"=>"",
          "state"=>"COMMENTED",
          "html_url"=>"https://github.com/sinatra/sinatra/pull/1857#pullrequestreview-1233184598",
          "pull_request_url"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857",
          "author_association"=>"CONTRIBUTOR",
          "_links"=>
           {"html"=>{"href"=>"https://github.com/sinatra/sinatra/pull/1857#pullrequestreview-1233184598"},
            "pull_request"=>{"href"=>"https://api.github.com/repos/sinatra/sinatra/pulls/1857"}},
          "submitted_at"=>"2022-12-30T17:06:33Z",
          "commit_id"=>"4f5986bcb3a70a72f58318ee2f10a7c9bcc38c77"}]
      ), headers: {})
    end

    def stub_review_incorect
      stub_request(:get, "https://api.github.com/repos/some_incorect_name_for_project_owner/some_incorect_name_for_project/pulls/12312323123213213/reviews?page=1&per_page=100").
      with(
        headers: {
        'Accept'=>'application/vnd.github+json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Bearer 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',
        'User-Agent'=>'Faraday v2.7.2',
        'X-Github-Api-Version'=>'2022-11-28'
        }).
      to_return(status: 404, body: JSON.generate(
        {"message"=>"Not Found", "documentation_url"=>"https://docs.github.com/rest/reference/pulls#list-reviews-for-a-pull-request"}
      ), headers: {})
    end
  end
end
