# Just Drop-IT

Just Drop IT is a public file sharing web application. Each user requires to sign up in order to be able to download or upload his/her own collaboration resources. Uploaded resources are only able to be deleted by the user owner.


| Dependency | Version |
|:-----------|:--------|
| Ruby       | 2.2.4   |
| Rails      | 4.2.6   |
| Postgresql | 0.15    |

## Getting Started

1. Clone the project

  `git clone git@github.com:EGiataganas/just-drop-it.git`

2. Install the project's dependencies using bundler.

  `bundle install`

3. Run tests

  `rake`

## Server

  `rails s`

## Deployment

(http://just-drop-it.herokuapp.com/)

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
