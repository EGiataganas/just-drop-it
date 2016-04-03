# Just Drop-IT

*A little story of the project (in_progress)*

| Dependency | Version |
|:-----------|:--------|
| Ruby       | 2.2.4   |
| Rails      | 4.2.6   |
| Postgresql | 0.15    |

## Getting Started

1. Clone the project

  `git clone git@github.com:EGiataganas/just-drop-it.git`

2. Install the project's dependencies using bundler.

  - `bundle install`

3. Run tests

  - `rake`

## Server

  `rails s`

## Deployment

(http://http://just-drop-it.herokuapp.com/)

## Environment variables used by the application

We use [figaro](https://github.com/laserlemon/figaro) gem to control our environment variables.
[Figaro configuration](https://github.com/laserlemon/figaro#getting-started)

### AWS Credentials

We use AWS to store files at AWS S3 Bucket.

- `PROVIDER`
- `AWS_KEY`
- `AWS_SECRET`
- `AWS_REGION`
- `S3_BUCKET_NAME`
