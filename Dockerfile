FROM gitlab/gitlab-ee:10.0.7-ee.0
COPY ci_yaml_http.patch /opt/gitlab/embedded/service/gitlab-rails/ci_yaml_http.patch
RUN apt-get update ; apt-get install -y patch
RUN cd /opt/gitlab/embedded/service/gitlab-rails ; patch < ci_yaml_http.patch
