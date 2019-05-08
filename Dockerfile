FROM gitlab/gitlab-ee:10.7.0-ee.0
COPY ci_yaml_http.patch /opt/gitlab/embedded/service/gitlab-rails/app/models/ci/ci_yaml_http.patch
RUN apt-get update ; apt-get install -y patch
RUN cd /opt/gitlab/embedded/service/gitlab-rails/app/models/ci/ ; patch < ci_yaml_http.patch
