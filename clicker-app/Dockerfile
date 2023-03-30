# Pull base image
FROM ruby:3.1.0

# Expose port
EXPOSE 3000

# Set the container working directory
WORKDIR /usr/src/app

# Install bundler
RUN gem install bundler:2.3.3

# Copy dependencies files
COPY Gemfile* ./

# Install dependencies
RUN bundle install

# Copy app files to container's directory
COPY . .

# Run migrations to sqlite database
RUN rails db:migrate RAILS_ENV=production

# Build up tasks on Rakefile
RUN rake assets:precompile

# Run the app
CMD ["rails", "s", "-e", "production"]
