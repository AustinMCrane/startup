FROM ennovarplayerone/rordev
EXPOSE 8000
COPY . /workspace
WORKDIR /workspace
ENV RAILS_ENV=production
ENV SECRET_KEY_BASE=dajkwjoincuqdniubwurbgqhepojomomwckadmdlkaj
RUN bundle install
RUN rake assets:precompile
CMD ["rails", "s", "-p", "8000", "-b", "0.0.0.0"]
