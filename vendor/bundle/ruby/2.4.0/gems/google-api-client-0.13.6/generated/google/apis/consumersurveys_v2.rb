# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/consumersurveys_v2/service.rb'
require 'google/apis/consumersurveys_v2/classes.rb'
require 'google/apis/consumersurveys_v2/representations.rb'

module Google
  module Apis
    # Consumer Surveys API
    #
    # Creates and conducts surveys, lists the surveys that an authenticated user
    # owns, and retrieves survey results and information about specified surveys.
    #
    module ConsumersurveysV2
      VERSION = 'V2'
      REVISION = '20170407'

      # View and edit your surveys and results
      AUTH_CONSUMERSURVEYS = 'https://www.googleapis.com/auth/consumersurveys'

      # View the results for your surveys
      AUTH_CONSUMERSURVEYS_READONLY = 'https://www.googleapis.com/auth/consumersurveys.readonly'

      # View your email address
      AUTH_USERINFO_EMAIL = 'https://www.googleapis.com/auth/userinfo.email'
    end
  end
end
