defmodule Yunpian do

  @send_msg_url "https://sms.yunpian.com/v2/sms/single_send.json"
  def single_send(params) do
    send_request(@send_msg_url, params)
  end

  defp send_request(url, params) do
    params = case params[:apikey] do
      nil ->
        apikey = Application.get_env(:yunpian, :apikey)
        Map.put(params, :apikey, apikey)
        _ -> params
    end

    body = "apikey=#{params[:apikey]}&mobile=#{params[:mobile]}&text=#{params[:text]}"

    res = HTTPotion.post url,
      body: body,
      headers: [
        "Accept": "application/json;charset=utf-8",
        "Content-Type": "application/x-www-form-urlencoded;charset=utf-8"
      ]

    Poison.decode!(res.body)
  end
end