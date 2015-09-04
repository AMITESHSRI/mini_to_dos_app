# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150807090350) do

  create_table "epoker_activities", :force => true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_activities", ["owner_id", "owner_type"], :name => "index_epoker_activities_on_owner_id_and_owner_type"
  add_index "epoker_activities", ["recipient_id", "recipient_type"], :name => "index_epoker_activities_on_recipient_id_and_recipient_type"
  add_index "epoker_activities", ["trackable_id", "trackable_type"], :name => "index_epoker_activities_on_trackable_id_and_trackable_type"

  create_table "epoker_affiliates", :force => true do |t|
    t.string   "affiliate_name"
    t.string   "url"
    t.string   "logo"
    t.string   "affiliate_status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "poker_site_list_id"
    t.integer  "for_user_id"
    t.text     "description"
  end

  create_table "epoker_agents", :force => true do |t|
    t.string   "agent_name"
    t.text     "url"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "player_url"
    t.integer  "admin_status"
  end

  create_table "epoker_all_dates", :force => true do |t|
    t.integer  "from_date"
    t.integer  "from_month"
    t.integer  "from_year"
    t.integer  "to_date"
    t.integer  "to_month"
    t.integer  "to_year"
    t.integer  "all_dateable_id"
    t.string   "all_dateable_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "epoker_article_temps", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "featured"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_articles", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "featured"
    t.integer  "status",             :default => 1
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.integer  "admin_status",       :default => 1
    t.string   "published_on"
    t.integer  "visit_count",        :default => 0,                     :null => false
    t.datetime "updated_date",       :default => '2015-01-15 05:15:21'
    t.integer  "user_sub_role",      :default => 14
    t.integer  "poker_site_list_id"
  end

  create_table "epoker_authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_awards", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "year"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "country_iso"
    t.integer  "status"
    t.string   "city"
    t.integer  "admin_status"
    t.string   "sub_title"
    t.string   "sub_category"
    t.integer  "venue_id"
  end

  create_table "epoker_backup_orignal_emails", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "ip_address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_banners", :force => true do |t|
    t.string   "title"
    t.string   "banner_name"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_betting_categories", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_bio_urls", :force => true do |t|
    t.text     "bio_link"
    t.integer  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "short_bio_id"
    t.integer  "long_bio_id"
    t.integer  "fun_facts_id"
  end

  create_table "epoker_blog_temps", :force => true do |t|
    t.string   "blogtitle"
    t.text     "blogcontent"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "status",      :default => 1
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "epoker_blogcategories", :force => true do |t|
    t.string   "category_name"
    t.integer  "status",        :default => 1
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "epoker_blogs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status",             :default => 1
    t.integer  "user_id"
    t.integer  "blogcategory_id"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.boolean  "featured"
    t.integer  "admin_status",       :default => 1
    t.string   "published_on"
    t.integer  "visit_count",        :default => 0,                     :null => false
    t.datetime "updated_date",       :default => '2015-01-15 05:15:21'
    t.integer  "user_sub_role",      :default => 14
    t.integer  "poker_site_list_id"
    t.string   "url"
  end

  add_index "epoker_blogs", ["blogcategory_id"], :name => "index_epoker_blogs_on_blogcategory_id"
  add_index "epoker_blogs", ["user_id"], :name => "index_epoker_blogs_on_user_id"

  create_table "epoker_casinos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_charities", :force => true do |t|
    t.string   "name"
    t.text     "url"
    t.integer  "user_id"
    t.string   "user_id_contribute"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "status"
    t.string   "charity_type"
    t.text     "short_description"
    t.integer  "admin_status"
  end

  create_table "epoker_chip_protectors", :force => true do |t|
    t.string   "chip_protector_logo"
    t.text     "description"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "status",              :limit => 1
    t.integer  "user_id"
    t.string   "title"
  end

  create_table "epoker_claim_account_images", :force => true do |t|
    t.integer  "claim_account_id"
    t.string   "image_name"
    t.string   "description"
    t.string   "status",           :limit => 7
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "epoker_claim_account_messages", :force => true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "claim_account_image_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "epoker_claim_accounts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.integer  "claimed_id"
    t.text     "description"
    t.string   "status",      :limit => 8, :default => "Pending", :null => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "epoker_claim_pr_twitter_feeds", :force => true do |t|
    t.string   "name"
    t.string   "status",     :limit => 9, :default => "pending"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.integer  "message_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "epoker_claim_pr_twitter_feeds", ["user_id"], :name => "index_epoker_claim_pr_twitter_feeds_on_user_id"
  add_index "epoker_claim_pr_twitter_feeds", ["venue_id"], :name => "index_epoker_claim_pr_twitter_feeds_on_venue_id"

  create_table "epoker_claim_twitter_feeds", :force => true do |t|
    t.string   "name"
    t.string   "status",     :limit => 9, :default => "pending"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.integer  "message_id"
  end

  add_index "epoker_claim_twitter_feeds", ["user_id"], :name => "index_epoker_claim_twitter_feeds_on_user_id"
  add_index "epoker_claim_twitter_feeds", ["venue_id"], :name => "index_epoker_claim_twitter_feeds_on_venue_id"

  create_table "epoker_claim_venues", :force => true do |t|
    t.string   "phone"
    t.string   "email"
    t.string   "message"
    t.string   "status",     :limit => 9, :default => "pending"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "epoker_claim_venues", ["user_id"], :name => "index_epoker_claim_venues_on_user_id"
  add_index "epoker_claim_venues", ["venue_id"], :name => "index_epoker_claim_venues_on_venue_id"

  create_table "epoker_comments", :force => true do |t|
    t.integer  "commentable_id",   :default => 0
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          :default => 0, :null => false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "ancestry"
  end

  add_index "epoker_comments", ["commentable_id", "commentable_type"], :name => "index_epoker_comments_on_commentable_id_and_commentable_type"
  add_index "epoker_comments", ["user_id"], :name => "index_epoker_comments_on_user_id"

  create_table "epoker_contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_content_contentimages", :force => true do |t|
    t.string   "module_type",   :limit => 50
    t.integer  "associated_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "img_id"
    t.integer  "module_id"
  end

  create_table "epoker_content_image_albums", :force => true do |t|
    t.string   "image_name",    :limit => 100
    t.string   "image_model",   :limit => 50
    t.integer  "associated_id"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "epoker_conversations", :force => true do |t|
    t.integer  "msg_id"
    t.integer  "reciept_id"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_countries", :force => true do |t|
    t.string "iso",             :limit => 45
    t.string "ioc",             :limit => 22, :null => false
    t.string "iso3",            :limit => 45
    t.string "fips",            :limit => 45
    t.string "name",            :limit => 45
    t.string "continent",       :limit => 45
    t.string "currency_code",   :limit => 45
    t.string "currency_name",   :limit => 45
    t.string "phone_prefix",    :limit => 45
    t.string "postal_code",     :limit => 45
    t.string "languages",       :limit => 45
    t.string "geonameid",       :limit => 45
    t.string "currency_symbol"
  end

  add_index "epoker_countries", ["ioc"], :name => "index_epoker_countries_on_ioc"

  create_table "epoker_credential_instagrams", :force => true do |t|
    t.integer  "I_user_id"
    t.string   "I_username"
    t.string   "I_access_token"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_currencies", :force => true do |t|
    t.string   "currency_name"
    t.string   "currency_symbol"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "epoker_delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "epoker_epoker_notifier_archieves", :force => true do |t|
    t.integer  "user_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.integer  "followers_id"
    t.integer  "followers_id_viewed"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "epoker_epoker_notifiers", :force => true do |t|
    t.integer  "sub_module_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.integer  "notification_by"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "notifi_type"
    t.integer  "status",          :default => 1
    t.integer  "admin_status",    :default => 1
  end

  create_table "epoker_event_galleries", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "event_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "live_poker_result_id"
    t.integer  "user_id"
  end

  add_index "epoker_event_galleries", ["event_id"], :name => "index_epoker_event_galleries_on_event_id"

  create_table "epoker_event_games", :force => true do |t|
    t.integer  "game_id"
    t.integer  "event_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "live_poker_result_id"
  end

  add_index "epoker_event_games", ["event_id"], :name => "index_epoker_event_games_on_event_id"

  create_table "epoker_event_groups", :force => true do |t|
    t.string   "event_group_title"
    t.integer  "event_location_id"
    t.string   "venue_id",               :limit => 200
    t.string   "event_group_city"
    t.string   "event_country"
    t.string   "country_id",             :limit => 11
    t.integer  "status"
    t.datetime "event_group_start"
    t.datetime "event_group_end"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "s_date"
    t.string   "s_month"
    t.string   "s_year"
    t.string   "e_date"
    t.string   "e_month"
    t.string   "e_year"
    t.integer  "is_featured"
    t.integer  "fest_sub_id"
    t.string   "festival_logo"
    t.string   "sub_title"
    t.string   "director"
    t.string   "season"
    t.string   "sea_year"
    t.integer  "festival_event_logo_id"
  end

  create_table "epoker_event_locations", :force => true do |t|
    t.string "location_title",   :null => false
    t.string "location_city",    :null => false
    t.string "location_country", :null => false
  end

  create_table "epoker_event_players", :force => true do |t|
    t.integer  "event_id"
    t.integer  "player_id"
    t.integer  "money",                :limit => 8
    t.integer  "position",             :limit => 8
    t.integer  "verified_by"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "currency_id"
    t.integer  "live_poker_result_id"
  end

  add_index "epoker_event_players", ["event_id"], :name => "index_epoker_event_players_on_event_id"
  add_index "epoker_event_players", ["player_id"], :name => "index_epoker_event_players_on_player_id"

  create_table "epoker_event_ranks", :force => true do |t|
    t.integer  "player_id"
    t.integer  "event_id"
    t.integer  "event_rank"
    t.integer  "event_winnings"
    t.string   "event_player_name", :limit => 55
    t.integer  "event_entry_count"
    t.float    "event_purse"
    t.string   "eventrank_key",     :limit => 55
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "epoker_event_registrations", :force => true do |t|
    t.integer  "userid"
    t.integer  "event_id"
    t.string   "payment_mode"
    t.integer  "payment_amount"
    t.integer  "payment_status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_event_related_people", :force => true do |t|
    t.string   "type"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "epoker_event_related_people", ["event_id"], :name => "index_epoker_event_related_people_on_event_id"
  add_index "epoker_event_related_people", ["user_id"], :name => "index_epoker_event_related_people_on_user_id"

  create_table "epoker_event_sponsors", :force => true do |t|
    t.integer  "sponsor_id"
    t.integer  "event_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "live_poker_result_id"
  end

  add_index "epoker_event_sponsors", ["event_id"], :name => "index_epoker_event_sponsors_on_event_id"

  create_table "epoker_event_venues", :force => true do |t|
    t.integer  "event_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "live_poker_result_id"
  end

  add_index "epoker_event_venues", ["event_id"], :name => "index_epoker_event_venues_on_event_id"
  add_index "epoker_event_venues", ["venue_id"], :name => "index_epoker_event_venues_on_venue_id"

  create_table "epoker_events", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "status"
    t.string   "event_title"
    t.text     "event_desc"
    t.integer  "event_group_id"
    t.integer  "location_id"
    t.datetime "date_start"
    t.datetime "date_end"
    t.integer  "game_type_id"
    t.integer  "buy_in"
    t.string   "event_city"
    t.decimal  "purse",                               :precision => 10, :scale => 2
    t.integer  "entry_count"
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
    t.boolean  "rebuy"
    t.string   "event_no"
    t.integer  "total_player"
    t.integer  "prize_pool"
    t.string   "director"
    t.string   "country_ioc"
    t.integer  "verify"
    t.integer  "currency_id"
    t.string   "prize_pool_currency_id"
    t.string   "s_date"
    t.string   "s_month"
    t.string   "s_year"
    t.string   "e_date"
    t.string   "e_month"
    t.string   "e_year"
    t.integer  "is_featured"
    t.integer  "re_entry",               :limit => 1
    t.string   "event_type"
    t.integer  "special_game_rule_id"
    t.integer  "table_size_id"
    t.integer  "betting_category_id"
    t.string   "buy_in_type"
    t.time     "start_time"
  end

  create_table "epoker_eventtags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "event_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_festival_event_logos", :force => true do |t|
    t.string   "fest_name"
    t.string   "nickname"
    t.string   "fest_logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_festival_events", :force => true do |t|
    t.integer  "event_group_id"
    t.integer  "event_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_festival_sponsers", :force => true do |t|
    t.integer  "event_group_id"
    t.integer  "sponsor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_festival_tournaments", :force => true do |t|
    t.integer  "event_group_id"
    t.integer  "tournament_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_festival_venues", :force => true do |t|
    t.integer  "event_group_id"
    t.integer  "venue_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_festivaltags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "event_group_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_first_spade_taggings", :force => true do |t|
    t.string   "taggable_content",   :limit => 100
    t.integer  "user_id"
    t.string   "tag_type",           :limit => 100
    t.integer  "taggable_tag_id"
    t.integer  "taggable_review",                   :default => 0, :null => false
    t.integer  "first_spade_tag_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "epoker_first_spade_tags", :force => true do |t|
    t.integer  "taggable_id"
    t.string   "taggable_type", :limit => 100
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "epoker_followers", :force => true do |t|
    t.integer  "followers_id"
    t.integer  "followed_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "viewed_data",  :default => 0
  end

  create_table "epoker_follows", :force => true do |t|
    t.string   "follower_type"
    t.integer  "follower_id"
    t.string   "followable_type"
    t.integer  "followable_id"
    t.datetime "created_at"
  end

  add_index "epoker_follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "epoker_follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "epoker_forum_categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "parent_status"
    t.integer  "status",        :default => 1
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "epoker_forum_posts", :force => true do |t|
    t.text     "title"
    t.text     "description", :null => false
    t.integer  "cat_id"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_forum_replies", :force => true do |t|
    t.text     "post_reply"
    t.integer  "post_id"
    t.integer  "user_id"
    t.integer  "reply_id",   :default => 0, :null => false
    t.integer  "status"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "confirmed",   :limit => 1, :default => 0
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "viewed_data",              :default => 0, :null => false
  end

  create_table "epoker_fun_facts", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "for_user_id"
    t.integer  "status",             :default => 1
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "title"
    t.string   "poker_date"
    t.integer  "date"
    t.integer  "month"
    t.integer  "year"
    t.integer  "user_sub_role"
    t.datetime "updated_date",       :default => '2015-01-19 05:16:19'
    t.integer  "poker_site_list_id"
  end

  create_table "epoker_funfact_urls", :force => true do |t|
    t.string   "url"
    t.integer  "fun_fact_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_galleries", :force => true do |t|
    t.string   "title",        :limit => 55
    t.integer  "user_id"
    t.integer  "status",                     :default => 1, :null => false
    t.text     "image_desc"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "admin_status",               :default => 1
    t.integer  "visit_count",                :default => 0, :null => false
    t.string   "token"
    t.string   "album_type"
    t.integer  "charity_id"
    t.integer  "pokersite_id"
  end

  create_table "epoker_gallery_images", :force => true do |t|
    t.integer  "gallery_id"
    t.string   "image_name"
    t.datetime "photo_taken_date"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "gallery_token"
    t.text     "desc"
    t.string   "title"
    t.integer  "photographer_id"
    t.string   "photographer_name"
    t.integer  "user_id"
    t.string   "media_link"
    t.integer  "status",             :default => 1
    t.integer  "admin_status",       :default => 1
    t.integer  "visit_count",        :default => 0
    t.string   "location"
    t.integer  "profile_pic",        :default => 0
    t.string   "pic_type",           :default => ""
    t.integer  "poker_site_list_id"
    t.integer  "charity_id"
  end

  create_table "epoker_game_types", :force => true do |t|
    t.string "game_type_title", :null => false
  end

  create_table "epoker_games", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "game_type"
  end

  create_table "epoker_group_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "status",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_groups", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at",                :null => false
    t.integer  "status",     :default => 0, :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_hands_played_bloglinks", :force => true do |t|
    t.text     "blog_url"
    t.integer  "hands_played_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_hands_played_highstakesdbs", :force => true do |t|
    t.text     "highstakes_link"
    t.integer  "hands_played_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_hands_played_onlinepokers", :force => true do |t|
    t.text     "online_pokersite"
    t.integer  "hands_played_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "epoker_hands_played_player_in_hands", :force => true do |t|
    t.text     "players_hand"
    t.integer  "hands_played_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "epoker_hands_playeds", :force => true do |t|
    t.string   "title"
    t.text     "story"
    t.string   "LinkToBlog"
    t.string   "link_to_highstakesdb"
    t.string   "VideoLink"
    t.integer  "status"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "user_id"
    t.string   "date"
    t.string   "PlayersInTheHand"
    t.string   "events"
    t.string   "place"
    t.string   "OnlinePokerSite"
    t.string   "country_iso"
    t.string   "date_detail"
    t.integer  "admin_status"
  end

  create_table "epoker_hottest_girl_guys", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_import_events", :force => true do |t|
    t.string   "venue"
    t.date     "date"
    t.string   "event"
    t.string   "event_name"
    t.string   "buy_in"
    t.string   "fee"
    t.string   "no_of_players"
    t.string   "re_buys"
    t.string   "add_ons"
    t.integer  "prizepool"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "festival"
  end

  create_table "epoker_import_users", :force => true do |t|
    t.integer  "pos"
    t.string   "name"
    t.string   "country"
    t.string   "status"
    t.string   "prize"
    t.string   "deal"
    t.integer  "import_event_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_ip_records", :force => true do |t|
    t.string   "ipaddress"
    t.string   "module_type"
    t.integer  "module_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_known_as_names", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_languages", :force => true do |t|
    t.string   "name",       :limit => 250, :default => "None", :null => false
    t.string   "iso",        :limit => 250,                     :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "epoker_languagetags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "language_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_likes", :force => true do |t|
    t.string   "liker_type"
    t.integer  "liker_id"
    t.string   "likeable_type"
    t.integer  "likeable_id"
    t.datetime "created_at"
  end

  add_index "epoker_likes", ["likeable_id", "likeable_type"], :name => "fk_likeables"
  add_index "epoker_likes", ["liker_id", "liker_type"], :name => "fk_likes"

  create_table "epoker_link_awards", :force => true do |t|
    t.string   "link"
    t.integer  "award_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_link_media_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_links", :force => true do |t|
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "title"
    t.string   "image"
  end

  add_index "epoker_links", ["linkable_id"], :name => "index_epoker_links_on_linkable_id"
  add_index "epoker_links", ["linkable_type"], :name => "index_epoker_links_on_linkable_type"

  create_table "epoker_live_poker_result_games", :force => true do |t|
    t.string   "game_type_id"
    t.integer  "live_poker_result_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "epoker_live_poker_result_games", ["live_poker_result_id"], :name => "index_epoker_live_poker_result_games_on_live_poker_result_id"

  create_table "epoker_live_poker_result_links", :force => true do |t|
    t.integer  "live_poker_result_id"
    t.string   "link"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "epoker_live_poker_result_links", ["live_poker_result_id"], :name => "index_epoker_live_poker_result_links_on_live_poker_result_id"

  create_table "epoker_live_poker_result_sponsors", :force => true do |t|
    t.string   "sponsor_id"
    t.integer  "live_poker_result_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "epoker_live_poker_result_sponsors", ["live_poker_result_id"], :name => "index_epoker_live_poker_result_sponsors_on_live_poker_result_id"

  create_table "epoker_live_poker_result_venues", :force => true do |t|
    t.integer  "live_poker_result_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "epoker_live_poker_result_venues", ["live_poker_result_id"], :name => "index_epoker_live_poker_result_venues_on_live_poker_result_id"

  create_table "epoker_live_poker_results", :force => true do |t|
    t.string   "tournament_name"
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "logo"
    t.integer  "buy_in"
    t.boolean  "rebuy"
    t.integer  "no_of_players"
    t.integer  "prise_pool"
    t.integer  "game_id"
    t.string   "director"
    t.text     "stats"
    t.integer  "event_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "prize_pool_currency_id"
    t.integer  "currency_id"
    t.string   "city"
    t.integer  "event_group_id"
  end

  create_table "epoker_logos", :force => true do |t|
    t.string   "name"
    t.integer  "logoable_id"
    t.string   "logoable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "epoker_logos", ["logoable_id"], :name => "index_epoker_logos_on_logoable_id"
  add_index "epoker_logos", ["logoable_type"], :name => "index_epoker_logos_on_logoable_type"

  create_table "epoker_long_bios", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "for_user_id"
    t.integer  "status",        :default => 1
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "poker_date"
    t.integer  "date"
    t.integer  "month"
    t.integer  "year"
    t.integer  "user_sub_role"
    t.datetime "updated_date",  :default => '2015-01-19 05:16:19'
    t.string   "title"
  end

  create_table "epoker_mailboxer_conversation_opt_outs", :force => true do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "epoker_mailboxer_conversation_opt_outs", ["conversation_id"], :name => "mb_opt_outs_on_conversations_id"

  create_table "epoker_mailboxer_conversations", :force => true do |t|
    t.string   "subject",    :default => ""
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "epoker_mailboxer_notifications", :force => true do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              :default => ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                :default => false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                              :null => false
    t.datetime "created_at",                              :null => false
    t.boolean  "global",               :default => false
    t.datetime "expires"
    t.string   "link"
  end

  add_index "epoker_mailboxer_notifications", ["conversation_id"], :name => "index_epoker_mailboxer_notifications_on_conversation_id"

  create_table "epoker_mailboxer_receipts", :force => true do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                                  :null => false
    t.boolean  "is_read",                       :default => false
    t.boolean  "trashed",                       :default => false
    t.boolean  "deleted",                       :default => false
    t.string   "mailbox_type",    :limit => 25
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "epoker_mailboxer_receipts", ["notification_id"], :name => "index_epoker_mailboxer_receipts_on_notification_id"

  create_table "epoker_media_link_images", :force => true do |t|
    t.string   "image_name"
    t.integer  "media_link_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_media_links", :force => true do |t|
    t.string   "media_name"
    t.string   "media_category"
    t.string   "media_link"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.string   "date"
    t.integer  "category_id"
    t.string   "language"
    t.string   "writer"
    t.integer  "event_id"
    t.string   "place"
    t.string   "country_iso"
    t.string   "status"
    t.integer  "language_id"
    t.integer  "admin_status"
  end

  create_table "epoker_message_boxes", :force => true do |t|
    t.integer  "msg_id"
    t.string   "subject"
    t.integer  "sender_id"
    t.text     "msg_body"
    t.integer  "parent_id"
    t.string   "msg_type"
    t.integer  "draft",         :limit => 1
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "sent_msg_type", :limit => 1
  end

  create_table "epoker_message_recievers", :force => true do |t|
    t.integer  "reciept_id"
    t.integer  "msg_id"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_messages", :force => true do |t|
    t.string   "subject"
    t.text     "content"
    t.integer  "user_id"
    t.string   "ancestry"
    t.string   "recipient_ids"
    t.datetime "sent_at"
    t.datetime "received_at"
    t.datetime "read_at"
    t.datetime "trashed_at"
    t.datetime "deleted_at"
    t.boolean  "editable",      :default => true
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "viewed_data",   :default => 0
  end

  add_index "epoker_messages", ["ancestry"], :name => "index_epoker_messages_on_ancestry"
  add_index "epoker_messages", ["user_id"], :name => "index_epoker_messages_on_user_id"

  create_table "epoker_movies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_my_top_fives", :force => true do |t|
    t.string   "categrory"
    t.string   "name"
    t.integer  "player_id"
    t.string   "user_id"
    t.string   "status",     :default => "1"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "epoker_news", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status",      :default => 1
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "epoker_news_categories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "news_in_media_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "epoker_news_fav_imgs", :force => true do |t|
    t.text     "img_name"
    t.integer  "news_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_news_in_media", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status",                          :default => 1
    t.string   "url"
    t.integer  "newscategory_id"
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
    t.integer  "user_id"
    t.boolean  "featured"
    t.integer  "admin_status",                    :default => 1
    t.integer  "visit_count",                     :default => 0,                     :null => false
    t.datetime "updated_date",                    :default => '2015-01-15 05:15:21'
    t.integer  "user_sub_role",                   :default => 14
    t.string   "published_on"
    t.integer  "type_article",       :limit => 1
    t.integer  "type_news",          :limit => 1
    t.integer  "type_teaching",      :limit => 1
    t.integer  "poker_site_list_id"
    t.string   "added_by"
    t.integer  "added_by_status",    :limit => 1, :default => 1
    t.integer  "type_interview",     :limit => 1
  end

  create_table "epoker_newscategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "status"
  end

  create_table "epoker_newsinmedia_logos", :force => true do |t|
    t.text     "img_name"
    t.integer  "news_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_nomination_awards", :force => true do |t|
    t.integer  "nomination_id"
    t.integer  "award_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_old_sponsor_logos", :force => true do |t|
    t.string   "sponsor_link"
    t.string   "sponsor_logo"
    t.integer  "old_sponsor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_old_sponsors", :force => true do |t|
    t.string   "sponsor_name"
    t.integer  "sponsor_status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.text     "short_description"
  end

  create_table "epoker_on_paper_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_on_paper_images", :force => true do |t|
    t.string   "name"
    t.integer  "on_paper_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_on_paper_pgs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "on_paper_id"
    t.string   "pg_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_on_papers", :force => true do |t|
    t.string   "title"
    t.string   "where"
    t.string   "link"
    t.date     "when"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.date     "date"
    t.integer  "category_id"
    t.string   "source"
    t.string   "language"
    t.string   "writer"
    t.integer  "event_id"
    t.string   "place"
    t.string   "country_iso"
    t.string   "status"
    t.string   "link_same_content"
    t.string   "facsimile"
    t.string   "author_link"
    t.integer  "language_id"
    t.integer  "festival_id"
    t.integer  "admin_status"
    t.string   "document"
    t.integer  "poker_site_list_id"
  end

  create_table "epoker_own_poker_websites", :force => true do |t|
    t.integer  "user_id"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_participants", :force => true do |t|
    t.integer  "event_group_id"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_pdates", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_photographers", :force => true do |t|
    t.string   "photographer_name"
    t.text     "photographer_info"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "epoker_picture_awards", :force => true do |t|
    t.string   "pic"
    t.integer  "award_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_play_ats", :force => true do |t|
    t.string   "nickname"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "status"
    t.integer  "admin_status"
  end

  create_table "epoker_played_with_blogs", :force => true do |t|
    t.string   "blog_link"
    t.integer  "played_with_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_played_with_blogs", ["played_with_id"], :name => "index_epoker_played_with_blogs_on_played_with_id"

  create_table "epoker_played_with_books", :force => true do |t|
    t.string   "book_link"
    t.integer  "played_with_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_played_with_books", ["played_with_id"], :name => "index_epoker_played_with_books_on_played_with_id"

  create_table "epoker_played_with_othermedia", :force => true do |t|
    t.string   "other_link"
    t.integer  "played_with_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_played_with_othermedia", ["played_with_id"], :name => "index_epoker_played_with_othermedia_on_played_with_id"

  create_table "epoker_played_with_pictures", :force => true do |t|
    t.string   "picture_link"
    t.integer  "played_with_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_played_with_pictures", ["played_with_id"], :name => "index_epoker_played_with_pictures_on_played_with_id"

  create_table "epoker_played_with_videos", :force => true do |t|
    t.string   "video_link"
    t.integer  "played_with_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "epoker_played_with_videos", ["played_with_id"], :name => "index_epoker_played_with_videos_on_played_with_id"

  create_table "epoker_played_withs", :force => true do |t|
    t.integer  "player_id"
    t.integer  "venue_id"
    t.integer  "tournament_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "status",        :limit => 1
    t.integer  "admin_status"
  end

  create_table "epoker_player2players", :force => true do |t|
    t.string   "player_id"
    t.text     "player_desc"
    t.string   "language_id"
    t.string   "country_iso"
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "status",        :limit => 50
    t.integer  "admin_status"
    t.integer  "user_sub_role"
  end

  create_table "epoker_player_rankings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "rank_groups_id"
    t.datetime "rank_list_date",    :null => false
    t.integer  "rank_list_ranking"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "epoker_pmonths", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_poker_room_buisness_adds", :force => true do |t|
    t.integer  "poker_room_id"
    t.string   "address"
    t.string   "city"
    t.string   "country_iso"
    t.string   "country_ioc"
    t.string   "zip_code"
    t.string   "comment"
    t.string   "city_id"
    t.string   "buisness_add_id"
    t.string   "country_iso_id"
    t.string   "zip_code_id"
    t.string   "comment_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_poker_room_contacts", :force => true do |t|
    t.string   "ext_cell"
    t.string   "cell_number"
    t.string   "cell_number_id"
    t.integer  "poker_room_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_poker_room_emails", :force => true do |t|
    t.string   "email_alt"
    t.string   "email_alt_id"
    t.integer  "poker_room_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_poker_room_faxes", :force => true do |t|
    t.string   "fax_number"
    t.string   "fax_number_id"
    t.string   "ext_fax"
    t.string   "ext_fax_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "poker_room_id"
  end

  create_table "epoker_poker_rooms", :force => true do |t|
    t.string   "poker_site_list_id"
    t.string   "logo"
    t.text     "deal"
    t.text     "review"
    t.integer  "us_player"
    t.integer  "spades",                          :default => 0
    t.string   "website"
    t.string   "email"
    t.string   "pokerstop_contact"
    t.string   "status",             :limit => 1, :default => "1"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.text     "quick_over_view"
  end

  create_table "epoker_poker_site_lists", :force => true do |t|
    t.string   "name",              :limit => 256,                :null => false
    t.string   "poker_site",        :limit => 256,                :null => false
    t.string   "network",           :limit => 256,                :null => false
    t.string   "software_provider", :limit => 256,                :null => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "logo"
    t.integer  "status",                           :default => 1
  end

  create_table "epoker_poker_sites", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "main_feature"
    t.string   "language"
    t.string   "notes"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "status",       :limit => 1, :default => "1"
    t.string   "host_name"
    t.integer  "for_profile",               :default => 0
  end

  create_table "epoker_pokermodules", :force => true do |t|
    t.string   "module_name"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_previous_names", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_products", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "age"
    t.string   "sex"
    t.string   "city"
    t.string   "state"
    t.string   "country_ioc"
    t.integer  "country_id"
    t.integer  "status"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "rating"
    t.integer  "rate"
  end

  add_index "epoker_products", ["reset_password_token"], :name => "index_epoker_users_on_reset_password_token", :unique => true

  create_table "epoker_profile_searches", :force => true do |t|
    t.string   "urlname"
    t.string   "uname"
    t.string   "spl_ch"
    t.string   "kname"
    t.string   "nk_name"
    t.string   "nick_logo"
    t.string   "logo_id"
    t.string   "lv_name"
    t.string   "fname"
    t.integer  "imageid"
    t.string   "iname"
    t.string   "cname"
    t.string   "iso"
    t.string   "groups"
    t.integer  "profile_visit_count"
    t.string   "created_by",          :limit => 9
    t.integer  "status",                           :default => 0
    t.string   "previous_names"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "first_last_name"
  end

  create_table "epoker_profile_visits", :force => true do |t|
    t.decimal  "profile_visit_count", :precision => 10, :scale => 0
    t.integer  "user_id"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.integer  "ref_id"
    t.string   "ip"
  end

  create_table "epoker_publishes", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "publish_date"
    t.string   "url_to_buy"
    t.string   "url_to_media"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.integer  "status"
    t.integer  "admin_status"
    t.integer  "poker_site_list_id"
  end

  create_table "epoker_quick_answers", :force => true do |t|
    t.text     "answer"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
    t.integer  "quick_question_id"
  end

  create_table "epoker_quick_questions", :force => true do |t|
    t.text     "question"
    t.string   "user_type"
    t.integer  "user_id"
    t.string   "for_user_id"
    t.integer  "status"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "is_answered",        :default => 0
    t.integer  "poker_site_list_id"
  end

  create_table "epoker_rank_groups", :force => true do |t|
    t.string   "rank_list_title", :limit => 55
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "epoker_restrictions", :force => true do |t|
    t.string   "restriction"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "epoker_result_verifications", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone_no"
    t.string   "country"
    t.string   "city"
    t.integer  "player_id"
    t.integer  "tournament_id"
    t.integer  "user_id"
    t.string   "verification_for"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "status"
  end

  create_table "epoker_retweets", :force => true do |t|
    t.integer  "tweet_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_review_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_reviews", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "language"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "review_category_id"
    t.integer  "ratings",            :default => 0
    t.string   "url"
    t.string   "review_for"
    t.string   "reviewable_type"
    t.integer  "reviewable_id"
  end

  create_table "epoker_role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "epoker_role_roles", ["parent_id"], :name => "index_epoker_role_roles_on_parent_id"
  add_index "epoker_role_roles", ["role_id"], :name => "index_epoker_role_roles_on_role_id"

  create_table "epoker_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_roles_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_schema_migrations", :id => false, :force => true do |t|
    t.string "version", :null => false
  end

  add_index "epoker_schema_migrations", ["version"], :name => "epoker_unique_schema_migrations", :unique => true

  create_table "epoker_select_tabs", :force => true do |t|
    t.integer  "user_id"
    t.string   "section"
    t.integer  "value",      :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_shares", :force => true do |t|
    t.integer  "ref_id"
    t.integer  "module_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "epoker_shares", ["user_id"], :name => "index_epoker_shares_on_user_id"

  create_table "epoker_short_bios", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.integer  "for_user_id"
    t.integer  "status",        :default => 1
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "poker_date"
    t.integer  "date"
    t.integer  "month"
    t.integer  "year"
    t.integer  "user_sub_role"
    t.datetime "updated_date",  :default => '2015-01-19 05:16:19'
    t.string   "title"
  end

  create_table "epoker_socialsites_nick_names", :force => true do |t|
    t.string   "nick_name"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_songs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_special_game_rules", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_sponsor_awards", :force => true do |t|
    t.integer  "sponsor_id"
    t.integer  "award_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "sponsor_name"
  end

  create_table "epoker_sponsor_link_awards", :force => true do |t|
    t.string   "sponsor_link"
    t.integer  "award_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_sponsor_logos", :force => true do |t|
    t.string   "sponsor_link"
    t.string   "sponsor_logo"
    t.integer  "sponsor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_sponsors", :force => true do |t|
    t.string   "sponsor_name"
    t.integer  "sponsor_status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "category"
    t.text     "short_description"
  end

  create_table "epoker_sponsortags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "sponsor_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_states", :force => true do |t|
    t.integer "region_id"
    t.string  "name",      :limit => 45
    t.string  "timezone",  :limit => 45
  end

  add_index "epoker_states", ["region_id"], :name => "subregion_region_id"

  create_table "epoker_table_sizes", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
    t.string   "status",        :limit => 10,  :default => "allowed"
    t.integer  "taggable_user"
    t.datetime "updated_at"
  end

  add_index "epoker_taggings", ["context"], :name => "index_epoker_taggings_on_context"
  add_index "epoker_taggings", ["tag_id"], :name => "index_epoker_taggings_on_tag_id"
  add_index "epoker_taggings", ["taggable_id"], :name => "index_epoker_taggings_on_taggable_id"
  add_index "epoker_taggings", ["taggable_type"], :name => "index_epoker_taggings_on_taggable_type"
  add_index "epoker_taggings", ["taggable_user"], :name => "index_epoker_taggings_on_taggable_user"

  create_table "epoker_tags", :force => true do |t|
    t.string "name"
    t.string "meta_id"
  end

  create_table "epoker_top_casinos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "casino_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  add_index "epoker_top_casinos", ["casino_id"], :name => "index_epoker_top_casinos_on_casino_id"
  add_index "epoker_top_casinos", ["user_id"], :name => "index_epoker_top_casinos_on_user_id"

  create_table "epoker_top_hottest_girl_guys", :force => true do |t|
    t.integer  "user_id"
    t.integer  "hottest_girl_guy_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "epoker_top_hottest_girl_guys", ["hottest_girl_guy_id"], :name => "index_epoker_top_hottest_girl_guys_on_hottest_girl_guy_id"
  add_index "epoker_top_hottest_girl_guys", ["user_id"], :name => "index_epoker_top_hottest_girl_guys_on_user_id"

  create_table "epoker_top_movies", :force => true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  add_index "epoker_top_movies", ["movie_id"], :name => "index_epoker_top_movies_on_movie_id"
  add_index "epoker_top_movies", ["user_id"], :name => "index_epoker_top_movies_on_user_id"

  create_table "epoker_top_songs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  add_index "epoker_top_songs", ["song_id"], :name => "index_epoker_top_songs_on_song_id"
  add_index "epoker_top_songs", ["user_id"], :name => "index_epoker_top_songs_on_user_id"

  create_table "epoker_top_travel_destinations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "travel_destination_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "status",                :default => 1
  end

  add_index "epoker_top_travel_destinations", ["travel_destination_id"], :name => "index_epoker_top_travel_destinations_on_travel_destination_id"
  add_index "epoker_top_travel_destinations", ["user_id"], :name => "index_epoker_top_travel_destinations_on_user_id"

  create_table "epoker_top_tv_shows", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tv_show_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  add_index "epoker_top_tv_shows", ["tv_show_id"], :name => "index_epoker_top_tv_shows_on_tv_show_id"
  add_index "epoker_top_tv_shows", ["user_id"], :name => "index_epoker_top_tv_shows_on_user_id"

  create_table "epoker_top_web_sites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "website_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "epoker_top_web_sites", ["user_id"], :name => "index_epoker_top_web_sites_on_user_id"
  add_index "epoker_top_web_sites", ["website_id"], :name => "index_epoker_top_web_sites_on_website_id"

  create_table "epoker_top_websites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "website_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  add_index "epoker_top_websites", ["user_id"], :name => "index_epoker_top_websites_on_user_id"
  add_index "epoker_top_websites", ["website_id"], :name => "index_epoker_top_websites_on_website_id"

  create_table "epoker_tournament_events", :force => true do |t|
    t.integer  "tournament_id"
    t.integer  "event_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_tournament_venues", :force => true do |t|
    t.integer  "tournament_id"
    t.integer  "venue_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_tournaments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "country"
    t.string   "city"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_travel_destinations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_tv_shows", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_tweets", :force => true do |t|
    t.string   "tweet"
    t.integer  "user_id"
    t.integer  "status",     :default => 1
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_user_address_current_temps", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country_ioc"
    t.string   "country_iso"
    t.string   "zip_code"
    t.string   "residence_type"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "city_id",        :default => "1"
    t.string   "province_id",    :default => "1"
    t.string   "address_id",     :default => "1"
    t.string   "country_iso_id", :default => "1"
    t.string   "zip_code_id",    :default => "1"
    t.string   "comment_id",     :default => "1"
  end

  create_table "epoker_user_address_currents", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country_ioc"
    t.string   "country_iso"
    t.string   "zip_code"
    t.string   "residence_type"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "city_id",        :default => 1
    t.integer  "province_id",    :default => 1
    t.integer  "address_id",     :default => 1
    t.integer  "country_iso_id", :default => 1
    t.integer  "zip_code_id",    :default => 1
    t.integer  "comment_id",     :default => 1
  end

  add_index "epoker_user_address_currents", ["country_ioc"], :name => "index_epoker_user_address_currents_on_country_ioc"

  create_table "epoker_user_address_hometown_temps", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country_ioc"
    t.string   "country_iso"
    t.string   "zip_code"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "address_id",     :default => "1"
    t.string   "city_id",        :default => "1"
    t.string   "province_id",    :default => "1"
    t.string   "country_iso_id", :default => "1"
    t.string   "zip_code_id",    :default => "1"
    t.string   "comment_id",     :default => "1"
  end

  create_table "epoker_user_address_hometowns", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country_ioc"
    t.string   "country_iso"
    t.string   "zip_code"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "address_id",     :default => "1"
    t.string   "city_id",        :default => "1"
    t.string   "province_id",    :default => "1"
    t.string   "country_iso_id", :default => "1"
    t.string   "zip_code_id",    :default => "1"
    t.string   "comment_id",     :default => "1"
  end

  create_table "epoker_user_cell_temps", :force => true do |t|
    t.string   "ext_cell"
    t.string   "cell_number"
    t.integer  "user_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "cell_number_id", :limit => 50, :default => "1"
  end

  create_table "epoker_user_cells", :force => true do |t|
    t.string   "ext_cell"
    t.string   "cell_number"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "cell_number_id", :default => "0"
  end

  create_table "epoker_user_contact_temps", :force => true do |t|
    t.string   "ext_home"
    t.string   "ext_work"
    t.string   "ext_fax"
    t.integer  "phone_home"
    t.integer  "phone_work"
    t.integer  "fax_number"
    t.string   "skype_id"
    t.integer  "user_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "ext_home_id",   :limit => 50, :default => "1"
    t.string   "ext_work_id",   :limit => 50, :default => "1"
    t.string   "ext_fax_id",    :limit => 50, :default => "1"
    t.string   "phone_home_id", :limit => 50, :default => "1"
    t.string   "phone_work_id", :limit => 50, :default => "1"
    t.string   "fax_number_id", :limit => 50, :default => "1"
    t.string   "skype_id_id",   :limit => 50, :default => "1"
  end

  create_table "epoker_user_contacts", :force => true do |t|
    t.string   "ext_home"
    t.string   "ext_work"
    t.string   "ext_fax"
    t.string   "phone_home"
    t.string   "phone_work"
    t.string   "fax_number"
    t.string   "skype_id"
    t.integer  "user_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "ext_home_id",                 :default => "0"
    t.string   "ext_work_id",                 :default => "0"
    t.string   "ext_fax_id",                  :default => "0"
    t.string   "phone_home_id", :limit => 50, :default => "1"
    t.string   "phone_work_id", :limit => 50, :default => "1"
    t.string   "fax_number_id", :limit => 50, :default => "1"
    t.string   "skype_id_id",                 :default => "0"
  end

  create_table "epoker_user_email_backups", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_user_email_temps", :force => true do |t|
    t.string   "email_alt"
    t.string   "email_alt_id", :default => "1"
    t.integer  "user_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "epoker_user_emails", :force => true do |t|
    t.string   "email_alt"
    t.string   "email_alt_id", :default => "0"
    t.integer  "user_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "epoker_user_facebook_fake_temps", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_user_facebook_fakes", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
    t.integer  "user_facebook_fakeable_id"
    t.string   "user_facebook_fakeable_type"
    t.integer  "status",                      :limit => 1, :default => 1
  end

  create_table "epoker_user_facebook_fansite_temps", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_user_facebook_fansites", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.integer  "user_facebook_fansiteable_id"
    t.string   "user_facebook_fansiteable_type"
    t.integer  "status",                         :limit => 1, :default => 1
  end

  create_table "epoker_user_facebook_personal_temps", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_user_facebook_personals", :force => true do |t|
    t.string   "facebook_url"
    t.integer  "user_id"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.integer  "user_facebook_personeable_id"
    t.string   "user_facebook_personeable_type"
    t.integer  "status",                         :limit => 1, :default => 1
  end

  create_table "epoker_user_googleplus", :force => true do |t|
    t.string   "gooplus_url"
    t.integer  "user_id"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.integer  "user_googleplusable_id"
    t.string   "user_googleplusable_type"
    t.integer  "status",                   :limit => 1, :default => 1
  end

  create_table "epoker_user_googleplus_temps", :force => true do |t|
    t.string   "gooplus_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_identities", :force => true do |t|
    t.string   "uid"
    t.string   "user_id"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_user_images", :force => true do |t|
    t.string   "name",       :limit => 55
    t.string   "image_name", :limit => 55
    t.integer  "user_id"
    t.integer  "status",                   :default => 1, :null => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "epoker_user_imdb_temps", :force => true do |t|
    t.string   "imdburl"
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "imdburl_id", :default => "1"
  end

  create_table "epoker_user_imdbs", :force => true do |t|
    t.string   "imdburl"
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "imdburl_id", :default => "1"
  end

  create_table "epoker_user_info_temps", :force => true do |t|
    t.string   "prefix"
    t.string   "suffix"
    t.string   "Birthdate"
    t.string   "Birthdate_status"
    t.string   "Birthplace_city"
    t.string   "Birthplace_country_iso"
    t.string   "Birthplace_country_ioc"
    t.string   "gender"
    t.string   "newsletter"
    t.string   "time_zone"
    t.integer  "user_id"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "Birthdate_id",                            :default => "1"
    t.string   "Birthplace_city_id",                      :default => "1"
    t.string   "Birthplace_country_iso_id", :limit => 50, :default => "1"
  end

  create_table "epoker_user_infos", :force => true do |t|
    t.string   "prefix"
    t.string   "suffix"
    t.string   "Birthdate"
    t.string   "Birthdate_status",                        :default => "1"
    t.string   "Birthplace_city"
    t.string   "Birthplace_country_iso"
    t.string   "Birthplace_country_ioc"
    t.string   "gender",                    :limit => 6
    t.string   "newsletter"
    t.string   "time_zone"
    t.integer  "user_id"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "Birthdate_id",                            :default => "1"
    t.string   "Birthplace_city_id",                      :default => "1"
    t.string   "Birthplace_country_iso_id", :limit => 50, :default => "1"
    t.integer  "birth_date"
    t.string   "birth_month"
    t.integer  "birth_year"
    t.integer  "death_date"
    t.string   "death_month"
    t.integer  "death_year"
  end

  create_table "epoker_user_instagrams", :force => true do |t|
    t.integer  "user_id"
    t.string   "instagram_url"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.integer  "user_instagramable_id"
    t.string   "user_instagramable_type"
    t.integer  "status",                  :limit => 1, :default => 1
  end

  create_table "epoker_user_linkedin_temps", :force => true do |t|
    t.string   "linkedin_url"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "epoker_user_linkedins", :force => true do |t|
    t.string   "linkedin_url"
    t.integer  "user_id"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.integer  "user_linkedineable_id"
    t.string   "user_linkedineable_type"
    t.integer  "status",                  :limit => 1, :default => 1
  end

  create_table "epoker_user_medals", :force => true do |t|
    t.integer  "user_id"
    t.integer  "gold",       :default => 0
    t.integer  "silver",     :default => 0
    t.integer  "bronze",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_user_messenger_temps", :force => true do |t|
    t.string   "messenger_id"
    t.string   "provider"
    t.integer  "user_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "messenger_id_id", :default => "1"
  end

  create_table "epoker_user_messengers", :force => true do |t|
    t.string   "messenger_id"
    t.string   "provider"
    t.integer  "user_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "messenger_id_id", :default => "0"
  end

  create_table "epoker_user_middle_names", :force => true do |t|
    t.integer  "user_id"
    t.string   "middle_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_myspace_temps", :force => true do |t|
    t.string   "myspace_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_myspaces", :force => true do |t|
    t.string   "myspace_url"
    t.integer  "user_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.integer  "user_myspaceable_id"
    t.string   "user_myspaceable_type"
    t.integer  "status",                :limit => 1, :default => 1
  end

  create_table "epoker_user_nickname_live_temps", :force => true do |t|
    t.string   "nickname"
    t.integer  "user_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "nickname_id", :default => "1"
  end

  create_table "epoker_user_nickname_lives", :force => true do |t|
    t.string   "nickname"
    t.integer  "user_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "nickname_id", :default => "1"
  end

  create_table "epoker_user_nickname_online_temps", :force => true do |t|
    t.string   "nickname"
    t.string   "siteurl"
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "online_nickname_id", :default => "1"
  end

  create_table "epoker_user_nickname_onlines", :force => true do |t|
    t.string   "nickname"
    t.string   "poker_site_list_id"
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "online_nickname_id", :default => "1"
  end

  create_table "epoker_user_pinterest_temps", :force => true do |t|
    t.string   "pinterest_url"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_user_pinterests", :force => true do |t|
    t.string   "pinterest_url"
    t.integer  "user_id"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.integer  "user_pinterestable_id"
    t.string   "user_pinterestable_type"
    t.integer  "status",                  :limit => 1, :default => 1
  end

  create_table "epoker_user_points", :force => true do |t|
    t.integer  "user_id"
    t.integer  "points",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "epoker_user_poker_sites", :force => true do |t|
    t.string   "status",        :limit => 1,   :default => "1"
    t.integer  "user_id"
    t.integer  "poker_site_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "own_url",       :limit => 400
  end

  add_index "epoker_user_poker_sites", ["poker_site_id"], :name => "index_epoker_user_poker_sites_on_poker_site_id"
  add_index "epoker_user_poker_sites", ["user_id"], :name => "index_epoker_user_poker_sites_on_user_id"

  create_table "epoker_user_previous_address_homes", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country_ioc"
    t.string   "country_iso"
    t.string   "zip_code"
    t.string   "comment"
    t.integer  "user_id"
    t.string   "address_id",     :default => "1"
    t.string   "city_id",        :default => "1"
    t.string   "province_id"
    t.string   "country_iso_id"
    t.string   "zip_code_id",    :default => "1"
    t.string   "comment_id",     :default => "1"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "f_date"
    t.string   "f_month"
    t.string   "f_year"
    t.string   "t_date"
    t.string   "t_month"
    t.string   "t_year"
  end

  create_table "epoker_user_profiles", :force => true do |t|
    t.string   "image_name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_user_ratings", :force => true do |t|
    t.integer  "rate_value"
    t.integer  "ref_id"
    t.integer  "pokermodule_id"
    t.integer  "user_id"
    t.string   "user_ip"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_user_reddits", :force => true do |t|
    t.integer  "user_id"
    t.string   "reddit_url"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "user_redditable_id"
    t.string   "user_redditable_type"
    t.integer  "status",               :limit => 1, :default => 1
  end

  create_table "epoker_user_social_account_temps", :force => true do |t|
    t.string   "google_plus"
    t.string   "youtube"
    t.string   "myspace"
    t.string   "linkedin"
    t.string   "pinterest"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_social_accounts", :force => true do |t|
    t.string   "google_plus"
    t.string   "youtube"
    t.string   "myspace"
    t.string   "linkedin"
    t.string   "pinterest"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_temps", :force => true do |t|
    t.string   "screenname",              :limit => 100
    t.string   "fullname"
    t.string   "username"
    t.string   "firstname",               :limit => 100
    t.string   "middlename",              :limit => 100
    t.string   "lastname",                :limit => 100
    t.string   "name_special_char",       :limit => 100
    t.integer  "status"
    t.string   "email",                                  :default => "",      :null => false
    t.string   "encrypted_password",                     :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "confirmation_token"
    t.string   "confirmation_url"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "last_sign_in_ip"
    t.string   "created_by",              :limit => 7,   :default => "Admin"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.string   "provider"
    t.string   "uid"
    t.integer  "profile_visit_count"
    t.datetime "count_updated_at"
    t.datetime "time_spend"
    t.string   "credential_instagram_id"
    t.string   "known_as_name"
  end

  create_table "epoker_user_tmp_emails", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "confirmation_token"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "epoker_user_tumblrs", :force => true do |t|
    t.integer  "user_id"
    t.string   "tumblr_url"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "user_tumblrable_id"
    t.string   "user_tumblrable_type"
    t.integer  "status",               :limit => 1, :default => 1
  end

  create_table "epoker_user_twitter_chipcount_temps", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_twitter_chipcounts", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_twitter_fake_temps", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_twitter_fakes", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.integer  "user_twitter_fakeable_id"
    t.string   "user_twitter_fakeable_type"
    t.integer  "status",                     :limit => 1, :default => 1
  end

  create_table "epoker_user_twitter_real_temps", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_twitter_reals", :force => true do |t|
    t.string   "twitter_url"
    t.integer  "user_id"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.integer  "user_twitter_realable_id"
    t.string   "user_twitter_realable_type"
    t.integer  "status",                     :limit => 1, :default => 1
  end

  create_table "epoker_user_vines", :force => true do |t|
    t.integer  "user_id"
    t.string   "vine_url"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.integer  "user_vineable_id"
    t.string   "user_vineable_type"
    t.integer  "status",             :limit => 1, :default => 1
  end

  create_table "epoker_user_websites", :force => true do |t|
    t.string   "site_url"
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "site_checkbox"
    t.string   "site_url_id",   :default => "1"
  end

  create_table "epoker_user_websites_temps", :force => true do |t|
    t.string   "site_url"
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "site_checkbox"
    t.string   "site_url_id",   :default => "1"
  end

  create_table "epoker_user_wikipedia", :force => true do |t|
    t.string   "wikipidea_url"
    t.integer  "user_id"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "wikipidea_url_id", :limit => 50, :default => "1"
  end

  create_table "epoker_user_wikipedia_temps", :force => true do |t|
    t.string   "wikipidea_url"
    t.integer  "user_id"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "wikipidea_url_id", :limit => 50, :default => "1"
  end

  create_table "epoker_user_youtube_temps", :force => true do |t|
    t.string   "youtube_url"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_user_youtubes", :force => true do |t|
    t.string   "youtube_url"
    t.integer  "user_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.integer  "user_youtubeable_id"
    t.string   "user_youtubeable_type"
    t.integer  "status",                :limit => 1, :default => 1
  end

  create_table "epoker_usernotifications", :force => true do |t|
    t.integer  "epoker_notifier_id"
    t.integer  "user_id"
    t.boolean  "viewed_notification"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "orignalposter",       :default => 0
    t.integer  "notification_status", :default => 0
  end

  create_table "epoker_userplaysats", :force => true do |t|
    t.string   "playsatname"
    t.string   "playsaturl"
    t.string   "nickname"
    t.integer  "status",      :default => 1, :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "epoker_users", :force => true do |t|
    t.string   "screenname",              :limit => 100
    t.string   "fullname"
    t.string   "username"
    t.string   "firstname",               :limit => 100
    t.string   "middlename",              :limit => 100
    t.string   "lastname",                :limit => 100
    t.string   "name_special_char",       :limit => 100
    t.integer  "status",                                 :default => 0
    t.string   "email",                                  :default => "",      :null => false
    t.string   "encrypted_password",                     :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "confirmation_token"
    t.string   "confirmation_url"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "last_sign_in_ip"
    t.string   "created_by",              :limit => 9,   :default => "Admin", :null => false
    t.string   "provider"
    t.string   "uid"
    t.integer  "profile_visit_count",     :limit => 8,   :default => 0
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.datetime "count_updated_at"
    t.datetime "time_spend"
    t.integer  "credential_instagram_id",                :default => 0
    t.string   "known_as_name"
  end

  add_index "epoker_users", ["reset_password_token"], :name => "index_epoker_users_on_reset_password_token", :unique => true

  create_table "epoker_users_calendars", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "event_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_usersettings", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "language"
    t.string   "blog_language"
    t.string   "player2player_lanuage"
    t.string   "video_language"
    t.string   "publish_language"
  end

  create_table "epoker_usersettings_blockings", :force => true do |t|
    t.integer  "blocked_user_id"
    t.integer  "usersetting_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_usersettings_contact_informations", :force => true do |t|
    t.string   "residence_address",  :default => "1"
    t.string   "residence_city",     :default => "1"
    t.string   "residence_province", :default => "1"
    t.string   "residence_country",  :default => "1"
    t.string   "residence_zipcode",  :default => "1"
    t.string   "residence_comment",  :default => "1"
    t.string   "home_address",       :default => "1"
    t.string   "home_city",          :default => "1"
    t.string   "home_province",      :default => "1"
    t.string   "home_country",       :default => "1"
    t.string   "home_zipcode",       :default => "1"
    t.string   "home_comment",       :default => "1"
    t.string   "phone_cell",         :default => "1"
    t.string   "phone_home",         :default => "1"
    t.string   "phone_work",         :default => "1"
    t.string   "fax",                :default => "1"
    t.string   "skype",              :default => "1"
    t.string   "alternative_email",  :default => "1"
    t.string   "messenger",          :default => "1"
    t.integer  "usersetting_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "epoker_usersettings_notifications", :force => true do |t|
    t.string   "notification"
    t.string   "notification_email"
    t.integer  "usersetting_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "epoker_usersettings_other_informations", :force => true do |t|
    t.string   "imdb",           :default => "1"
    t.string   "wikipedia",      :default => "1"
    t.string   "website_url",    :default => "1"
    t.integer  "usersetting_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "epoker_usersettings_personal_informations", :force => true do |t|
    t.string   "birthdate",          :default => "1"
    t.string   "birthplace_city",    :default => "1"
    t.string   "birthplace_country", :default => "1"
    t.string   "live_nickname",      :default => "1"
    t.string   "online_nickname",    :default => "1"
    t.string   "website_url",        :default => "1"
    t.integer  "usersetting_id",     :default => 1
    t.integer  "status",             :default => 1
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "epoker_usersettings_privacies", :force => true do |t|
    t.string   "profile_view"
    t.string   "follow_me"
    t.integer  "usersetting_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_usertags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.integer  "pic_x"
    t.integer  "pic_y"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_venue_booking_infos", :force => true do |t|
    t.integer  "venue_id"
    t.string   "Special_rate"
    t.string   "currency"
    t.string   "order_room"
    t.text     "kind_of_hotel"
    t.float    "stars"
    t.integer  "size"
    t.integer  "year_built"
    t.string   "hotel_group"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "built_date"
    t.string   "built_month"
  end

  add_index "epoker_venue_booking_infos", ["venue_id"], :name => "index_epoker_venue_booking_infos_on_venue_id"

  create_table "epoker_venue_events", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_venue_faqs", :force => true do |t|
    t.text     "faq_question_answer"
    t.integer  "venue_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "epoker_venue_hotel_infos", :force => true do |t|
    t.integer  "venue_id"
    t.text     "address"
    t.string   "flag"
    t.string   "phone"
    t.string   "fax"
    t.string   "skype"
    t.string   "email"
    t.text     "web_address"
    t.string   "pokerstop_contact"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "zip_code"
    t.integer  "phone_prefix"
    t.integer  "fax_prefix"
  end

  add_index "epoker_venue_hotel_infos", ["venue_id"], :name => "index_epoker_venue_hotel_infos_on_venue_id"

  create_table "epoker_venue_images", :force => true do |t|
    t.integer  "venue_id"
    t.string   "image_name"
    t.text     "image_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
  end

  create_table "epoker_venue_info_ph_numbers", :force => true do |t|
    t.integer  "phone_prefix"
    t.string   "phone"
    t.string   "venue_info_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "epoker_venue_more_infos", :force => true do |t|
    t.boolean  "casino",     :default => false
    t.boolean  "pokerRoom",  :default => false
    t.boolean  "hotel",      :default => false
    t.boolean  "other",      :default => false
    t.integer  "venue_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "epoker_venue_opeaning_hours", :force => true do |t|
    t.integer  "day"
    t.time     "o_h"
    t.time     "c_h"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_venue_previous_names", :force => true do |t|
    t.string   "name"
    t.integer  "from_date"
    t.integer  "from_month"
    t.integer  "from_year"
    t.integer  "to_date"
    t.integer  "to_month"
    t.integer  "to_year"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_venue_review_comments", :force => true do |t|
    t.string   "comment_general"
    t.string   "comment_rooms"
    t.string   "comment_internet"
    t.string   "comment_food_breakfast"
    t.string   "comment_cleanliness"
    t.string   "comment_cigarette_smoke"
    t.string   "comment_noise"
    t.string   "comment_value"
    t.string   "comment_comps"
    t.string   "comment_other"
    t.integer  "venue_review_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "epoker_venue_reviews", :force => true do |t|
    t.integer  "rate_general"
    t.integer  "rate_rooms"
    t.integer  "rate_internet"
    t.integer  "rate_food_breakfast"
    t.integer  "rate_cleanliness"
    t.integer  "rate_cigarette_smoke"
    t.integer  "rate_noise"
    t.integer  "rate_value"
    t.integer  "rate_comps"
    t.integer  "rate_other"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.date     "visited_at"
    t.integer  "v_date"
    t.string   "v_month"
    t.integer  "v_year"
  end

  create_table "epoker_venue_searches", :force => true do |t|
    t.string   "fname"
    t.integer  "visit_count"
    t.string   "ban_id"
    t.string   "address"
    t.string   "iso"
    t.string   "cname"
    t.string   "venue_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "previous_names"
    t.string   "town"
  end

  create_table "epoker_venue_suggestions", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "message"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_venues", :force => true do |t|
    t.string   "name"
    t.string   "venue_id",                :limit => 100
    t.string   "home_page_url"
    t.string   "address_info"
    t.string   "email"
    t.float    "latitude",                :limit => 10
    t.float    "longitude",               :limit => 10
    t.string   "country_ioc",             :limit => 32
    t.string   "phone"
    t.string   "fax"
    t.binary   "main_photo"
    t.string   "flag"
    t.string   "town"
    t.integer  "no_0f_tables"
    t.string   "games_and_stakes"
    t.datetime "opening_hrs"
    t.string   "tournament_hrs"
    t.string   "buy_ins"
    t.string   "currency"
    t.string   "twitter_feed"
    t.string   "facebook_url",            :limit => 100
    t.string   "twitter_url",             :limit => 100
    t.string   "googleplus_url",          :limit => 100
    t.string   "youtube_url",             :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.string   "banner_image"
    t.text     "public_note"
    t.text     "private_note"
    t.string   "state"
    t.integer  "user_id"
    t.integer  "status",                                 :default => 0, :null => false
    t.string   "pr_phone"
    t.string   "pr_email"
    t.string   "pr_twitter_feed"
    t.string   "pr_phone_prefix"
    t.integer  "visit_count",                            :default => 0
    t.string   "faq"
    t.integer  "credential_instagram_id",                :default => 0
    t.integer  "pokerroom_status",                       :default => 1
    t.string   "known_as"
    t.string   "instagram_url"
    t.integer  "bussiness_hours",                        :default => 1
  end

  create_table "epoker_venuetags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "venue_id"
    t.integer  "pokermodule_id"
    t.integer  "ref_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "epoker_video_links", :force => true do |t|
    t.string   "url"
    t.integer  "hands_played_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epoker_video_temps", :force => true do |t|
    t.string   "video_title"
    t.text     "video_desc"
    t.string   "video_url"
    t.integer  "status",      :default => 1, :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "epoker_videos", :force => true do |t|
    t.string   "video_title"
    t.text     "video_desc"
    t.string   "video_url"
    t.integer  "status",                       :default => 1, :null => false
    t.integer  "user_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "admin_status"
    t.integer  "visit_count",                  :default => 0, :null => false
    t.string   "added_by"
    t.integer  "added_by_status", :limit => 1, :default => 1
  end

  create_table "epoker_wall_banners", :force => true do |t|
    t.integer  "user_id"
    t.string   "banner_type"
    t.integer  "image_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_wallimages", :force => true do |t|
    t.integer  "wallpost_id"
    t.string   "imagename"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "epoker_wallimages", ["user_id"], :name => "index_epoker_wallimages_on_user_id"

  create_table "epoker_wallpost_comments", :force => true do |t|
    t.integer  "wallpost_id"
    t.text     "comment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "epoker_wallposts", :force => true do |t|
    t.string   "postcontent"
    t.integer  "posttypeid"
    t.integer  "user_id"
    t.integer  "posted_by"
    t.string   "post_status",    :limit => 1, :default => "1"
    t.string   "custom_user_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "epoker_wallposttypes", :force => true do |t|
    t.string   "private"
    t.string   "public"
    t.string   "friends"
    t.integer  "wallpostid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_wallvideos", :force => true do |t|
    t.integer  "wallpost_id"
    t.string   "videourl"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "epoker_web_sites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "epoker_websites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status",     :default => 1
  end

  create_table "epoker_winner_awards", :force => true do |t|
    t.integer  "user_id"
    t.integer  "award_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "excel_users_utf", :force => true do |t|
    t.string "Email",                        :limit => 256, :null => false
    t.string "Username",                     :limit => 256, :null => false
    t.string "Previous_Name",                :limit => 256, :null => false
    t.string "First_Name",                   :limit => 256, :null => false
    t.string "Middle_Name",                  :limit => 256, :null => false
    t.string "Last_Name",                    :limit => 256, :null => false
    t.string "Known_As",                     :limit => 256, :null => false
    t.string "Suffix",                       :limit => 256, :null => false
    t.string "Gender",                       :limit => 256, :null => false
    t.string "Birth_Day",                    :limit => 256, :null => false
    t.string "Birth_Month",                  :limit => 256, :null => false
    t.string "Birth_Year",                   :limit => 256, :null => false
    t.string "Birth_Place",                  :limit => 256, :null => false
    t.string "BP_Country",                   :limit => 256, :null => false
    t.string "Name_With_Special_Characters", :limit => 256, :null => false
    t.string "Live_Nick",                    :limit => 256, :null => false
    t.string "Online_Nick",                  :limit => 256, :null => false
    t.string "O_Nick_Where",                 :limit => 256, :null => false
    t.string "Online_Nick_2",                :limit => 256, :null => false
    t.string "ON2_Where",                    :limit => 256, :null => false
    t.string "Residen_Address",              :limit => 256, :null => false
    t.string "RA_2",                         :limit => 256, :null => false
    t.string "RA_City",                      :limit => 256, :null => false
    t.string "RA_Province",                  :limit => 256, :null => false
    t.string "RA_Country",                   :limit => 256, :null => false
    t.string "RA_Zip",                       :limit => 256, :null => false
    t.string "RA_Comment",                   :limit => 256, :null => false
    t.string "Home_Town",                    :limit => 256, :null => false
    t.string "HT_2",                         :limit => 256, :null => false
    t.string "HT_City",                      :limit => 256, :null => false
    t.string "HT_Province",                  :limit => 256, :null => false
    t.string "HT_Country",                   :limit => 256, :null => false
    t.string "HT_Zip",                       :limit => 256, :null => false
    t.string "HT_Comment",                   :limit => 256, :null => false
    t.string "Phone_Cell",                   :limit => 256, :null => false
    t.string "Phone_Home",                   :limit => 256, :null => false
    t.string "Phone_Work",                   :limit => 256, :null => false
    t.string "Fax",                          :limit => 256, :null => false
    t.string "Skype",                        :limit => 256, :null => false
    t.string "Alt_Email",                    :limit => 256, :null => false
    t.string "Twitter",                      :limit => 256, :null => false
    t.string "Twitter_Chip_Count",           :limit => 256, :null => false
    t.string "Twitter_Fake",                 :limit => 256, :null => false
    t.string "Facebook_Personal",            :limit => 256, :null => false
    t.string "Facebook_Fan",                 :limit => 256, :null => false
    t.string "Facebook_Fake",                :limit => 256, :null => false
    t.string "Googleplus",                   :limit => 256, :null => false
    t.string "YouTube",                      :limit => 256, :null => false
    t.string "MySpace",                      :limit => 256, :null => false
    t.string "LinkedIn",                     :limit => 256, :null => false
    t.string "Pinterest",                    :limit => 256, :null => false
    t.string "IMDB",                         :limit => 256, :null => false
    t.string "Wiki",                         :limit => 256, :null => false
    t.string "Website",                      :limit => 256, :null => false
  end

  create_table "to_dos", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.boolean  "status",     :default => true
    t.datetime "date"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  add_foreign_key "epoker_mailboxer_conversation_opt_outs", "epoker_mailboxer_conversations", name: "mb_opt_outs_on_conversations_id", column: "conversation_id"

  add_foreign_key "epoker_mailboxer_notifications", "epoker_mailboxer_conversations", name: "notifications_on_conversation_id", column: "conversation_id"

  add_foreign_key "epoker_mailboxer_receipts", "epoker_mailboxer_notifications", name: "receipts_on_notification_id", column: "notification_id"

end
