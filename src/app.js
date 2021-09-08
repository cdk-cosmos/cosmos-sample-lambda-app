exports.handler = async (event) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify("CDK-Cosmos lambda has been successfully deployed!"),
  };

  return response;
};