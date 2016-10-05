FROM ennovarplayerone/rordev
EXPOSE 8000

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

ENV app /app
RUN mkdir $app
WORKDIR $app
ADD . $app

ENV SECRET_KEY_BASE=5da6448139d9600b1dd96ce518644b7ae103d812ea5efba8733281c57fe85572223fa365e2cd1b50828e9dc42a93e49e688e344d7cb7704b36978843429040d0
RUN rake assets:precompile RAILS_ENV='production'

CMD ["rails", "s", "-p", "8000", "-b", "0.0.0.0"]
