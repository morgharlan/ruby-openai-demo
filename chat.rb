# Write your solution here!
require "openai"
require "dotenv/load"

client = OpenAI::Client.new(api_key: ENV.fetch("OPENAI_API_KEY"))

message_list = [
  {
    "role" => "system",
    "content" => "You are a helpful assistant who talks like Shakespeare."
  },
  {
    "role" => "user",
    "content" => "Hello! What are the best spots for pizza in Chicago?"
  }
]

# Call the API to get the next message from GPT
client.completions(
  parameters: {
    model: "gpt-3.5-turbo",
    prompt: "You are a helpful assistant who talks like Shakespeare.\n\nUser: Hello! What are the best spots for pizza in Chicago?",
    max_tokens: 150
  }
)

pp api_response
