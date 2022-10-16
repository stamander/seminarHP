FROM ryz310/rails-on-docker

WORKDIR /myapp
ENV BUNDLE_JOBS=32
COPY Gemfile Gemfile.lock /myapp/
RUN gem install bundler -v 2.0.1
COPY . /myapp